---
title: Tier capabilities
description: What Xberg Enterprise and Xberg Pro each serve, why they differ, and what is simply not built yet.
---

Enterprise is a strict superset of Pro (ADR-0067), enforced in CI by
`scripts/tests/spec-parity.test.sh`: everything Pro serves, Enterprise also serves, plus an
Enterprise-only surface Pro has no equivalent for. Where the two differ, the difference is recorded
here — an absence should read as a decision, not an oversight.

Enterprise splits into two origins: a **data plane** (extraction, jobs, RAG, presets, auto-tune —
everything `base_url` addresses) and a separate **control plane** (projects, API keys,
integrations, RAG config, members, invitations, managed webhooks, usage, analytics, billing) on its
own origin. Pro serves both planes from one binary, so its control plane lives at the same
`base_url`.

## Shared by both tiers

Extraction (single document and batch, JSON or multipart, up to 10 documents per request),
the jobs surface (submit, poll, result, pages, cancel), curated and saved presets, auto-tune and
tuning profiles, the RAG API, and inline per-request webhooks.

**RAG and auto-tune are licence-gated, not tier-gated.** Whether a call succeeds depends on the
connected instance's licence entitlement, independent of whether it is Enterprise or Pro. A licence
without the entitlement gets a normal authorization error, not a tier error.

## Enterprise only (by design)

| Capability | Why |
| --- | --- |
| `/v1/documents/**` — versions, diff, latest | Document lineage tracks a logical document across re-submissions and needs a version store Pro does not have. Pro rejects `document_id` explicitly. |
| `split_documents` (multi-document PDF boundary detection) | Pro's `ExtractionOptions.split_documents` is accepted but ignored. |
| Managed webhook *subscriptions* | A standing, control-plane-registered webhook independent of any single extract call — distinct from the shared inline `webhook`, which both tiers deliver. |
| Team management (members, invitations) | Control-plane concept; no Pro equivalent. |
| Document versions | See lineage, above. |
| Billing | Control-plane concept; no Pro equivalent. |

## Pro only

| Capability | Why |
| --- | --- |
| `/v1/projects`, api-keys, integrations, `rag-config` | Pro carries its control plane on the data-plane port. Enterprise's control plane is a separate service on another port, outside the surface these SDKs call today (see below). |
| `/auth/login`, `/v1/oauth/callback`, `DELETE /auth/account` | Browser session and OAuth redirect flows belonging to Pro's own dashboard. |

## Enterprise only today, intended for both tiers

These are implemented and working on Enterprise. Pro's spec does not declare them at all, so the
clients gate them to Enterprise — and that gate is currently correct, not a bug. They are listed
separately from the table above because the intent is different: the capabilities above have no Pro
implementation coming, while these are planned for Pro and simply are not there yet.

| Capability | State |
| --- | --- |
| Enrichment — `POST /v1/enrich`, `GET /v1/enrich/{job_id}` | Enterprise only |
| Usage analytics — `GET /v1/usage` | Enterprise only |
| Presigned uploads — `POST /v1/uploads/presign`, `POST /v1/uploads/confirm` | Enterprise only |
| Extraction telemetry — `GET /v1/extractions` | Enterprise only |
| Crawling — `urls`/`crawl_config` on `ExtractRequest`, and `GET /v1/crawl-jobs/{id}/events` | Enterprise only. Pro's obstacle is real rather than a matter of declaring it: Enterprise fans crawl events in over NATS, which Pro does not run, so Pro needs a different transport first. |

When they reach Pro they will be declared in its spec before they are implemented, answering `501`
with a stable error code until the implementation lands. At that point a Pro-targeted client will
stop raising a tier error and start returning a typed not-implemented error instead — so treat
"the tier gate refused it" and "the server has not built it" as two different answers, and read the
response rather than inferring one from the other.

## Enterprise's control plane: not reachable from these SDKs yet

The Pro-only table above is accurate for what the clients call today, but it undersells the
picture: Enterprise's control plane exists as a separate service
(`control_plane_base_url`/`controlPlaneBaseUrl`/`ControlPlaneBaseURL()`), and none of the SDKs'
control-plane methods (`list_projects`, `create_api_key`, `create_integration`, …) call it — every
one is gated to the `pro` tier only. Calling them against an Enterprise-targeted client raises a
tier error today, not because Enterprise lacks a control plane, but because these methods have not
been wired to call it yet. See [The control plane guide](/guides/control-plane/).

## Not exposed by any client, on purpose

- **`GET /readyz`** — an infrastructure readiness probe. `/healthz` is the tier probe and the
  clients do use it.
- **Pro's redirect and cookie login flows** — they depend on a browser round-trip an SDK cannot
  meaningfully drive.

## How the client enforces this

Pass `target` explicitly, or let the client read the tier once from `GET /healthz`. A method the
connected tier does not serve raises a tier error before any request is sent, so you get a clear
message instead of a 404 from a route that was never there.
