import { HttpResponse, http } from "msw";
import { afterAll, afterEach, beforeAll, describe, expect, it } from "vitest";
import { XbergClient } from "../src/client.js";
import { NotFoundError, TimeoutError } from "../src/errors.js";
import type { Job, JobResult } from "../src/types.js";
import { TEST_BASE_URL, createTestServer, url } from "./_helpers.js";

const server = createTestServer();

beforeAll(() => server.listen({ onUnhandledRequest: "error" }));
afterEach(() => server.resetHandlers());
afterAll(() => server.close());

const FIXED_NOW = "2026-05-09T10:00:00Z";

function makeJob(overrides: Partial<Job> & { id: string; status: Job["status"] }): Job {
  return {
    id: overrides.id,
    filename: overrides.filename ?? "x.pdf",
    status: overrides.status,
    created_at: overrides.created_at ?? FIXED_NOW,
    ...(overrides.result !== undefined ? { result: overrides.result } : {}),
  };
}

function makeClient(sleeps: number[] = []): XbergClient {
  const recorded = sleeps;
  return new XbergClient({
    apiKey: "k",
    baseUrl: TEST_BASE_URL,
    sleep: async (ms) => {
      recorded.push(ms);
    },
  });
}

describe("getJob", () => {
  it("fetches and returns the job record", async () => {
    server.use(
      http.get(url("/v1/jobs/job-1"), () =>
        HttpResponse.json(makeJob({ id: "job-1", status: "completed" }), { status: 200 }),
      ),
    );
    const client = makeClient();
    const job = await client.getJob("job-1");
    expect(job.id).toBe("job-1");
    expect(job.status).toBe("completed");
  });

  it("URL-encodes the job ID path segment", async () => {
    let receivedPath: string | null = null;
    server.use(
      http.get(url("/v1/jobs/:id"), ({ params, request }) => {
        receivedPath = new URL(request.url).pathname;
        return HttpResponse.json(makeJob({ id: String(params["id"]), status: "completed" }), {
          status: 200,
        });
      }),
    );
    const client = makeClient();
    await client.getJob("a/b c");
    expect(receivedPath).toBe("/v1/jobs/a%2Fb%20c");
  });
});

describe("cancelJob", () => {
  it("issues DELETE /v1/jobs/{id} and resolves to undefined on 204", async () => {
    let receivedMethod = "";
    let receivedPath: string | null = null;
    server.use(
      http.delete(url("/v1/jobs/:id"), ({ request }) => {
        receivedMethod = request.method;
        receivedPath = new URL(request.url).pathname;
        return new HttpResponse(null, { status: 204 });
      }),
    );
    const result = await makeClient().cancelJob("job-1");
    expect(result).toBeUndefined();
    expect(receivedMethod).toBe("DELETE");
    expect(receivedPath).toBe("/v1/jobs/job-1");
  });

  it("URL-encodes the job ID path segment", async () => {
    let receivedPath: string | null = null;
    server.use(
      http.delete(url("/v1/jobs/:id"), ({ request }) => {
        receivedPath = new URL(request.url).pathname;
        return new HttpResponse(null, { status: 204 });
      }),
    );
    await makeClient().cancelJob("a/b c");
    expect(receivedPath).toBe("/v1/jobs/a%2Fb%20c");
  });

  it("resolves to undefined even when the job is already terminal (idempotent 204)", async () => {
    server.use(http.delete(url("/v1/jobs/job-2"), () => new HttpResponse(null, { status: 204 })));
    await expect(makeClient().cancelJob("job-2")).resolves.toBeUndefined();
  });

  it("throws NotFoundError when the job does not exist", async () => {
    server.use(http.delete(url("/v1/jobs/missing"), () => HttpResponse.json({ error: "not found" }, { status: 404 })));
    await expect(makeClient().cancelJob("missing")).rejects.toBeInstanceOf(NotFoundError);
  });
});

describe("getJobResult", () => {
  const RESULT_BODY: JobResult = {
    job_id: "job-1",
    status: "partial_success",
    results: [{ content: "# Title", metadata: { pages: 2 }, structured_output: { invoice_id: "INV-7" } }],
    child_job_ids: ["job-1-a"],
    completed_at: "2026-05-09T10:05:00Z",
    errors: [
      {
        error_type: "unsupported_mime_type",
        message: "page 3 skipped",
        code: 415,
        index: 2,
        source: "ocr",
      },
    ],
  };

  it("parses the response as a JobResult with a populated results array", async () => {
    server.use(http.get(url("/v1/jobs/job-1/result"), () => HttpResponse.json(RESULT_BODY, { status: 200 })));
    const result: JobResult = await makeClient().getJobResult("job-1");

    expect(result.job_id).toBe("job-1");
    expect(result.status).toBe("partial_success");
    expect(result.results).toHaveLength(1);
    expect(result.results?.[0]).toEqual({
      content: "# Title",
      metadata: { pages: 2 },
      structured_output: { invoice_id: "INV-7" },
    });
    expect(result.child_job_ids).toEqual(["job-1-a"]);
    expect(result.completed_at).toBe("2026-05-09T10:05:00Z");
    expect(result.errors?.[0]).toEqual({
      error_type: "unsupported_mime_type",
      message: "page 3 skipped",
      code: 415,
      index: 2,
      source: "ocr",
    });
  });

  it("is ungated: it works against the pro target as well as enterprise", async () => {
    const proUrl = "https://pro.example.test";
    server.use(http.get(`${proUrl}/v1/jobs/job-1/result`, () => HttpResponse.json(RESULT_BODY, { status: 200 })));
    const client = new XbergClient({ apiKey: "k", baseUrl: proUrl, target: "pro" });
    const result = await client.getJobResult("job-1");
    expect(result.results).toHaveLength(1);
  });

  it("URL-encodes the job ID path segment", async () => {
    let receivedPath: string | null = null;
    server.use(
      http.get(url("/v1/jobs/:id/result"), ({ request }) => {
        receivedPath = new URL(request.url).pathname;
        return HttpResponse.json({ job_id: "a/b c", status: "completed" }, { status: 200 });
      }),
    );
    await makeClient().getJobResult("a/b c");
    expect(receivedPath).toBe("/v1/jobs/a%2Fb%20c/result");
  });
});

describe("waitForJob", () => {
  it("returns immediately when the first poll already shows completed", async () => {
    server.use(
      http.get(url("/v1/jobs/job-1"), () =>
        HttpResponse.json(makeJob({ id: "job-1", status: "completed" }), { status: 200 }),
      ),
    );
    const client = makeClient();
    const result = await client.waitForJob("job-1");
    expect(result.status).toBe("completed");
  });

  it("polls until the job reaches a terminal status", async () => {
    let calls = 0;
    server.use(
      http.get(url("/v1/jobs/job-1"), () => {
        calls += 1;
        const status: Job["status"] = calls < 3 ? "processing" : "completed";
        return HttpResponse.json(makeJob({ id: "job-1", status }), { status: 200 });
      }),
    );
    const client = makeClient();
    const result = await client.waitForJob("job-1", { pollIntervalMs: 5 });
    expect(result.status).toBe("completed");
    expect(calls).toBe(3);
  });

  it("treats partial_success as a successful terminal status", async () => {
    server.use(
      http.get(url("/v1/jobs/job-1"), () =>
        HttpResponse.json(makeJob({ id: "job-1", status: "partial_success" }), { status: 200 }),
      ),
    );
    const client = makeClient();
    const result = await client.waitForJob("job-1");
    expect(result.status).toBe("partial_success");
  });

  it("throws XbergError when the job ends as failed", async () => {
    server.use(
      http.get(url("/v1/jobs/job-1"), () =>
        HttpResponse.json(makeJob({ id: "job-1", status: "failed" }), { status: 200 }),
      ),
    );
    const client = makeClient();
    await expect(client.waitForJob("job-1")).rejects.toThrow(/failed/);
  });

  it("throws XbergError when the job ends as cancelled", async () => {
    server.use(
      http.get(url("/v1/jobs/job-1"), () =>
        HttpResponse.json(makeJob({ id: "job-1", status: "cancelled" }), { status: 200 }),
      ),
    );
    const client = makeClient();
    await expect(client.waitForJob("job-1")).rejects.toThrow(/cancelled/);
  });

  it("throws TimeoutError when the wait deadline is exceeded", async () => {
    server.use(
      http.get(url("/v1/jobs/job-1"), () =>
        HttpResponse.json(makeJob({ id: "job-1", status: "processing" }), { status: 200 }),
      ),
    );
    const client = makeClient();
    await expect(client.waitForJob("job-1", { timeoutMs: 1, pollIntervalMs: 1 })).rejects.toBeInstanceOf(TimeoutError);
  });

  it("uses exponential backoff between polls by default", async () => {
    const recorded: number[] = [];
    let calls = 0;
    server.use(
      http.get(url("/v1/jobs/job-1"), () => {
        calls += 1;
        const status: Job["status"] = calls < 4 ? "processing" : "completed";
        return HttpResponse.json(makeJob({ id: "job-1", status }), { status: 200 });
      }),
    );
    const client = new XbergClient({
      apiKey: "k",
      baseUrl: TEST_BASE_URL,
      sleep: async (ms) => {
        recorded.push(ms);
      },
    });
    await client.waitForJob("job-1", { pollIntervalMs: 10 });
    expect(recorded).toEqual([10, 20, 40]);
  });

  it("uses constant intervals when backoff: 'constant' is set", async () => {
    const recorded: number[] = [];
    let calls = 0;
    server.use(
      http.get(url("/v1/jobs/job-1"), () => {
        calls += 1;
        const status: Job["status"] = calls < 4 ? "processing" : "completed";
        return HttpResponse.json(makeJob({ id: "job-1", status }), { status: 200 });
      }),
    );
    const client = new XbergClient({
      apiKey: "k",
      baseUrl: TEST_BASE_URL,
      sleep: async (ms) => {
        recorded.push(ms);
      },
    });
    await client.waitForJob("job-1", { pollIntervalMs: 10, backoff: "constant" });
    expect(recorded).toEqual([10, 10, 10]);
  });

  it("waitForJobs resolves all jobs in parallel", async () => {
    const completedFor = new Set<string>();
    server.use(
      http.get(url("/v1/jobs/:id"), ({ params }) => {
        const id = String(params["id"]);
        completedFor.add(id);
        return HttpResponse.json(makeJob({ id, status: "completed" }), { status: 200 });
      }),
    );
    const client = makeClient();
    const results = await client.waitForJobs(["a", "b", "c"]);
    expect(results.map((r) => r.id).sort()).toEqual(["a", "b", "c"]);
    expect([...completedFor].sort()).toEqual(["a", "b", "c"]);
  });
});
