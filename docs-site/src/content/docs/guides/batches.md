---
title: Batches
description: extract_batch, and correlating results back to inputs.
---

## Submitting a batch

`extract_batch` / `extractBatch` / `ExtractBatch` sends every file in **one** multipart request and
returns one job per file, in submission order — up to 10 documents per request on both tiers.
`options` and `webhook` apply to the whole batch (see [Per-file configs](/guides/per-file-configs/)
to override extraction settings for one document within it).

```python title="Python"
from pathlib import Path

paths = [Path("invoice.pdf"), Path("receipt.png"), Path("contract.docx")]
jobs = client.extract_batch(paths)
for job in jobs:
    print(job.id, job.status)
```

```ts title="TypeScript"
const jobs = await client.extractBatch({
  files: [
    { name: "invoice.pdf", data: invoiceBytes, mimeType: "application/pdf" },
    { name: "receipt.png", data: receiptBytes, mimeType: "image/png" },
  ],
});
```

```go title="Go"
jobs, err := client.ExtractBatch(ctx, []xberg.FileSource{
    {Name: "invoice.pdf", Reader: invoiceFile},
    {Name: "receipt.png", Reader: receiptFile},
}, nil)
```

## A batch is a fan-out, not one unit of work

Each document becomes its own job with its own id and its own terminal status. One document
failing does not discard the others: a batch of three can end with two jobs `completed` and one
`failed`. That is why waiting on a batch waits on every job independently rather than treating the
batch as a single pass/fail unit.

## Correlating results back to inputs

The response order is the submission order, so zip the returned jobs against the files you sent:

```python title="Python"
filenames = ["invoice.pdf", "receipt.png"]
jobs = client.extract_batch([Path(name) for name in filenames])
results = client.wait_for_jobs([job.id for job in jobs])
for filename, result in zip(filenames, results, strict=True):
    print(filename, result.status)
```

```ts title="TypeScript"
const filenames = ["invoice.pdf", "receipt.png"];
const files = [
  { name: filenames[0], data: invoiceBytes, mimeType: "application/pdf" },
  { name: filenames[1], data: receiptBytes, mimeType: "image/png" },
];
const jobs = await client.extractBatch({ files });
const results = await client.waitForJobs(jobs.map((job) => job.id));
filenames.forEach((filename, index) => console.log(filename, results[index].status));
```

```go title="Go"
filenames := []string{"invoice.pdf", "receipt.png"}
jobs, err := client.ExtractBatch(ctx, []xberg.FileSource{
    {Name: filenames[0], Reader: invoiceFile},
    {Name: filenames[1], Reader: receiptFile},
}, nil)
jobIDs := make([]string, len(jobs))
for i, job := range jobs {
    jobIDs[i] = job.Id.String()
}
results, err := client.WaitForJobs(ctx, jobIDs, nil)
for i, filename := range filenames {
    fmt.Println(filename, results[i].Status)
}
```

Do not rely on matching by filename in the result: two documents can share a filename within a
batch. Index position (or, on Enterprise, a `document_id` you supplied yourself for lineage
tracking — see [Tier capabilities](/reference/tier-capabilities/)) is the only reliable key.

## Reading a partially-failed batch

`wait_for_job`/`waitForJob`/`WaitForJob` raises only for `failed`/`cancelled`; a `partial_success`
job is returned normally because *some* of its content did extract. Check the job (or job result)
for per-document errors before assuming success.
