---
title: Tier capabilities
description: What Xberg Enterprise and Xberg Pro each serve, and why anything differs.
---

Enterprise and Pro serve an overlapping data plane. Where they differ, the difference is recorded
here — an absence should read as a decision, not an oversight.

## Shared by both tiers

Extraction (single document and batch, JSON or multipart), the jobs surface (submit, poll, result,
pages, cancel), presets, saved presets, RAG, auto-tune and tuning profiles, and inline per-request
webhooks.

Both tiers accept up to **10 documents** per extract request.

## Enterprise only

| Capability | Why |
| --- | --- |
| `/v1/documents/**` — versions, diff | Document lineage tracks a logical document across re-submissions and needs a version store Pro does not have. Pro rejects `document_id` explicitly. |
| `/v1/extractions` | A per-extraction telemetry feed with preset, token and vision metrics. Distinct from the shared job list, and deliberately Enterprise-only. |
| `/v1/crawl-jobs/{id}/events` | Server-sent crawl events. Enterprise fans these in over NATS, which Pro does not run. |

## Pro only

| Capability | Why |
| --- | --- |
| `/v1/projects`, api-keys, integrations, `rag-config` | Pro carries its control plane on the data-plane port. Enterprise's control plane is a separate service on another port, outside this API. |
| `/auth/login`, `/v1/oauth/callback`, `DELETE /auth/account` | Browser session and OAuth redirect flows, which belong to Pro's own dashboard. |

## Not exposed by any client, on purpose

- **`GET /readyz`** — an infrastructure readiness probe. `/healthz` is the tier probe and the
  clients do use it.
- **Pro's redirect and cookie login flows** — they depend on a browser round-trip that an SDK
  cannot meaningfully drive.

## Webhooks

Both tiers accept an inline `webhook` on an extract request and deliver it durably, with retry and
replay protection. What differs is only the transport underneath.

Managed webhook *subscriptions* are a control-plane feature and are not part of this API on either
tier.

## How the client enforces this

Pass `target` explicitly, or let the client read the tier once from `GET /healthz`. A method the
connected tier does not serve raises a tier error before any request is sent, so you get a clear
message instead of a 404 from a route that was never there.
