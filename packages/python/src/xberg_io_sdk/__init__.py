"""Official Python client for the Xberg Enterprise and Xberg Pro APIs."""

from __future__ import annotations

from xberg_io_sdk._generated_api.models.extracted_document import ExtractedDocument
from xberg_io_sdk._generated_api.models.extraction_options import ExtractionOptions
from xberg_io_sdk._generated_api.models.job_response import JobResponse
from xberg_io_sdk._generated_api.models.job_status import JobStatus
from xberg_io_sdk.client import AsyncXbergClient, XbergClient
from xberg_io_sdk.errors import (
    AuthError,
    NotFoundError,
    RateLimitError,
    ServerError,
    TimeoutError,  # noqa: A004 — domain-specific timeout, intentionally shadows builtin in this namespace
    ValidationError,
    XbergError,
)
from xberg_io_sdk.models import SandboxKey

ExtractionResult = ExtractedDocument
Job = JobResponse
JobResult = ExtractionResult

__all__ = [
    "AsyncXbergClient",
    "AuthError",
    "ExtractedDocument",
    "ExtractionOptions",
    "ExtractionResult",
    "Job",
    "JobResponse",
    "JobResult",
    "JobStatus",
    "NotFoundError",
    "RateLimitError",
    "SandboxKey",
    "ServerError",
    "TimeoutError",
    "ValidationError",
    "XbergClient",
    "XbergError",
    "__version__",
]

__version__ = "0.3.1"
