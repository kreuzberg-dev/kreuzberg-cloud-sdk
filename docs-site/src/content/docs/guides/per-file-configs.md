---
title: Per-file configs
description: Override extraction config for one document in a batch, and how it merges.
---

## The precedence chain

A batch has one `options.extraction_config` shared by every document in it. A single document
within that batch can override it with its own `config` — a `FileExtractionConfig`. Precedence,
highest to lowest:

1. The per-file `config` on that document
2. The batch-level `options.extraction_config`
3. A curated or saved preset
4. The project default

The preset and project default are already folded into the batch-level config by the time a
per-file override is applied. **The merge is shallow over top-level fields**: a field the per-file
config sets replaces the batch-level value outright — it does not deep-merge into a nested object —
and a field it leaves unset falls through to whatever the batch level carries. Omitting `config`
entirely means "use the batch default" for every field.

`FileExtractionConfig` carries the same per-file knobs as `options.extraction_config` — `ocr`,
`pages`, `chunking`, `content_filter`, `layout`, `keywords`, `language_detection`,
`structured_extraction`, `postprocessor`, `images`, `pdf_options`, `disable_ocr`, `force_ocr`,
`force_ocr_pages`, `extraction_timeout_secs` (1–600, default 600, clamped down rather than
rejected above the ceiling), `output_format`, `result_format` and `include_document_structure`.
Batch-only fields — `use_cache`, `cache_namespace`, `cache_ttl_secs`,
`max_concurrent_extractions`, `security_limits`, `max_archive_depth`,
`max_embedded_file_bytes` — are not valid here; they apply to the whole request and have no
per-file equivalent.

## On the wire

Two equivalent shapes carry a per-file override, depending on how you submit the batch:

- **JSON**: each entry in `documents[]` may carry its own `config`.
- **Multipart**: a text part named `config-<filename>` whose value is the JSON-encoded config,
  mirroring the existing `document_id-<filename>` lineage convention.

## Using it today

None of the three clients' `extract`/`extractBatch`/`Extract` convenience methods expose a
per-file `config` parameter yet — they only build the shared `options`/`webhook` multipart parts.
To set a per-file override, send the request yourself against the same base URL and credentials the
client already resolved.

```python title="Python"
import base64
import httpx

base_url = "https://api.xberg.io"  # the same base_url the XbergClient was constructed with
api_key = "kz_..."

with open("invoice.pdf", "rb") as f:
    invoice_bytes = f.read()
with open("statement.pdf", "rb") as f:
    statement_bytes = f.read()

response = httpx.post(
    f"{base_url}/v1/extract",
    headers={"Authorization": f"Bearer {api_key}"},
    json={
        "documents": [
            {
                "filename": "invoice.pdf",
                "mime_type": "application/pdf",
                "data": base64.b64encode(invoice_bytes).decode(),
                # Per-file override: force OCR for this one scanned document.
                "config": {"force_ocr": True},
            },
            {
                "filename": "statement.pdf",
                "mime_type": "application/pdf",
                "data": base64.b64encode(statement_bytes).decode(),
                # No config: falls through to the batch-level options.extraction_config.
            },
        ],
        "options": {"extraction_config": {"disable_ocr": True}},
    },
)
response.raise_for_status()
job_ids = response.json()["job_ids"]
```

```ts title="TypeScript"
// client.raw is the underlying openapi-fetch client, typed over the same spec —
// use it for shapes the high-level extractBatch doesn't cover yet.
const { data, error } = await client.raw.POST("/v1/extract", {
  body: {
    documents: [
      {
        filename: "invoice.pdf",
        mime_type: "application/pdf",
        data: invoiceBase64,
        config: { force_ocr: true },
      },
      {
        filename: "statement.pdf",
        mime_type: "application/pdf",
        data: statementBase64,
      },
    ],
    options: { extraction_config: { disable_ocr: true } },
  },
});
if (error) throw error;
const jobIds = data.job_ids;
```

```go title="Go"
// The Go client has no generated JSON extract-request type (it only builds the
// multipart form for ExtractBatch), so a per-file override means POSTing the
// JSON body directly against the client's own configuration.
body := map[string]any{
    "documents": []map[string]any{
        {
            "filename":  "invoice.pdf",
            "mime_type": "application/pdf",
            "data":      base64.StdEncoding.EncodeToString(invoiceBytes),
            "config":    map[string]any{"force_ocr": true},
        },
        {
            "filename":  "statement.pdf",
            "mime_type": "application/pdf",
            "data":      base64.StdEncoding.EncodeToString(statementBytes),
        },
    },
    "options": map[string]any{
        "extraction_config": map[string]any{"disable_ocr": true},
    },
}
encoded, err := json.Marshal(body)
if err != nil {
    log.Fatal(err)
}
req, err := http.NewRequestWithContext(ctx, http.MethodPost, client.BaseURL()+"/v1/extract", bytes.NewReader(encoded))
if err != nil {
    log.Fatal(err)
}
req.Header.Set("Content-Type", "application/json")
req.Header.Set("Authorization", "Bearer kz_...")
resp, err := client.HTTPClient().Do(req)
```

Go's `Client.BaseURL()` and `Client.HTTPClient()` are public, but the API key is not read back out
of either client — keep it in the environment variable (or secret store) you already read it from
when constructing the client, rather than a second source of truth.

JSON is the more approachable route today: it needs no manual multipart encoding. If you must stay
on multipart (for example, to keep raw file bytes instead of base64), build the `config-<filename>`
text part alongside the `file` parts yourself; none of the three clients' multipart builders wire
one in.
