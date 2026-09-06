---
title: Extracting documents
description: Single documents, batches, and the options that shape a result.
---

## Submitting

`POST /v1/extract` accepts up to **10 documents** per request on both tiers, as either
`application/json` with base64 bytes or `multipart/form-data` with raw bytes. The clients pick the
encoding for you.

Prefer multipart for anything large: JSON has to base64-encode the bytes, which inflates the body
by about a third.

The response is **202** with one job id per document — never the extracted content. Extraction is
asynchronous on both tiers precisely so a large document cannot ride on a single HTTP request.

## Batches

A batch is a fan-out, not a single unit of work: each document becomes its own job with its own id
and its own result. That matters for failure handling — one document failing does not discard the
others, and each job reports its own status.

Waiting on a batch waits on every job, and the clients do that concurrently rather than in series.

## Reading results

`GET /v1/jobs/{id}/result` returns the job's documents. Each carries `content`, `mime_type`,
`metadata`, `tables` and `counts` — the last being `{pages, tables, images}`. Documents are typed,
so reach for fields rather than dictionary keys.

A job can end `partial_success`: some documents extracted, others did not. The per-document errors
list says which, and why.
