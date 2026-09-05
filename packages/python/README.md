<p align="center">
  <picture>
    <source media="(prefers-color-scheme: dark)" srcset="https://cdn.jsdelivr.net/gh/xberg-io/assets@v1/banner/readme-banner-dark.svg">
    <img alt="Xberg" width="420" src="https://cdn.jsdelivr.net/gh/xberg-io/assets@v1/banner/readme-banner-light.svg">
  </picture>
</p>

# xberg-io-sdk

<div align="center">

<img width="3384" height="573" alt="Xberg Enterprise" src="https://github.com/user-attachments/assets/1b6c6ad7-3b6d-4171-b1c9-f2026cc9deb8">

</div>

<div align="center" style="display: flex; flex-wrap: wrap; gap: 8px; justify-content: center; margin: 20px 0;">

<a href="https://pypi.org/project/xberg-io-sdk/"><img src="https://img.shields.io/pypi/v/xberg-io-sdk?label=PyPI&color=007ec6" alt="PyPI"></a>
<a href="https://www.npmjs.com/package/@xberg-io/sdk"><img src="https://img.shields.io/npm/v/%40xberg-io%2Fsdk?label=npm&color=007ec6" alt="npm"></a>
<a href="https://pkg.go.dev/github.com/xberg-io/sdks/go/v1"><img src="https://img.shields.io/badge/Go-pkg.go.dev-007ec6?logo=go&logoColor=white" alt="Go Reference"></a>
<a href="https://github.com/xberg-io/sdks/blob/main/LICENSE"><img src="https://img.shields.io/badge/License-MIT-blue.svg" alt="License"></a>
<a href="https://enterprise.xberg.io"><img src="https://img.shields.io/badge/docs-enterprise.xberg.io-007ec6" alt="Documentation"></a>
<a href="https://github.com/xberg-io/sdks/actions/workflows/validate.yml"><img src="https://github.com/xberg-io/sdks/actions/workflows/validate.yml/badge.svg" alt="CI"></a>

</div>

<div align="center" style="margin-top: 20px;">

<a href="https://discord.gg/xt9WY3GnKR"><img height="22" src="https://img.shields.io/badge/Discord-Join%20our%20community-7289da?logo=discord&logoColor=white" alt="Discord"></a>

</div>

Official Python client for the [Xberg Enterprise](https://enterprise.xberg.io)
and [Xberg Pro](https://enterprise.xberg.io) document-processing APIs — one
client, two targets.

- httpx-based, sync (`XbergClient`) and async (`AsyncXbergClient`) surfaces
- One client speaks to both products: shared extraction/jobs/curated-presets/RAG
  surface, plus capability-gated tier-specific methods (Pro auth, saved presets
  and control plane; Enterprise uploads/usage/document diff)
- Generated from two OpenAPI 3.1 specs (Enterprise + Pro), then wrapped in
  ergonomic helpers
- Configurable retry engine (honors `Retry-After`, exponential backoff)
- Type-annotated end to end, `py.typed` shipped

## Install

```sh
pip install xberg-io-sdk
# or
uv add xberg-io-sdk
```

Requires Python 3.10+.

## Quickstart

### Sync — single file with explicit API key

```python
from pathlib import Path
from xberg_io_sdk import XbergClient

# Enterprise (base_url defaults to https://api.xberg.io)
with XbergClient(api_key="kz_...") as client:
    job = client.extract_and_wait(file=Path("invoice.pdf"))
    if job.result is not None:
        print(job.result.content)
```

### Connecting to Xberg Pro

Pro is self-hosted and has no default URL — pass `base_url` (and, to skip the
`/healthz` tier probe, `target="pro"`):

```python
from xberg_io_sdk import XbergClient

with XbergClient(api_key="kz_...", base_url="https://pro.internal", target="pro") as client:
    config = client.auth_config()          # Pro-only
    presets = client.list_saved_presets()  # Pro-only
```

### Async — batch extract with parallel waits

```python
import asyncio
from pathlib import Path
from xberg_io_sdk import AsyncXbergClient

async def main() -> None:
    async with AsyncXbergClient(api_key="kz_...") as client:
        jobs = await client.extract_batch([Path("a.pdf"), Path("b.pdf"), Path("c.pdf")])
        results = await client.wait_for_jobs([str(j.id) for j in jobs])
        for job in results:
            print(job.filename, job.status)

asyncio.run(main())
```

## Public API

One `XbergClient` (sync) / `AsyncXbergClient` (async) serves both products.
Constructor: `(api_key=None, base_url=None, target=None, timeout=30,
headers=None, retries=0, retry_on=..., retry_backoff="exponential")`.

Shared methods (both tiers):

| Method | Purpose |
|---|---|
| `extract(file=..., options=..., webhook=...)` | Submit one document, get back a `Job`. |
| `extract_batch(files, options=...)` | Submit many documents in ONE multipart request. |
| `get_job(job_id)` | Fetch current job status / result. |
| `wait_for_job(job_id, timeout=300, ...)` | Poll until terminal (raises on `failed`/`cancelled`). |
| `wait_for_jobs(job_ids, ...)` | Wait for multiple jobs. |
| `extract_and_wait(file=..., ...)` | Submit + wait in one call. |
| `get_job_result(job_id)` | Fetch a job's stored `JobResult` envelope. |
| `list_jobs(...)`, `audit(...)` | List jobs / read the audit log. |
| `list_rag_collections()`, `rag_retrieve(name, body)`, `get_rag_job(job_id)`, … | RAG collections/documents/retrieval. |
| `presets()`, `get_preset(id)`, `get_preset_sample(id, name)` | Curated managed presets. |

Tier-specific methods are capability-gated — calling one against the wrong tier
raises a clear error instead of a raw 404:

- **Pro only:** `login`, `auth_config`, `list_saved_presets`/`create_saved_preset`/`delete_saved_preset`, `get_rag_config`/`set_rag_config`
- **Pro only (control plane):** `list_projects`/`create_project`, `list_api_keys`/`create_api_key`/`revoke_api_key`, `list_integrations`/`create_integration`/`get_integration`/`delete_integration`, `connect_integration`/`disconnect_integration`, `list_integration_documents`/`fetch_integration_document`
- **Enterprise only:** `versions`, `diff`/`get_diff_job`, `presign_upload`/`confirm_upload`, `usage`

Errors are raised as one of:
`XbergError` (base), `AuthError` (401 **and** 403), `ValidationError`,
`NotFoundError`, `RateLimitError` (carries `retry_after`), `ServerError`,
`TimeoutError`.

## Documentation

Full reference and guides: <https://enterprise.xberg.io>

## License

MIT — © Kreuzberg, Inc.
