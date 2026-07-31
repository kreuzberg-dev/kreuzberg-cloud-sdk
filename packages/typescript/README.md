<p align="center">
  <picture>
    <source media="(prefers-color-scheme: dark)" srcset="https://cdn.jsdelivr.net/gh/xberg-io/assets@v1/banner/readme-banner-dark.svg">
    <img alt="Xberg" width="420" src="https://cdn.jsdelivr.net/gh/xberg-io/assets@v1/banner/readme-banner-light.svg">
  </picture>
</p>

# @xberg-io/sdk

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

Official TypeScript / Node.js client for the [Xberg Enterprise](https://enterprise.xberg.io)
and Xberg Pro document-processing APIs. One `XbergClient` speaks to either
product: the shared surface (extraction, jobs, audit, RAG) is written once, and
tier-specific methods are capability-gated.

- ESM-only, modern (Node 20+, Bun, Deno, Cloudflare Workers)
- Dual-target: two generated schema sets (Enterprise + Pro), never merged
- Generated types via `openapi-typescript`, runtime via `openapi-fetch`
- Tree-shakable, no bundled dependencies

## Install

```sh
pnpm add @xberg-io/sdk
```

## Targets

`XbergClient` defaults to Xberg Enterprise (`baseUrl` defaults to
`https://api.xberg.io`). To talk to a self-hosted Xberg Pro instance, pass
`target: "pro"` with an explicit `baseUrl`:

```ts
import { XbergClient } from "@xberg-io/sdk";

const pro = new XbergClient({ apiKey: process.env.XBERG_API_KEY!, target: "pro", baseUrl: "https://pro.example.com" });
```

When `target` is omitted the tier is discovered lazily from `GET /healthz`.
Calling a method not available on the connected tier (e.g. `usage()` on Pro, or
`login()` on Enterprise) throws a clear "not available on this tier" error.

## Quickstart — single file

```ts
import { XbergClient } from "@xberg-io/sdk";
import { readFile } from "node:fs/promises";

const client = new XbergClient({ apiKey: process.env.XBERG_API_KEY! });

const data = await readFile("invoice.pdf");
const result = await client.extractAndWait({
  file: { name: "invoice.pdf", data, mimeType: "application/pdf" },
});
console.log(result.result?.content);
```

## Quickstart — batch + parallel wait

```ts
import { XbergClient } from "@xberg-io/sdk";
import { readFile } from "node:fs/promises";

const client = new XbergClient({ apiKey: process.env.XBERG_API_KEY! });

const files = await Promise.all(
  ["a.pdf", "b.pdf", "c.pdf"].map(async (name) => ({
    name,
    data: await readFile(name),
  })),
);
const jobs = await client.extractBatch({ files });
const results = await client.waitForJobs(jobs.map((j) => j.id));
for (const r of results) console.log(r.id, r.status);
```

## Quickstart — sandbox (no signup)

```ts
import { XbergClient } from "@xberg-io/sdk";

const client = await XbergClient.fromSandbox();
const result = await client.extractAndWait({
  file: new Blob(["Hello world"], { type: "text/plain" }),
});
console.log(result.result?.content);
```

## API

Shared surface (both tiers):

| Method | Returns |
|---|---|
| `extract({ file, options? })` | `Promise<Job>` |
| `extractBatch({ files, options? })` | `Promise<Job[]>` |
| `getJob(jobId)` | `Promise<Job>` |
| `waitForJob(jobId, opts?)` | `Promise<JobResult>` |
| `waitForJobs(jobIds, opts?)` | `Promise<JobResult[]>` |
| `extractAndWait({ file, options?, ...waitOpts })` | `Promise<JobResult>` |
| `listJobs({ limit?, offset? })` | `Promise<ListJobsResponse>` |
| `audit({ action?, limit?, offset? })` | `Promise<ListAuditEntriesResponse>` |
| `listRagCollections()`, `createRagCollection(body)`, `ragRetrieve(name, body)`, … | RAG surface |
| `createSandboxKey()` | `Promise<SandboxKey>` |
| `XbergClient.fromSandbox(opts?)` | `Promise<XbergClient>` (static) |

Xberg Pro only: `login`, `authConfig`, `listSavedPresets` / `createSavedPreset` /
`deleteSavedPreset`, `getJobResult`, `getRagConfig` / `setRagConfig`.

Xberg Enterprise only: `versions`, `diff` / `getDiffJob`, `presets` /
`getPreset`, `presignUpload` / `confirmUpload`, `usage`.

Errors throw subclasses of `XbergError` (`AuthError`, `RateLimitError`,
`ValidationError`, `NotFoundError`, `ServerError`, `TimeoutError`). Each
carries `status: number` and `body: unknown`. `RateLimitError.retryAfter`
is parsed from the `Retry-After` response header.

The low-level `createClient(...)` factory (a thin `openapi-fetch` wrapper)
is still exported for direct OpenAPI access.

## Docs

Full reference at <https://enterprise.xberg.io>.

## License

MIT — © Kreuzberg, Inc.
