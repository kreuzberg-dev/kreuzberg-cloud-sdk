"""High-level dual-target client for the Xberg Enterprise and Xberg Pro HTTP APIs.

One :class:`XbergClient` (and its async twin :class:`AsyncXbergClient`) speaks to
either product. The shared surface — extraction, jobs (including job results),
audit, managed presets, and the RAG API — is written once and carries no tier
gate. Tier-specific methods are capability-gated: they probe the
connected instance (``GET /healthz``'s ``tier``, or an explicit ``target``) and
raise a clear error instead of a raw 404 when invoked against the wrong tier.

Both products authenticate identically: ``Authorization: Bearer {api_key}`` —
Enterprise uses a ``kz_`` project key, Pro accepts a ``kz_`` key or an OIDC
session JWT. Enterprise defaults ``base_url`` to ``https://api.xberg.io``; Pro
has no default (its spec ships no servers block) and requires an explicit one.
"""

from __future__ import annotations

import asyncio
import json
import mimetypes
import time
from collections.abc import Mapping
from pathlib import Path
from typing import TYPE_CHECKING, Any, BinaryIO, Literal, Protocol

import httpx

from xberg_io_sdk._generated_api.models.extraction_options import ExtractionOptions
from xberg_io_sdk._generated_api.models.job_response import JobResponse
from xberg_io_sdk._generated_api.models.job_result import JobResult
from xberg_io_sdk._generated_api.models.preset_detail import PresetDetail
from xberg_io_sdk._generated_api.models.preset_summary import PresetSummary
from xberg_io_sdk._generated_pro.models.begin_o_auth_response import BeginOAuthResponse
from xberg_io_sdk._generated_pro.models.create_api_key_response import CreateApiKeyResponse
from xberg_io_sdk._generated_pro.models.integration_response import IntegrationResponse
from xberg_io_sdk._generated_pro.models.list_api_keys_response import ListApiKeysResponse
from xberg_io_sdk._generated_pro.models.list_documents_response import ListDocumentsResponse
from xberg_io_sdk._generated_pro.models.list_integrations_response import ListIntegrationsResponse
from xberg_io_sdk._generated_pro.models.list_projects_response import ListProjectsResponse
from xberg_io_sdk._generated_pro.models.project_response import ProjectResponse
from xberg_io_sdk.errors import TimeoutError as ClientTimeoutError
from xberg_io_sdk.errors import XbergError, parse_retry_after, raise_for_status

if TYPE_CHECKING:
    import sys
    from collections.abc import Iterable
    from types import TracebackType

    from xberg_io_sdk._generated_pro.models.create_api_key_request import CreateApiKeyRequest
    from xberg_io_sdk._generated_pro.models.create_integration_request import CreateIntegrationRequest
    from xberg_io_sdk._generated_pro.models.create_project_request import CreateProjectRequest

    if sys.version_info >= (3, 11):
        from typing import Self
    else:
        from typing_extensions import Self

DEFAULT_ENTERPRISE_BASE_URL = "https://api.xberg.io"
DEFAULT_TIMEOUT_SECONDS = 30.0

_TERMINAL_STATUSES: frozenset[str] = frozenset({"completed", "failed", "cancelled", "partial_success"})
_FAILED_STATUSES: frozenset[str] = frozenset({"failed", "cancelled"})

_DEFAULT_POLL_INTERVAL = 1.0
_DEFAULT_WAIT_TIMEOUT = 300.0
_MAX_BACKOFF_INTERVAL = 30.0
_BACKOFF_FACTOR = 2.0

_DEFAULT_RETRIES = 0
_DEFAULT_RETRY_STATUSES: frozenset[int] = frozenset({429, 502, 503, 504})
_RETRY_BACKOFF_BASE = 0.2

FileInput = Path | bytes | BinaryIO
"""Accepted shapes for a single file argument: filesystem path, raw bytes, or an open binary stream."""

OptionsInput = ExtractionOptions | dict[str, Any] | None
"""Accepted shapes for the ``options`` argument: typed model, plain dict, or ``None``."""

BackoffStrategy = Literal["constant", "exponential"]
Target = Literal["enterprise", "pro"]


class _SupportsToDict(Protocol):
    """Structural type for the generated request models, which all serialize via ``to_dict()``."""

    def to_dict(self) -> dict[str, Any]:
        """Return the JSON-ready wire representation of this model."""
        ...


BodyInput = _SupportsToDict | Mapping[str, Any]
"""Accepted shapes for a typed JSON request body: a generated request model or a plain mapping."""


def _user_agent() -> str:
    """Return the ``User-Agent`` header, sourcing the version from the package root."""
    from xberg_io_sdk import __version__  # noqa: PLC0415 — local import breaks the __init__/client cycle  # ~keep

    return f"xberg-io-sdk-python/{__version__}"


def _coerce_options(options: OptionsInput) -> dict[str, Any] | None:
    """Normalize an :class:`ExtractionOptions`/dict/``None`` into a plain dict (or ``None``)."""
    if options is None:
        return None
    if isinstance(options, ExtractionOptions):
        return options.to_dict()
    return dict(options)


def _guess_mime_type(filename: str) -> str:
    if filename.lower().endswith(".md"):
        return "text/markdown"
    return mimetypes.guess_type(filename)[0] or "application/octet-stream"


def _prepare_file_part(file: FileInput) -> tuple[str, bytes | BinaryIO, str]:
    """Convert a ``FileInput`` into the ``(filename, payload, content-type)`` tuple httpx wants."""
    if isinstance(file, Path):
        return (file.name, file.read_bytes(), _guess_mime_type(file.name))
    if isinstance(file, (bytes, bytearray)):
        return ("upload.bin", bytes(file), "application/octet-stream")
    name = getattr(file, "name", None)
    filename = Path(str(name)).name if isinstance(name, str) and name else "upload.bin"
    return (filename, file, _guess_mime_type(filename))


def _multipart_files(files: Iterable[FileInput]) -> list[tuple[str, tuple[str, bytes | BinaryIO, str]]]:
    """Build the ``files=`` argument for a single multipart request carrying every document."""
    return [("file", _prepare_file_part(file)) for file in files]


def _multipart_data(options: OptionsInput, webhook: Mapping[str, Any] | None) -> dict[str, str]:
    """Build the ``data=`` argument carrying serialized options and webhook config as JSON parts."""
    data = {"webhook": json.dumps(dict(webhook) if webhook is not None else {"url": ""})}
    coerced = _coerce_options(options)
    if coerced is not None:
        data["options"] = json.dumps(coerced)
    return data


def _job_ids_from_extract_response(payload: Any) -> list[str]:
    """Pluck the ``job_ids`` list out of a ``POST /v1/extract`` response body."""
    if not isinstance(payload, dict):
        raise ValueError(f"unexpected extract response shape: {payload!r}")
    job_ids = payload.get("job_ids")
    if not isinstance(job_ids, list) or not job_ids:
        raise ValueError(f"extract response missing job_ids: {payload!r}")
    return [str(job_id) for job_id in job_ids]


def _coerce_body(body: BodyInput) -> dict[str, Any]:
    """Normalize a generated request model or plain mapping into a JSON-ready dict."""
    if isinstance(body, Mapping):
        return dict(body)
    return body.to_dict()


def _expect_object(payload: Any, what: str) -> Mapping[str, Any]:
    """Assert a decoded response body is a JSON object before handing it to a model parser."""
    if not isinstance(payload, Mapping):
        raise ValueError(f"unexpected {what} response shape: {payload!r}")
    return payload


def _parse_job(payload: Any) -> JobResponse:
    """Parse a ``GET /v1/jobs/{id}`` response body into a typed :class:`JobResponse`."""
    if not isinstance(payload, dict):
        raise ValueError(f"unexpected job response shape: {payload!r}")
    return JobResponse.from_dict(payload)


def _parse_job_result(payload: Any) -> JobResult:
    """Parse a ``GET /v1/jobs/{id}/result`` response body into a typed :class:`JobResult`."""
    return JobResult.from_dict(_expect_object(payload, "job result"))


def _parse_presets(payload: Any) -> list[PresetSummary]:
    """Parse a ``GET /v1/presets`` response body into a list of :class:`PresetSummary`."""
    if not isinstance(payload, list):
        raise ValueError(f"unexpected preset list response shape: {payload!r}")
    return [PresetSummary.from_dict(_expect_object(item, "preset summary")) for item in payload]


def _query_params(**candidates: Any) -> dict[str, Any] | None:
    """Drop the ``None`` entries from a query-parameter mapping, returning ``None`` when nothing is left."""
    params = {key: value for key, value in candidates.items() if value is not None}
    return params or None


def _pagination(limit: int | None, offset: int | None) -> dict[str, Any] | None:
    """Build the shared ``limit``/``offset`` query parameters for the paginated list endpoints."""
    return _query_params(limit=limit, offset=offset)


def _job_failure_detail(job: JobResponse) -> str | None:
    """Best-effort extraction of a human-readable error detail from a terminal-failed job."""
    data = job.to_dict()
    if isinstance(data, dict):
        for key in ("error", "detail", "message"):
            value = data.get(key)
            if isinstance(value, str) and value:
                return value
    return None


def _raise_if_failed(job: JobResponse) -> None:
    """Raise :class:`XbergError` when ``job`` reached a ``failed``/``cancelled`` terminal state."""
    if job.status in _FAILED_STATUSES:
        detail = _job_failure_detail(job)
        suffix = f": {detail}" if detail else ""
        raise XbergError(
            f"job {job.id} ended with status '{job.status}'{suffix}",
            status_code=None,
            payload=job.to_dict(),
        )


def _next_interval(current: float, backoff: BackoffStrategy) -> float:
    """Advance the polling/backoff interval according to the configured strategy."""
    if backoff == "constant":
        return current
    return min(current * _BACKOFF_FACTOR, _MAX_BACKOFF_INTERVAL)


def _resolve_base_url(base_url: str | None, target: Target | None) -> str:
    """Resolve the effective base URL, enforcing that Pro requires an explicit one."""
    if base_url is not None:
        return base_url.rstrip("/")
    if target == "pro":
        raise XbergError(
            "Xberg Pro has no default base_url (its spec ships no servers block); "
            "pass base_url=... pointing at your Pro instance.",
            status_code=None,
        )
    return DEFAULT_ENTERPRISE_BASE_URL


class _BaseClient:
    """Shared configuration and tier-gating state for the sync and async clients."""

    def __init__(
        self,
        *,
        api_key: str | None = None,
        base_url: str | None = None,
        target: Target | None = None,
        timeout: float = DEFAULT_TIMEOUT_SECONDS,
        headers: Mapping[str, str] | None = None,
        retries: int = _DEFAULT_RETRIES,
        retry_on: Iterable[int] | None = None,
        retry_backoff: BackoffStrategy = "exponential",
    ) -> None:
        self._api_key = api_key
        self._target: Target | None = target
        self._base_url = _resolve_base_url(base_url, target)
        self._timeout = timeout
        self._retries = retries
        self._retry_on: frozenset[int] = frozenset(retry_on) if retry_on is not None else _DEFAULT_RETRY_STATUSES
        self._retry_backoff: BackoffStrategy = retry_backoff
        self._probed_tier: str | None = None
        self._headers: dict[str, str] = {"User-Agent": _user_agent()}
        if headers:
            self._headers.update(headers)
        if api_key is not None:
            self._headers["Authorization"] = f"Bearer {api_key}"

    def _require_tier_or_raise(self, tier: str, required: Target, method_name: str) -> None:
        if tier != required:
            actual = tier or "unknown"
            raise XbergError(
                f"{method_name}() is not available on the '{actual}' tier (requires the '{required}' tier)",
                status_code=None,
            )


class XbergClient(_BaseClient):
    """Synchronous client for Xberg Enterprise and Xberg Pro.

    >>> with XbergClient(api_key="kz_...") as client:  # doctest: +SKIP
    ...     job = client.extract(file=Path("invoice.pdf"))
    ...     result = client.wait_for_job(str(job.id))
    """

    def __init__(
        self,
        *,
        api_key: str | None = None,
        base_url: str | None = None,
        target: Target | None = None,
        timeout: float = DEFAULT_TIMEOUT_SECONDS,
        headers: Mapping[str, str] | None = None,
        retries: int = _DEFAULT_RETRIES,
        retry_on: Iterable[int] | None = None,
        retry_backoff: BackoffStrategy = "exponential",
    ) -> None:
        super().__init__(
            api_key=api_key,
            base_url=base_url,
            target=target,
            timeout=timeout,
            headers=headers,
            retries=retries,
            retry_on=retry_on,
            retry_backoff=retry_backoff,
        )
        self._http = httpx.Client(base_url=self._base_url, timeout=self._timeout, headers=self._headers)

    def __enter__(self) -> Self:
        """Enter the context manager."""
        return self

    def __exit__(
        self,
        exc_type: type[BaseException] | None,
        exc_val: BaseException | None,
        exc_tb: TracebackType | None,
    ) -> None:
        """Exit the context manager and close the underlying HTTP transport."""
        self.close()

    def close(self) -> None:
        """Close the underlying HTTP transport, releasing connections."""
        self._http.close()

    def _request(
        self,
        method: str,
        path: str,
        *,
        files: Any | None = None,
        data: Any | None = None,
        json_body: Any | None = None,
        params: Mapping[str, Any] | None = None,
    ) -> httpx.Response:
        """Issue one HTTP request with the configured retry engine, returning the raw response."""
        attempt = 0
        interval = _RETRY_BACKOFF_BASE
        while True:
            try:
                response = self._http.request(method, path, files=files, data=data, json=json_body, params=params)
            except httpx.TransportError as exc:
                if attempt < self._retries:
                    attempt += 1
                    time.sleep(interval)
                    interval = _next_interval(interval, self._retry_backoff)
                    continue
                raise XbergError(f"network error contacting {path}", status_code=None) from exc
            if response.is_success:
                return response
            if response.status_code in self._retry_on and attempt < self._retries:
                attempt += 1
                retry_after = parse_retry_after(response.headers.get("Retry-After"))
                time.sleep(retry_after if retry_after is not None else interval)
                interval = _next_interval(interval, self._retry_backoff)
                continue
            return response

    def _request_json(
        self,
        method: str,
        path: str,
        *,
        files: Any | None = None,
        data: Any | None = None,
        json_body: Any | None = None,
        params: Mapping[str, Any] | None = None,
    ) -> Any:
        """Issue a request, raise on non-2xx, and decode the JSON body (``None`` for empty bodies)."""
        response = self._request(method, path, files=files, data=data, json_body=json_body, params=params)
        raise_for_status(response)
        if response.status_code == 204 or not response.content:
            return None
        return response.json()

    def _request_bytes(self, method: str, path: str, *, params: Mapping[str, Any] | None = None) -> bytes:
        """Issue a request, raise on non-2xx, and return the raw (non-JSON) response body."""
        response = self._request(method, path, params=params)
        raise_for_status(response)
        return response.content

    def _resolve_tier(self) -> str:
        """Return the effective tier — an explicit ``target`` if set, else probed from ``/healthz``."""
        if self._target is not None:
            return self._target
        if self._probed_tier is None:
            body = self._request_json("GET", "/healthz")
            self._probed_tier = str(body.get("tier", "")) if isinstance(body, dict) else ""
        return self._probed_tier

    def _require_tier(self, required: Target, method_name: str) -> None:
        self._require_tier_or_raise(self._resolve_tier(), required, method_name)

    # -- Shared surface (Enterprise + Pro) ---------------------------------

    def extract(
        self,
        *,
        file: FileInput,
        options: OptionsInput = None,
        webhook: Mapping[str, Any] | None = None,
    ) -> JobResponse:
        """Submit a single document for extraction via ``POST /v1/extract`` (multipart)."""
        return self.extract_batch([file], options=options, webhook=webhook)[0]

    def extract_batch(
        self,
        files: Iterable[FileInput],
        options: OptionsInput = None,
        webhook: Mapping[str, Any] | None = None,
    ) -> list[JobResponse]:
        """Submit multiple documents in a SINGLE multipart request carrying every file."""
        materialized = list(files)
        if not materialized:
            raise XbergError("extract_batch called with no files", status_code=None)
        payload = self._request_json(
            "POST",
            "/v1/extract",
            files=_multipart_files(materialized),
            data=_multipart_data(options, webhook),
        )
        job_ids = _job_ids_from_extract_response(payload)
        return [self.get_job(job_id) for job_id in job_ids]

    def get_job(self, job_id: str) -> JobResponse:
        """Fetch a job's current status and (when terminal) its extraction result."""
        return _parse_job(self._request_json("GET", f"/v1/jobs/{job_id}"))

    def get_job_result(self, job_id: str) -> JobResult:
        """Fetch a job's stored result envelope (``GET /v1/jobs/{id}/result``).

        Served identically by both tiers. Answers 409 until the job reaches a terminal
        successful status (``completed`` or ``partial_success``), and 404 once the stored
        result has passed its retention window.
        """
        return _parse_job_result(self._request_json("GET", f"/v1/jobs/{job_id}/result"))

    def list_jobs(self, *, limit: int | None = None, offset: int | None = None) -> Any:
        """List jobs via ``GET /v1/jobs`` (paginated). Returns the decoded response body."""
        params = {k: v for k, v in (("limit", limit), ("offset", offset)) if v is not None}
        return self._request_json("GET", "/v1/jobs", params=params or None)

    def wait_for_job(
        self,
        job_id: str,
        *,
        timeout: float = _DEFAULT_WAIT_TIMEOUT,
        poll_interval: float = _DEFAULT_POLL_INTERVAL,
        backoff: BackoffStrategy = "exponential",
    ) -> JobResponse:
        """Poll ``GET /v1/jobs/{id}`` until the job reaches a terminal status or ``timeout`` elapses.

        Raises :class:`xberg_io_sdk.errors.TimeoutError` if the deadline is hit first, and
        :class:`xberg_io_sdk.errors.XbergError` if the job ends ``failed``/``cancelled``.
        """
        deadline = time.monotonic() + timeout
        interval = poll_interval
        while True:
            job = self.get_job(job_id)
            if job.status in _TERMINAL_STATUSES:
                _raise_if_failed(job)
                return job
            now = time.monotonic()
            if now >= deadline:
                raise ClientTimeoutError(
                    f"job {job_id} did not reach a terminal status within {timeout}s",
                    status_code=None,
                )
            time.sleep(min(interval, deadline - now))
            interval = _next_interval(interval, backoff)

    def wait_for_jobs(
        self,
        job_ids: Iterable[str],
        *,
        timeout: float = _DEFAULT_WAIT_TIMEOUT,
        poll_interval: float = _DEFAULT_POLL_INTERVAL,
        backoff: BackoffStrategy = "exponential",
    ) -> list[JobResponse]:
        """Wait for multiple jobs sequentially (sync)."""
        return [
            self.wait_for_job(job_id, timeout=timeout, poll_interval=poll_interval, backoff=backoff)
            for job_id in job_ids
        ]

    def extract_and_wait(
        self,
        *,
        file: FileInput,
        options: OptionsInput = None,
        webhook: Mapping[str, Any] | None = None,
        timeout: float = _DEFAULT_WAIT_TIMEOUT,
        poll_interval: float = _DEFAULT_POLL_INTERVAL,
        backoff: BackoffStrategy = "exponential",
    ) -> JobResponse:
        """Submit a document and block until extraction completes (raises on failure/timeout)."""
        job = self.extract(file=file, options=options, webhook=webhook)
        return self.wait_for_job(str(job.id), timeout=timeout, poll_interval=poll_interval, backoff=backoff)

    def audit(self, *, action: str | None = None, limit: int | None = None, offset: int | None = None) -> Any:
        """Fetch audit-log entries via ``GET /v1/audit``. Returns the decoded response body."""
        params = {k: v for k, v in (("action", action), ("limit", limit), ("offset", offset)) if v is not None}
        return self._request_json("GET", "/v1/audit", params=params or None)

    def list_rag_collections(self) -> Any:
        """List RAG collections (``GET /v1/rag/collections``)."""
        return self._request_json("GET", "/v1/rag/collections")

    def create_rag_collection(self, body: Mapping[str, Any]) -> Any:
        """Create a RAG collection (``POST /v1/rag/collections``)."""
        return self._request_json("POST", "/v1/rag/collections", json_body=body)

    def get_rag_collection(self, name: str) -> Any:
        """Fetch a RAG collection (``GET /v1/rag/collections/{name}``)."""
        return self._request_json("GET", f"/v1/rag/collections/{name}")

    def delete_rag_collection(self, name: str) -> Any:
        """Delete a RAG collection (``DELETE /v1/rag/collections/{name}``)."""
        return self._request_json("DELETE", f"/v1/rag/collections/{name}")

    def add_rag_documents(self, name: str, body: Mapping[str, Any]) -> Any:
        """Add documents to a RAG collection (``POST /v1/rag/collections/{name}/documents``)."""
        return self._request_json("POST", f"/v1/rag/collections/{name}/documents", json_body=body)

    def reindex_rag_document(self, name: str, document_id: str, body: Mapping[str, Any] | None = None) -> Any:
        """Reindex a RAG document (``POST /v1/rag/collections/{name}/documents/{id}/reindex``)."""
        return self._request_json("POST", f"/v1/rag/collections/{name}/documents/{document_id}/reindex", json_body=body)

    def rag_retrieve(self, name: str, body: Mapping[str, Any]) -> Any:
        """Retrieve chunks from a RAG collection (``POST /v1/rag/collections/{name}/retrieve``)."""
        return self._request_json("POST", f"/v1/rag/collections/{name}/retrieve", json_body=body)

    def migrate_rag_embeddings(self, name: str, body: Mapping[str, Any]) -> Any:
        """Kick off an embedding migration (``POST /v1/rag/collections/{name}/migrate-embeddings``)."""
        return self._request_json("POST", f"/v1/rag/collections/{name}/migrate-embeddings", json_body=body)

    def get_rag_migration_job(self, name: str, job_id: str) -> Any:
        """Poll an embedding-migration job (``GET .../migrate-embeddings/{job_id}``)."""
        return self._request_json("GET", f"/v1/rag/collections/{name}/migrate-embeddings/{job_id}")

    def get_rag_job(self, job_id: str) -> Any:
        """Fetch a RAG job's status (``GET /v1/rag/jobs/{job_id}``)."""
        return self._request_json("GET", f"/v1/rag/jobs/{job_id}")

    def presets(self) -> list[PresetSummary]:
        """List the curated, read-only managed presets (``GET /v1/presets``)."""
        return _parse_presets(self._request_json("GET", "/v1/presets"))

    def get_preset(self, preset_id: str) -> PresetDetail:
        """Fetch one managed preset in full (``GET /v1/presets/{id}``)."""
        return PresetDetail.from_dict(_expect_object(self._request_json("GET", f"/v1/presets/{preset_id}"), "preset"))

    def get_preset_sample(self, preset_id: str, name: str) -> bytes:
        """Fetch a preset's bundled sample document (``GET /v1/presets/{id}/sample/{name}``, raw bytes)."""
        return self._request_bytes("GET", f"/v1/presets/{preset_id}/sample/{name}")

    # -- Pro-only surface --------------------------------------------------

    def auth_config(self) -> Any:
        """Pro only: fetch the instance's accepted auth methods (unauthenticated ``GET /auth/config``)."""
        self._require_tier("pro", "auth_config")
        return self._request_json("GET", "/auth/config")

    def login(self, body: Mapping[str, Any]) -> Any:
        """Pro only: exchange a verified OIDC ID token for a Pro session JWT (``POST /auth/login``)."""
        self._require_tier("pro", "login")
        return self._request_json("POST", "/auth/login", json_body=body)

    def list_saved_presets(self) -> Any:
        """Pro only: list saved presets (``GET /v1/saved-presets``)."""
        self._require_tier("pro", "list_saved_presets")
        return self._request_json("GET", "/v1/saved-presets")

    def create_saved_preset(self, body: Mapping[str, Any]) -> Any:
        """Pro only: create a saved preset (``POST /v1/saved-presets``)."""
        self._require_tier("pro", "create_saved_preset")
        return self._request_json("POST", "/v1/saved-presets", json_body=body)

    def delete_saved_preset(self, preset_id: str) -> Any:
        """Pro only: delete a saved preset (``DELETE /v1/saved-presets/{id}``)."""
        self._require_tier("pro", "delete_saved_preset")
        return self._request_json("DELETE", f"/v1/saved-presets/{preset_id}")

    def get_rag_config(self, project_id: str) -> Any:
        """Pro only: fetch a project's RAG config (``GET /v1/projects/{project_id}/rag-config``)."""
        self._require_tier("pro", "get_rag_config")
        return self._request_json("GET", f"/v1/projects/{project_id}/rag-config")

    def set_rag_config(self, project_id: str, body: Mapping[str, Any]) -> Any:
        """Pro only: update a project's RAG config (``PUT /v1/projects/{project_id}/rag-config``)."""
        self._require_tier("pro", "set_rag_config")
        return self._request_json("PUT", f"/v1/projects/{project_id}/rag-config", json_body=body)

    # -- Pro-only control plane (projects, API keys, integrations) ---------

    def list_projects(self, *, limit: int | None = None, offset: int | None = None) -> ListProjectsResponse:
        """Pro only: list the caller's projects (``GET /v1/projects``, paginated)."""
        self._require_tier("pro", "list_projects")
        payload = self._request_json("GET", "/v1/projects", params=_pagination(limit, offset))
        return ListProjectsResponse.from_dict(_expect_object(payload, "project list"))

    def create_project(self, body: CreateProjectRequest | Mapping[str, Any]) -> ProjectResponse:
        """Pro only: create a project (``POST /v1/projects``)."""
        self._require_tier("pro", "create_project")
        payload = self._request_json("POST", "/v1/projects", json_body=_coerce_body(body))
        return ProjectResponse.from_dict(_expect_object(payload, "project"))

    def list_api_keys(
        self,
        project_id: str,
        *,
        limit: int | None = None,
        offset: int | None = None,
    ) -> ListApiKeysResponse:
        """Pro only: list a project's API keys (``GET /v1/projects/{project_id}/api-keys``)."""
        self._require_tier("pro", "list_api_keys")
        payload = self._request_json("GET", f"/v1/projects/{project_id}/api-keys", params=_pagination(limit, offset))
        return ListApiKeysResponse.from_dict(_expect_object(payload, "API key list"))

    def create_api_key(
        self,
        project_id: str,
        body: CreateApiKeyRequest | Mapping[str, Any],
    ) -> CreateApiKeyResponse:
        """Pro only: mint a project API key (``POST /v1/projects/{project_id}/api-keys``).

        The plaintext ``key`` is returned exactly once, in this response.
        """
        self._require_tier("pro", "create_api_key")
        payload = self._request_json("POST", f"/v1/projects/{project_id}/api-keys", json_body=_coerce_body(body))
        return CreateApiKeyResponse.from_dict(_expect_object(payload, "API key"))

    def revoke_api_key(self, project_id: str, key_id: str) -> None:
        """Pro only: revoke an API key (``DELETE /v1/projects/{project_id}/api-keys/{key_id}``)."""
        self._require_tier("pro", "revoke_api_key")
        self._request_json("DELETE", f"/v1/projects/{project_id}/api-keys/{key_id}")

    def list_integrations(
        self,
        project_id: str,
        *,
        limit: int | None = None,
        offset: int | None = None,
    ) -> ListIntegrationsResponse:
        """Pro only: list a project's integrations (``GET /v1/projects/{project_id}/integrations``)."""
        self._require_tier("pro", "list_integrations")
        payload = self._request_json(
            "GET", f"/v1/projects/{project_id}/integrations", params=_pagination(limit, offset)
        )
        return ListIntegrationsResponse.from_dict(_expect_object(payload, "integration list"))

    def create_integration(
        self,
        project_id: str,
        body: CreateIntegrationRequest | Mapping[str, Any],
    ) -> IntegrationResponse:
        """Pro only: create an integration (``POST /v1/projects/{project_id}/integrations``)."""
        self._require_tier("pro", "create_integration")
        payload = self._request_json("POST", f"/v1/projects/{project_id}/integrations", json_body=_coerce_body(body))
        return IntegrationResponse.from_dict(_expect_object(payload, "integration"))

    def get_integration(self, project_id: str, integration_id: str) -> IntegrationResponse:
        """Pro only: fetch one integration (``GET .../integrations/{integration_id}``)."""
        self._require_tier("pro", "get_integration")
        payload = self._request_json("GET", f"/v1/projects/{project_id}/integrations/{integration_id}")
        return IntegrationResponse.from_dict(_expect_object(payload, "integration"))

    def delete_integration(self, project_id: str, integration_id: str) -> None:
        """Pro only: delete an integration (``DELETE .../integrations/{integration_id}``)."""
        self._require_tier("pro", "delete_integration")
        self._request_json("DELETE", f"/v1/projects/{project_id}/integrations/{integration_id}")

    def connect_integration(self, project_id: str, integration_id: str) -> BeginOAuthResponse:
        """Pro only: begin the OAuth connect flow (``POST .../integrations/{integration_id}/connect``).

        Returns the provider ``authorize_url`` the end user must visit.
        """
        self._require_tier("pro", "connect_integration")
        payload = self._request_json("POST", f"/v1/projects/{project_id}/integrations/{integration_id}/connect")
        return BeginOAuthResponse.from_dict(_expect_object(payload, "OAuth connect"))

    def disconnect_integration(self, project_id: str, integration_id: str) -> None:
        """Pro only: drop an integration's stored credentials (``POST .../disconnect``)."""
        self._require_tier("pro", "disconnect_integration")
        self._request_json("POST", f"/v1/projects/{project_id}/integrations/{integration_id}/disconnect")

    def list_integration_documents(
        self,
        project_id: str,
        integration_id: str,
        *,
        mime_types: str | None = None,
        folder_id: str | None = None,
        max_results: int | None = None,
    ) -> ListDocumentsResponse:
        """Pro only: list documents visible through an integration (``GET .../documents``)."""
        self._require_tier("pro", "list_integration_documents")
        params = _query_params(mime_types=mime_types, folder_id=folder_id, max_results=max_results)
        payload = self._request_json(
            "GET", f"/v1/projects/{project_id}/integrations/{integration_id}/documents", params=params
        )
        return ListDocumentsResponse.from_dict(_expect_object(payload, "integration document list"))

    def fetch_integration_document(self, project_id: str, integration_id: str, document_id: str) -> bytes:
        """Pro only: download one document through an integration (``GET .../documents/{document_id}``)."""
        self._require_tier("pro", "fetch_integration_document")
        return self._request_bytes(
            "GET", f"/v1/projects/{project_id}/integrations/{integration_id}/documents/{document_id}"
        )

    # -- Enterprise-only surface ------------------------------------------

    def versions(self, document_id: str) -> Any:
        """Enterprise only: list a document's versions (``GET /v1/documents/{id}/versions``)."""
        self._require_tier("enterprise", "versions")
        return self._request_json("GET", f"/v1/documents/{document_id}/versions")

    def diff(self, document_id: str, *, params: Mapping[str, Any] | None = None) -> Any:
        """Enterprise only: diff document versions (``GET /v1/documents/{id}/diff``)."""
        self._require_tier("enterprise", "diff")
        return self._request_json("GET", f"/v1/documents/{document_id}/diff", params=params)

    def get_diff_job(self, document_id: str, diff_job_id: str) -> Any:
        """Enterprise only: poll a diff job (``GET /v1/documents/{id}/diff/{diff_job_id}``)."""
        self._require_tier("enterprise", "get_diff_job")
        return self._request_json("GET", f"/v1/documents/{document_id}/diff/{diff_job_id}")

    def presign_upload(self, body: Mapping[str, Any]) -> Any:
        """Enterprise only: request a presigned upload URL (``POST /v1/uploads/presign``)."""
        self._require_tier("enterprise", "presign_upload")
        return self._request_json("POST", "/v1/uploads/presign", json_body=body)

    def confirm_upload(self, body: Mapping[str, Any]) -> Any:
        """Enterprise only: confirm a presigned upload (``POST /v1/uploads/confirm``)."""
        self._require_tier("enterprise", "confirm_upload")
        return self._request_json("POST", "/v1/uploads/confirm", json_body=body)

    def usage(self, *, params: Mapping[str, Any] | None = None) -> Any:
        """Enterprise only: fetch usage/metering data (``GET /v1/usage``)."""
        self._require_tier("enterprise", "usage")
        return self._request_json("GET", "/v1/usage", params=params)


class AsyncXbergClient(_BaseClient):
    """Asynchronous client for Xberg Enterprise and Xberg Pro.

    Mirrors :class:`XbergClient` method-for-method; everything is awaitable.

    >>> async with AsyncXbergClient(api_key="kz_...") as client:  # doctest: +SKIP
    ...     result = await client.extract_and_wait(file=Path("invoice.pdf"))
    """

    def __init__(
        self,
        *,
        api_key: str | None = None,
        base_url: str | None = None,
        target: Target | None = None,
        timeout: float = DEFAULT_TIMEOUT_SECONDS,
        headers: Mapping[str, str] | None = None,
        retries: int = _DEFAULT_RETRIES,
        retry_on: Iterable[int] | None = None,
        retry_backoff: BackoffStrategy = "exponential",
    ) -> None:
        super().__init__(
            api_key=api_key,
            base_url=base_url,
            target=target,
            timeout=timeout,
            headers=headers,
            retries=retries,
            retry_on=retry_on,
            retry_backoff=retry_backoff,
        )
        self._http = httpx.AsyncClient(base_url=self._base_url, timeout=self._timeout, headers=self._headers)

    async def __aenter__(self) -> Self:
        """Enter the async context manager."""
        return self

    async def __aexit__(
        self,
        exc_type: type[BaseException] | None,
        exc_val: BaseException | None,
        exc_tb: TracebackType | None,
    ) -> None:
        """Exit the async context manager and close the underlying HTTP transport."""
        await self.aclose()

    async def aclose(self) -> None:
        """Close the underlying async HTTP transport, releasing connections."""
        await self._http.aclose()

    async def _request(
        self,
        method: str,
        path: str,
        *,
        files: Any | None = None,
        data: Any | None = None,
        json_body: Any | None = None,
        params: Mapping[str, Any] | None = None,
    ) -> httpx.Response:
        """Issue one HTTP request with the configured retry engine, returning the raw response."""
        attempt = 0
        interval = _RETRY_BACKOFF_BASE
        while True:
            try:
                response = await self._http.request(method, path, files=files, data=data, json=json_body, params=params)
            except httpx.TransportError as exc:
                if attempt < self._retries:
                    attempt += 1
                    await asyncio.sleep(interval)
                    interval = _next_interval(interval, self._retry_backoff)
                    continue
                raise XbergError(f"network error contacting {path}", status_code=None) from exc
            if response.is_success:
                return response
            if response.status_code in self._retry_on and attempt < self._retries:
                attempt += 1
                retry_after = parse_retry_after(response.headers.get("Retry-After"))
                await asyncio.sleep(retry_after if retry_after is not None else interval)
                interval = _next_interval(interval, self._retry_backoff)
                continue
            return response

    async def _request_json(
        self,
        method: str,
        path: str,
        *,
        files: Any | None = None,
        data: Any | None = None,
        json_body: Any | None = None,
        params: Mapping[str, Any] | None = None,
    ) -> Any:
        """Issue a request, raise on non-2xx, and decode the JSON body (``None`` for empty bodies)."""
        response = await self._request(method, path, files=files, data=data, json_body=json_body, params=params)
        raise_for_status(response)
        if response.status_code == 204 or not response.content:
            return None
        return response.json()

    async def _request_bytes(self, method: str, path: str, *, params: Mapping[str, Any] | None = None) -> bytes:
        """Issue a request, raise on non-2xx, and return the raw (non-JSON) response body."""
        response = await self._request(method, path, params=params)
        raise_for_status(response)
        return response.content

    async def _resolve_tier(self) -> str:
        """Return the effective tier — an explicit ``target`` if set, else probed from ``/healthz``."""
        if self._target is not None:
            return self._target
        if self._probed_tier is None:
            body = await self._request_json("GET", "/healthz")
            self._probed_tier = str(body.get("tier", "")) if isinstance(body, dict) else ""
        return self._probed_tier

    async def _require_tier(self, required: Target, method_name: str) -> None:
        self._require_tier_or_raise(await self._resolve_tier(), required, method_name)

    # -- Shared surface (Enterprise + Pro) ---------------------------------

    async def extract(
        self,
        *,
        file: FileInput,
        options: OptionsInput = None,
        webhook: Mapping[str, Any] | None = None,
    ) -> JobResponse:
        """Async equivalent of :meth:`XbergClient.extract`."""
        jobs = await self.extract_batch([file], options=options, webhook=webhook)
        return jobs[0]

    async def extract_batch(
        self,
        files: Iterable[FileInput],
        options: OptionsInput = None,
        webhook: Mapping[str, Any] | None = None,
    ) -> list[JobResponse]:
        """Submit multiple documents in a SINGLE multipart request; fetch jobs concurrently."""
        materialized = list(files)
        if not materialized:
            raise XbergError("extract_batch called with no files", status_code=None)
        payload = await self._request_json(
            "POST",
            "/v1/extract",
            files=_multipart_files(materialized),
            data=_multipart_data(options, webhook),
        )
        job_ids = _job_ids_from_extract_response(payload)
        return list(await asyncio.gather(*(self.get_job(job_id) for job_id in job_ids)))

    async def get_job(self, job_id: str) -> JobResponse:
        """Async equivalent of :meth:`XbergClient.get_job`."""
        return _parse_job(await self._request_json("GET", f"/v1/jobs/{job_id}"))

    async def get_job_result(self, job_id: str) -> JobResult:
        """Async equivalent of :meth:`XbergClient.get_job_result`."""
        return _parse_job_result(await self._request_json("GET", f"/v1/jobs/{job_id}/result"))

    async def list_jobs(self, *, limit: int | None = None, offset: int | None = None) -> Any:
        """Async equivalent of :meth:`XbergClient.list_jobs`."""
        params = {k: v for k, v in (("limit", limit), ("offset", offset)) if v is not None}
        return await self._request_json("GET", "/v1/jobs", params=params or None)

    async def wait_for_job(
        self,
        job_id: str,
        *,
        timeout: float = _DEFAULT_WAIT_TIMEOUT,
        poll_interval: float = _DEFAULT_POLL_INTERVAL,
        backoff: BackoffStrategy = "exponential",
    ) -> JobResponse:
        """Async equivalent of :meth:`XbergClient.wait_for_job` (raises on failure/timeout)."""
        deadline = time.monotonic() + timeout
        interval = poll_interval
        while True:
            job = await self.get_job(job_id)
            if job.status in _TERMINAL_STATUSES:
                _raise_if_failed(job)
                return job
            now = time.monotonic()
            if now >= deadline:
                raise ClientTimeoutError(
                    f"job {job_id} did not reach a terminal status within {timeout}s",
                    status_code=None,
                )
            await asyncio.sleep(min(interval, deadline - now))
            interval = _next_interval(interval, backoff)

    async def wait_for_jobs(
        self,
        job_ids: Iterable[str],
        *,
        timeout: float = _DEFAULT_WAIT_TIMEOUT,
        poll_interval: float = _DEFAULT_POLL_INTERVAL,
        backoff: BackoffStrategy = "exponential",
    ) -> list[JobResponse]:
        """Wait for multiple jobs concurrently."""
        coros = [
            self.wait_for_job(job_id, timeout=timeout, poll_interval=poll_interval, backoff=backoff)
            for job_id in job_ids
        ]
        return list(await asyncio.gather(*coros))

    async def extract_and_wait(
        self,
        *,
        file: FileInput,
        options: OptionsInput = None,
        webhook: Mapping[str, Any] | None = None,
        timeout: float = _DEFAULT_WAIT_TIMEOUT,
        poll_interval: float = _DEFAULT_POLL_INTERVAL,
        backoff: BackoffStrategy = "exponential",
    ) -> JobResponse:
        """Submit a document and await extraction in a single call (raises on failure/timeout)."""
        job = await self.extract(file=file, options=options, webhook=webhook)
        return await self.wait_for_job(str(job.id), timeout=timeout, poll_interval=poll_interval, backoff=backoff)

    async def audit(self, *, action: str | None = None, limit: int | None = None, offset: int | None = None) -> Any:
        """Async equivalent of :meth:`XbergClient.audit`."""
        params = {k: v for k, v in (("action", action), ("limit", limit), ("offset", offset)) if v is not None}
        return await self._request_json("GET", "/v1/audit", params=params or None)

    async def list_rag_collections(self) -> Any:
        """Async equivalent of :meth:`XbergClient.list_rag_collections`."""
        return await self._request_json("GET", "/v1/rag/collections")

    async def create_rag_collection(self, body: Mapping[str, Any]) -> Any:
        """Async equivalent of :meth:`XbergClient.create_rag_collection`."""
        return await self._request_json("POST", "/v1/rag/collections", json_body=body)

    async def get_rag_collection(self, name: str) -> Any:
        """Async equivalent of :meth:`XbergClient.get_rag_collection`."""
        return await self._request_json("GET", f"/v1/rag/collections/{name}")

    async def delete_rag_collection(self, name: str) -> Any:
        """Async equivalent of :meth:`XbergClient.delete_rag_collection`."""
        return await self._request_json("DELETE", f"/v1/rag/collections/{name}")

    async def add_rag_documents(self, name: str, body: Mapping[str, Any]) -> Any:
        """Async equivalent of :meth:`XbergClient.add_rag_documents`."""
        return await self._request_json("POST", f"/v1/rag/collections/{name}/documents", json_body=body)

    async def reindex_rag_document(self, name: str, document_id: str, body: Mapping[str, Any] | None = None) -> Any:
        """Async equivalent of :meth:`XbergClient.reindex_rag_document`."""
        return await self._request_json(
            "POST", f"/v1/rag/collections/{name}/documents/{document_id}/reindex", json_body=body
        )

    async def rag_retrieve(self, name: str, body: Mapping[str, Any]) -> Any:
        """Async equivalent of :meth:`XbergClient.rag_retrieve`."""
        return await self._request_json("POST", f"/v1/rag/collections/{name}/retrieve", json_body=body)

    async def migrate_rag_embeddings(self, name: str, body: Mapping[str, Any]) -> Any:
        """Async equivalent of :meth:`XbergClient.migrate_rag_embeddings`."""
        return await self._request_json("POST", f"/v1/rag/collections/{name}/migrate-embeddings", json_body=body)

    async def get_rag_migration_job(self, name: str, job_id: str) -> Any:
        """Async equivalent of :meth:`XbergClient.get_rag_migration_job`."""
        return await self._request_json("GET", f"/v1/rag/collections/{name}/migrate-embeddings/{job_id}")

    async def get_rag_job(self, job_id: str) -> Any:
        """Async equivalent of :meth:`XbergClient.get_rag_job`."""
        return await self._request_json("GET", f"/v1/rag/jobs/{job_id}")

    async def presets(self) -> list[PresetSummary]:
        """Async equivalent of :meth:`XbergClient.presets`."""
        return _parse_presets(await self._request_json("GET", "/v1/presets"))

    async def get_preset(self, preset_id: str) -> PresetDetail:
        """Async equivalent of :meth:`XbergClient.get_preset`."""
        payload = await self._request_json("GET", f"/v1/presets/{preset_id}")
        return PresetDetail.from_dict(_expect_object(payload, "preset"))

    async def get_preset_sample(self, preset_id: str, name: str) -> bytes:
        """Async equivalent of :meth:`XbergClient.get_preset_sample`."""
        return await self._request_bytes("GET", f"/v1/presets/{preset_id}/sample/{name}")

    # -- Pro-only surface --------------------------------------------------

    async def auth_config(self) -> Any:
        """Pro only: async equivalent of :meth:`XbergClient.auth_config`."""
        await self._require_tier("pro", "auth_config")
        return await self._request_json("GET", "/auth/config")

    async def login(self, body: Mapping[str, Any]) -> Any:
        """Pro only: async equivalent of :meth:`XbergClient.login`."""
        await self._require_tier("pro", "login")
        return await self._request_json("POST", "/auth/login", json_body=body)

    async def list_saved_presets(self) -> Any:
        """Pro only: async equivalent of :meth:`XbergClient.list_saved_presets`."""
        await self._require_tier("pro", "list_saved_presets")
        return await self._request_json("GET", "/v1/saved-presets")

    async def create_saved_preset(self, body: Mapping[str, Any]) -> Any:
        """Pro only: async equivalent of :meth:`XbergClient.create_saved_preset`."""
        await self._require_tier("pro", "create_saved_preset")
        return await self._request_json("POST", "/v1/saved-presets", json_body=body)

    async def delete_saved_preset(self, preset_id: str) -> Any:
        """Pro only: async equivalent of :meth:`XbergClient.delete_saved_preset`."""
        await self._require_tier("pro", "delete_saved_preset")
        return await self._request_json("DELETE", f"/v1/saved-presets/{preset_id}")

    async def get_rag_config(self, project_id: str) -> Any:
        """Pro only: async equivalent of :meth:`XbergClient.get_rag_config`."""
        await self._require_tier("pro", "get_rag_config")
        return await self._request_json("GET", f"/v1/projects/{project_id}/rag-config")

    async def set_rag_config(self, project_id: str, body: Mapping[str, Any]) -> Any:
        """Pro only: async equivalent of :meth:`XbergClient.set_rag_config`."""
        await self._require_tier("pro", "set_rag_config")
        return await self._request_json("PUT", f"/v1/projects/{project_id}/rag-config", json_body=body)

    # -- Pro-only control plane (projects, API keys, integrations) ---------

    async def list_projects(self, *, limit: int | None = None, offset: int | None = None) -> ListProjectsResponse:
        """Async equivalent of :meth:`XbergClient.list_projects`."""
        await self._require_tier("pro", "list_projects")
        payload = await self._request_json("GET", "/v1/projects", params=_pagination(limit, offset))
        return ListProjectsResponse.from_dict(_expect_object(payload, "project list"))

    async def create_project(self, body: CreateProjectRequest | Mapping[str, Any]) -> ProjectResponse:
        """Async equivalent of :meth:`XbergClient.create_project`."""
        await self._require_tier("pro", "create_project")
        payload = await self._request_json("POST", "/v1/projects", json_body=_coerce_body(body))
        return ProjectResponse.from_dict(_expect_object(payload, "project"))

    async def list_api_keys(
        self,
        project_id: str,
        *,
        limit: int | None = None,
        offset: int | None = None,
    ) -> ListApiKeysResponse:
        """Async equivalent of :meth:`XbergClient.list_api_keys`."""
        await self._require_tier("pro", "list_api_keys")
        payload = await self._request_json(
            "GET", f"/v1/projects/{project_id}/api-keys", params=_pagination(limit, offset)
        )
        return ListApiKeysResponse.from_dict(_expect_object(payload, "API key list"))

    async def create_api_key(
        self,
        project_id: str,
        body: CreateApiKeyRequest | Mapping[str, Any],
    ) -> CreateApiKeyResponse:
        """Async equivalent of :meth:`XbergClient.create_api_key`."""
        await self._require_tier("pro", "create_api_key")
        payload = await self._request_json("POST", f"/v1/projects/{project_id}/api-keys", json_body=_coerce_body(body))
        return CreateApiKeyResponse.from_dict(_expect_object(payload, "API key"))

    async def revoke_api_key(self, project_id: str, key_id: str) -> None:
        """Async equivalent of :meth:`XbergClient.revoke_api_key`."""
        await self._require_tier("pro", "revoke_api_key")
        await self._request_json("DELETE", f"/v1/projects/{project_id}/api-keys/{key_id}")

    async def list_integrations(
        self,
        project_id: str,
        *,
        limit: int | None = None,
        offset: int | None = None,
    ) -> ListIntegrationsResponse:
        """Async equivalent of :meth:`XbergClient.list_integrations`."""
        await self._require_tier("pro", "list_integrations")
        payload = await self._request_json(
            "GET", f"/v1/projects/{project_id}/integrations", params=_pagination(limit, offset)
        )
        return ListIntegrationsResponse.from_dict(_expect_object(payload, "integration list"))

    async def create_integration(
        self,
        project_id: str,
        body: CreateIntegrationRequest | Mapping[str, Any],
    ) -> IntegrationResponse:
        """Async equivalent of :meth:`XbergClient.create_integration`."""
        await self._require_tier("pro", "create_integration")
        payload = await self._request_json(
            "POST", f"/v1/projects/{project_id}/integrations", json_body=_coerce_body(body)
        )
        return IntegrationResponse.from_dict(_expect_object(payload, "integration"))

    async def get_integration(self, project_id: str, integration_id: str) -> IntegrationResponse:
        """Async equivalent of :meth:`XbergClient.get_integration`."""
        await self._require_tier("pro", "get_integration")
        payload = await self._request_json("GET", f"/v1/projects/{project_id}/integrations/{integration_id}")
        return IntegrationResponse.from_dict(_expect_object(payload, "integration"))

    async def delete_integration(self, project_id: str, integration_id: str) -> None:
        """Async equivalent of :meth:`XbergClient.delete_integration`."""
        await self._require_tier("pro", "delete_integration")
        await self._request_json("DELETE", f"/v1/projects/{project_id}/integrations/{integration_id}")

    async def connect_integration(self, project_id: str, integration_id: str) -> BeginOAuthResponse:
        """Async equivalent of :meth:`XbergClient.connect_integration`."""
        await self._require_tier("pro", "connect_integration")
        payload = await self._request_json("POST", f"/v1/projects/{project_id}/integrations/{integration_id}/connect")
        return BeginOAuthResponse.from_dict(_expect_object(payload, "OAuth connect"))

    async def disconnect_integration(self, project_id: str, integration_id: str) -> None:
        """Async equivalent of :meth:`XbergClient.disconnect_integration`."""
        await self._require_tier("pro", "disconnect_integration")
        await self._request_json("POST", f"/v1/projects/{project_id}/integrations/{integration_id}/disconnect")

    async def list_integration_documents(
        self,
        project_id: str,
        integration_id: str,
        *,
        mime_types: str | None = None,
        folder_id: str | None = None,
        max_results: int | None = None,
    ) -> ListDocumentsResponse:
        """Async equivalent of :meth:`XbergClient.list_integration_documents`."""
        await self._require_tier("pro", "list_integration_documents")
        params = _query_params(mime_types=mime_types, folder_id=folder_id, max_results=max_results)
        payload = await self._request_json(
            "GET", f"/v1/projects/{project_id}/integrations/{integration_id}/documents", params=params
        )
        return ListDocumentsResponse.from_dict(_expect_object(payload, "integration document list"))

    async def fetch_integration_document(self, project_id: str, integration_id: str, document_id: str) -> bytes:
        """Async equivalent of :meth:`XbergClient.fetch_integration_document`."""
        await self._require_tier("pro", "fetch_integration_document")
        return await self._request_bytes(
            "GET", f"/v1/projects/{project_id}/integrations/{integration_id}/documents/{document_id}"
        )

    # -- Enterprise-only surface ------------------------------------------

    async def versions(self, document_id: str) -> Any:
        """Enterprise only: async equivalent of :meth:`XbergClient.versions`."""
        await self._require_tier("enterprise", "versions")
        return await self._request_json("GET", f"/v1/documents/{document_id}/versions")

    async def diff(self, document_id: str, *, params: Mapping[str, Any] | None = None) -> Any:
        """Enterprise only: async equivalent of :meth:`XbergClient.diff`."""
        await self._require_tier("enterprise", "diff")
        return await self._request_json("GET", f"/v1/documents/{document_id}/diff", params=params)

    async def get_diff_job(self, document_id: str, diff_job_id: str) -> Any:
        """Enterprise only: async equivalent of :meth:`XbergClient.get_diff_job`."""
        await self._require_tier("enterprise", "get_diff_job")
        return await self._request_json("GET", f"/v1/documents/{document_id}/diff/{diff_job_id}")

    async def presign_upload(self, body: Mapping[str, Any]) -> Any:
        """Enterprise only: async equivalent of :meth:`XbergClient.presign_upload`."""
        await self._require_tier("enterprise", "presign_upload")
        return await self._request_json("POST", "/v1/uploads/presign", json_body=body)

    async def confirm_upload(self, body: Mapping[str, Any]) -> Any:
        """Enterprise only: async equivalent of :meth:`XbergClient.confirm_upload`."""
        await self._require_tier("enterprise", "confirm_upload")
        return await self._request_json("POST", "/v1/uploads/confirm", json_body=body)

    async def usage(self, *, params: Mapping[str, Any] | None = None) -> Any:
        """Enterprise only: async equivalent of :meth:`XbergClient.usage`."""
        await self._require_tier("enterprise", "usage")
        return await self._request_json("GET", "/v1/usage", params=params)


__all__ = [
    "AsyncXbergClient",
    "BackoffStrategy",
    "BodyInput",
    "FileInput",
    "OptionsInput",
    "Target",
    "XbergClient",
]
