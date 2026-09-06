---
title: Errors and retries
description: The error hierarchy, what is retried, and what is not.
---

## The error envelope

Every error response carries the same JSON shape:

```json
{ "error": { "code": "validation", "message": "documents must not be empty" } }
```

`code` is a stable identifier you can branch on; `message` is for humans and may change.

## The hierarchy

Each client maps status codes onto typed errors rather than making you inspect numbers:

| Condition | Error |
| --- | --- |
| 401, 403 | authentication error |
| 400, 422 | validation error |
| 404 | not-found error |
| 429 | rate-limit error, carrying the retry delay when the server sends one |
| 5xx | server error |
| client-side timeout | timeout error |
| method not on this tier | tier error, raised before the request |

All of them descend from one base error, so you can catch broadly or narrowly.

## What gets retried

Retries are **off by default**; set the retry count to enable them. When enabled, only requests
that are safe to repeat are retried — 429 and 5xx — with exponential backoff by default and the
server's retry delay honoured when present. A 4xx that is not 429 is never retried, because
repeating it cannot change the answer.

## Waiting for a job is not a retry

Polling a job is a separate loop with its own timeout, and it is not affected by the retry
setting. A job that ends `failed` or `cancelled` raises rather than returning quietly — the wait
promised a result, so not getting one is an error.
