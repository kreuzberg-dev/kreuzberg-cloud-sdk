"""Tests for ``XbergClient.extract`` / ``AsyncXbergClient.extract`` and batch variants."""

from __future__ import annotations

import io
import json

import httpx
import pytest
import respx

from tests.conftest import TEST_API_KEY, make_extract_response, make_job_payload
from xberg_io_sdk import AsyncXbergClient, ExtractionOptions, XbergClient, XbergError


class _NonSeekableStream:
    """A read-only stream that cannot report or restore its position, unlike ``io.BytesIO``."""

    def __init__(self, data: bytes) -> None:
        self._data = data
        self._pos = 0

    def read(self, size: int = -1) -> bytes:
        end = len(self._data) if size < 0 else self._pos + size
        chunk = self._data[self._pos : end]
        self._pos = end
        return chunk

    def seekable(self) -> bool:
        return False


@respx.mock
def test_extract_sync_happy_path_with_bytes(base_url: str, api_key: str) -> None:
    job_id = "11111111-1111-1111-1111-111111111111"
    extract_route = respx.post(f"{base_url}/v1/extract").mock(
        return_value=httpx.Response(202, json=make_extract_response(job_ids=[job_id])),
    )
    job_route = respx.get(f"{base_url}/v1/jobs/{job_id}").mock(
        return_value=httpx.Response(200, json=make_job_payload(job_id=job_id, status="pending")),
    )

    with XbergClient(api_key=api_key, base_url=base_url) as client:
        job = client.extract(file=b"%PDF-1.4 fake")

    assert extract_route.called
    assert job_route.called
    assert str(job.id) == job_id
    assert job.status == "pending"


@respx.mock
def test_extract_sync_sends_multipart_with_file_and_no_webhook_field(base_url: str, api_key: str) -> None:
    job_id = "22222222-2222-2222-2222-222222222222"
    route = respx.post(f"{base_url}/v1/extract").mock(
        return_value=httpx.Response(202, json=make_extract_response(job_ids=[job_id])),
    )
    respx.get(f"{base_url}/v1/jobs/{job_id}").mock(
        return_value=httpx.Response(200, json=make_job_payload(job_id=job_id, status="pending")),
    )

    with XbergClient(api_key=api_key, base_url=base_url) as client:
        client.extract(file=b"data")

    assert route.called
    request = route.calls.last.request
    content_type = request.headers["content-type"]
    assert content_type.startswith("multipart/form-data")
    body = request.content
    assert b'name="file"' in body
    assert b'name="webhook"' not in body
    assert b"data" in body


@respx.mock
def test_extract_sync_sends_webhook_field_when_provided(base_url: str, api_key: str) -> None:
    job_id = "23232323-2323-2323-2323-232323232323"
    route = respx.post(f"{base_url}/v1/extract").mock(
        return_value=httpx.Response(202, json=make_extract_response(job_ids=[job_id])),
    )
    respx.get(f"{base_url}/v1/jobs/{job_id}").mock(
        return_value=httpx.Response(200, json=make_job_payload(job_id=job_id, status="pending")),
    )

    with XbergClient(api_key=api_key, base_url=base_url) as client:
        client.extract(file=b"data", webhook={"url": "https://hooks.example/cb"})

    body = route.calls.last.request.content
    assert b'name="webhook"' in body
    assert b"https://hooks.example/cb" in body


@respx.mock
def test_extract_sync_serializes_options_as_json_part(base_url: str, api_key: str) -> None:
    job_id = "33333333-3333-3333-3333-333333333333"
    route = respx.post(f"{base_url}/v1/extract").mock(
        return_value=httpx.Response(202, json=make_extract_response(job_ids=[job_id])),
    )
    respx.get(f"{base_url}/v1/jobs/{job_id}").mock(
        return_value=httpx.Response(200, json=make_job_payload(job_id=job_id, status="pending")),
    )

    options = {"extraction_config": {"chunk_content": True}}

    with XbergClient(api_key=api_key, base_url=base_url) as client:
        client.extract(file=b"data", options=options)

    body = route.calls.last.request.content
    assert b'name="options"' in body
    assert b'"chunk_content": true' in body


@respx.mock
def test_extract_sync_accepts_extraction_options_model(base_url: str, api_key: str) -> None:
    job_id = "44444444-4444-4444-4444-444444444444"
    route = respx.post(f"{base_url}/v1/extract").mock(
        return_value=httpx.Response(202, json=make_extract_response(job_ids=[job_id])),
    )
    respx.get(f"{base_url}/v1/jobs/{job_id}").mock(
        return_value=httpx.Response(200, json=make_job_payload(job_id=job_id, status="pending")),
    )

    options = ExtractionOptions()

    with XbergClient(api_key=api_key, base_url=base_url) as client:
        client.extract(file=b"data", options=options)

    body = route.calls.last.request.content
    assert b'name="options"' in body


@respx.mock
def test_extract_sync_accepts_binaryio_input(base_url: str, api_key: str) -> None:
    job_id = "55555555-5555-5555-5555-555555555555"
    respx.post(f"{base_url}/v1/extract").mock(
        return_value=httpx.Response(202, json=make_extract_response(job_ids=[job_id])),
    )
    respx.get(f"{base_url}/v1/jobs/{job_id}").mock(
        return_value=httpx.Response(200, json=make_job_payload(job_id=job_id, status="pending")),
    )

    stream = io.BytesIO(b"hello")
    stream.name = "doc.pdf"

    with XbergClient(api_key=api_key, base_url=base_url) as client:
        job = client.extract(file=stream)

    assert str(job.id) == job_id


@respx.mock
def test_extract_sync_accepts_path_input(tmp_path: object, base_url: str, api_key: str) -> None:
    from pathlib import Path

    target = Path(str(tmp_path)) / "fixture.txt"
    target.write_bytes(b"hello world")

    job_id = "66666666-6666-6666-6666-666666666666"
    route = respx.post(f"{base_url}/v1/extract").mock(
        return_value=httpx.Response(202, json=make_extract_response(job_ids=[job_id])),
    )
    respx.get(f"{base_url}/v1/jobs/{job_id}").mock(
        return_value=httpx.Response(200, json=make_job_payload(job_id=job_id, status="pending")),
    )

    with XbergClient(api_key=api_key, base_url=base_url) as client:
        client.extract(file=target)

    body = route.calls.last.request.content
    assert b'filename="fixture.txt"' in body
    assert b"Content-Type: text/plain" in body


@respx.mock
def test_extract_sends_authorization_header(base_url: str, api_key: str) -> None:
    job_id = "77777777-7777-7777-7777-777777777777"
    route = respx.post(f"{base_url}/v1/extract").mock(
        return_value=httpx.Response(202, json=make_extract_response(job_ids=[job_id])),
    )
    respx.get(f"{base_url}/v1/jobs/{job_id}").mock(
        return_value=httpx.Response(200, json=make_job_payload(job_id=job_id)),
    )

    with XbergClient(api_key=api_key, base_url=base_url) as client:
        client.extract(file=b"x")

    assert route.calls.last.request.headers["authorization"] == f"Bearer {TEST_API_KEY}"


@respx.mock
def test_extract_batch_sync_sends_single_multipart_request(base_url: str, api_key: str) -> None:
    job_ids = [
        "aaaaaaaa-aaaa-aaaa-aaaa-aaaaaaaaaaaa",
        "bbbbbbbb-bbbb-bbbb-bbbb-bbbbbbbbbbbb",
    ]
    extract_route = respx.post(f"{base_url}/v1/extract").mock(
        return_value=httpx.Response(202, json=make_extract_response(job_ids=job_ids)),
    )
    for job_id in job_ids:
        respx.get(f"{base_url}/v1/jobs/{job_id}").mock(
            return_value=httpx.Response(200, json=make_job_payload(job_id=job_id, status="pending")),
        )

    with XbergClient(api_key=api_key, base_url=base_url) as client:
        jobs = client.extract_batch([b"a", b"b"])

    assert extract_route.call_count == 1
    body = extract_route.calls.last.request.content
    assert body.count(b'name="file"') == 2
    assert [str(j.id) for j in jobs] == job_ids


@pytest.mark.asyncio
@respx.mock
async def test_extract_async_happy_path(base_url: str, api_key: str) -> None:
    job_id = "cccccccc-cccc-cccc-cccc-cccccccccccc"
    respx.post(f"{base_url}/v1/extract").mock(
        return_value=httpx.Response(202, json=make_extract_response(job_ids=[job_id])),
    )
    respx.get(f"{base_url}/v1/jobs/{job_id}").mock(
        return_value=httpx.Response(200, json=make_job_payload(job_id=job_id, status="pending")),
    )

    async with AsyncXbergClient(api_key=api_key, base_url=base_url) as client:
        job = await client.extract(file=b"data")

    assert str(job.id) == job_id


@pytest.mark.asyncio
@respx.mock
async def test_extract_batch_async_single_request_fetches_jobs_in_parallel(base_url: str, api_key: str) -> None:
    job_ids = [
        "dddddddd-dddd-dddd-dddd-dddddddddddd",
        "eeeeeeee-eeee-eeee-eeee-eeeeeeeeeeee",
        "ffffffff-ffff-ffff-ffff-ffffffffffff",
    ]
    extract_route = respx.post(f"{base_url}/v1/extract").mock(
        return_value=httpx.Response(202, json=make_extract_response(job_ids=job_ids)),
    )
    for jid in job_ids:
        respx.get(f"{base_url}/v1/jobs/{jid}").mock(
            return_value=httpx.Response(200, json=make_job_payload(job_id=jid, status="pending")),
        )

    async with AsyncXbergClient(api_key=api_key, base_url=base_url) as client:
        jobs = await client.extract_batch([b"a", b"b", b"c"])

    assert extract_route.call_count == 1
    assert extract_route.calls.last.request.content.count(b'name="file"') == 3
    assert {str(j.id) for j in jobs} == set(job_ids)


@respx.mock
def test_extract_response_with_unexpected_shape_raises(base_url: str, api_key: str) -> None:
    respx.post(f"{base_url}/v1/extract").mock(
        return_value=httpx.Response(202, json={"unexpected": "shape"}),
    )

    with XbergClient(api_key=api_key, base_url=base_url) as client, pytest.raises(ValueError, match="job_ids"):
        client.extract(file=b"x")


@respx.mock
def test_extract_options_dict_round_trip_is_correct_json(base_url: str, api_key: str) -> None:
    job_id = "abababab-abab-abab-abab-abababababab"
    route = respx.post(f"{base_url}/v1/extract").mock(
        return_value=httpx.Response(202, json=make_extract_response(job_ids=[job_id])),
    )
    respx.get(f"{base_url}/v1/jobs/{job_id}").mock(
        return_value=httpx.Response(200, json=make_job_payload(job_id=job_id)),
    )

    options = {"extraction_config": {"detect_languages": True, "force_ocr": False}}

    with XbergClient(api_key=api_key, base_url=base_url) as client:
        client.extract(file=b"x", options=options)

    body = route.calls.last.request.content.decode("utf-8", errors="replace")
    marker = 'name="options"'
    assert marker in body
    start = body.index("\r\n\r\n", body.index(marker)) + 4
    end = body.index("\r\n", start)
    parsed = json.loads(body[start:end])
    assert parsed == options


# -- retry rewinds a file-handle upload -------------------------------------------


@respx.mock
def test_retrying_a_seekable_upload_resends_the_body_because_httpx_rewinds_it(
    base_url: str, api_key: str, monkeypatch: pytest.MonkeyPatch
) -> None:
    from xberg_io_sdk import client as client_module

    monkeypatch.setattr(client_module.time, "sleep", lambda _seconds: None)

    job_id = "99999999-1111-1111-1111-999999999999"
    route = respx.post(f"{base_url}/v1/extract").mock(
        side_effect=[
            httpx.Response(503, json={"message": "unavailable"}),
            httpx.Response(202, json=make_extract_response(job_ids=[job_id])),
        ],
    )
    respx.get(f"{base_url}/v1/jobs/{job_id}").mock(
        return_value=httpx.Response(200, json=make_job_payload(job_id=job_id, status="pending")),
    )

    payload = b"%PDF-1.4 " + b"x" * 5000
    stream = io.BytesIO(payload)
    stream.name = "big.pdf"

    with XbergClient(api_key=api_key, base_url=base_url, retries=1) as client:
        client.extract(file=stream)

    assert route.call_count == 2
    first_attempt_body = route.calls[0].request.content
    second_attempt_body = route.calls[1].request.content
    # This pins a dependency behaviour rather than our own code: httpx seeks every
    # seekable file part back to 0 before rendering (`_multipart.py`, render_data),
    # on every attempt, so the SDK needs no rewind of its own here. If httpx ever
    # stops doing that, this fails and `_reject_unretryable_files` is no longer a
    # sufficient guard -- which is the whole reason to keep the assertion.
    #
    # httpx mints a fresh random multipart boundary per request, so the raw bytes
    # differ -- compare on content (present) and size (unchanged) instead.
    assert payload in first_attempt_body
    assert payload in second_attempt_body
    assert len(second_attempt_body) == len(first_attempt_body)


@respx.mock
def test_extract_retry_with_non_seekable_stream_raises_clear_error(
    base_url: str, api_key: str, monkeypatch: pytest.MonkeyPatch
) -> None:
    from xberg_io_sdk import client as client_module

    monkeypatch.setattr(client_module.time, "sleep", lambda _seconds: None)
    respx.post(f"{base_url}/v1/extract").mock(return_value=httpx.Response(503, json={"message": "unavailable"}))

    with (
        XbergClient(api_key=api_key, base_url=base_url, retries=1) as client,
        pytest.raises(XbergError, match="not seekable"),
    ):
        client.extract(file=_NonSeekableStream(b"data"))


@pytest.mark.asyncio
@respx.mock
async def test_async_retrying_a_seekable_upload_resends_the_body_because_httpx_rewinds_it(
    base_url: str, api_key: str, monkeypatch: pytest.MonkeyPatch
) -> None:
    from xberg_io_sdk import client as client_module

    async def _fake_sleep(_seconds: float) -> None:
        return None

    monkeypatch.setattr(client_module.asyncio, "sleep", _fake_sleep)

    job_id = "99999999-2222-2222-2222-999999999999"
    route = respx.post(f"{base_url}/v1/extract").mock(
        side_effect=[
            httpx.Response(503, json={"message": "unavailable"}),
            httpx.Response(202, json=make_extract_response(job_ids=[job_id])),
        ],
    )
    respx.get(f"{base_url}/v1/jobs/{job_id}").mock(
        return_value=httpx.Response(200, json=make_job_payload(job_id=job_id, status="pending")),
    )

    payload = b"%PDF-1.4 " + b"y" * 5000
    stream = io.BytesIO(payload)
    stream.name = "big.pdf"

    async with AsyncXbergClient(api_key=api_key, base_url=base_url, retries=1) as client:
        await client.extract(file=stream)

    assert route.call_count == 2
    first_attempt_body = route.calls[0].request.content
    second_attempt_body = route.calls[1].request.content
    # This pins a dependency behaviour rather than our own code: httpx seeks every
    # seekable file part back to 0 before rendering (`_multipart.py`, render_data),
    # on every attempt, so the SDK needs no rewind of its own here. If httpx ever
    # stops doing that, this fails and `_reject_unretryable_files` is no longer a
    # sufficient guard -- which is the whole reason to keep the assertion.
    #
    # httpx mints a fresh random multipart boundary per request, so the raw bytes
    # differ -- compare on content (present) and size (unchanged) instead.
    assert payload in first_attempt_body
    assert payload in second_attempt_body
    assert len(second_attempt_body) == len(first_attempt_body)
