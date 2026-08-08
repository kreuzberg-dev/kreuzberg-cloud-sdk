import { HttpResponse, http } from "msw";
import { afterAll, afterEach, beforeAll, describe, expect, it } from "vitest";
import { XbergClient } from "../src/client.js";
import { TEST_BASE_URL, createTestServer, url } from "./_helpers.js";

const server = createTestServer();

beforeAll(() => server.listen({ onUnhandledRequest: "error" }));
afterEach(() => server.resetHandlers());
afterAll(() => server.close());

function makeClient(): XbergClient {
  return new XbergClient({
    apiKey: "k",
    baseUrl: TEST_BASE_URL,
    target: "enterprise",
    sleep: async () => {},
  });
}

describe("enterprise-only surface", () => {
  it("versions lists a document's versions", async () => {
    server.use(
      http.get(url("/v1/documents/doc-1/versions"), () => HttpResponse.json([{ version_id: "v1" }], { status: 200 })),
    );
    const result = await makeClient().versions("doc-1");
    expect(result).toEqual([{ version_id: "v1" }]);
  });

  it("diff fetches a diff without query params", async () => {
    let receivedSearch = "";
    server.use(
      http.get(url("/v1/documents/doc-1/diff"), ({ request }) => {
        receivedSearch = new URL(request.url).search;
        return HttpResponse.json({ diff: "none" }, { status: 200 });
      }),
    );
    const result = await makeClient().diff("doc-1");
    expect(result).toEqual({ diff: "none" });
    expect(receivedSearch).toBe("");
  });

  it("diff forwards query params", async () => {
    let receivedSearch = "";
    server.use(
      http.get(url("/v1/documents/doc-1/diff"), ({ request }) => {
        receivedSearch = new URL(request.url).search;
        return HttpResponse.json({ diff: "some" }, { status: 200 });
      }),
    );
    const result = await makeClient().diff("doc-1", { from: "a", to: "b" });
    expect(result).toEqual({ diff: "some" });
    expect(receivedSearch).toBe("?from=a&to=b");
  });

  it("getDiffJob polls a diff job", async () => {
    server.use(
      http.get(url("/v1/documents/doc-1/diff/job-1"), () => HttpResponse.json({ diff: "done" }, { status: 200 })),
    );
    const result = await makeClient().getDiffJob("doc-1", "job-1");
    expect(result).toEqual({ diff: "done" });
  });

  it("presets lists read-only managed presets", async () => {
    server.use(
      http.get(url("/v1/presets"), () => HttpResponse.json([{ id: "p1", name: "Preset One" }], { status: 200 })),
    );
    const result = await makeClient().presets();
    expect(result).toEqual([{ id: "p1", name: "Preset One" }]);
  });

  it("getPreset fetches a single managed preset", async () => {
    server.use(
      http.get(url("/v1/presets/p1"), () => HttpResponse.json({ id: "p1", name: "Preset One" }, { status: 200 })),
    );
    const result = await makeClient().getPreset("p1");
    expect(result).toEqual({ id: "p1", name: "Preset One" });
  });

  it("presignUpload requests a presigned upload URL", async () => {
    let receivedBody: unknown;
    server.use(
      http.post(url("/v1/uploads/presign"), async ({ request }) => {
        receivedBody = await request.json();
        return HttpResponse.json({ upload_url: "https://upload.example.test", upload_id: "u1" }, { status: 200 });
      }),
    );
    const result = await makeClient().presignUpload({ filename: "x.pdf", content_type: "application/pdf" });
    expect(result).toEqual({ upload_url: "https://upload.example.test", upload_id: "u1" });
    expect(receivedBody).toEqual({ filename: "x.pdf", content_type: "application/pdf" });
  });

  it("confirmUpload confirms a presigned upload", async () => {
    let receivedBody: unknown;
    server.use(
      http.post(url("/v1/uploads/confirm"), async ({ request }) => {
        receivedBody = await request.json();
        return HttpResponse.json({ document_id: "doc-9" }, { status: 200 });
      }),
    );
    const result = await makeClient().confirmUpload({ upload_id: "u1" });
    expect(result).toEqual({ document_id: "doc-9" });
    expect(receivedBody).toEqual({ upload_id: "u1" });
  });

  it("usage fetches usage/metering data with query params", async () => {
    let receivedSearch = "";
    server.use(
      http.get(url("/v1/usage"), ({ request }) => {
        receivedSearch = new URL(request.url).search;
        return HttpResponse.json({ pages: 12 }, { status: 200 });
      }),
    );
    const result = await makeClient().usage({ from: "2026-01-01" });
    expect(result).toEqual({ pages: 12 });
    expect(receivedSearch).toBe("?from=2026-01-01");
  });

  it("audit fetches audit-log entries", async () => {
    server.use(http.get(url("/v1/audit"), () => HttpResponse.json({ entries: [], total: 0 }, { status: 200 })));
    const result = await makeClient().audit({ action: "extract", limit: 10, offset: 0 });
    expect(result).toEqual({ entries: [], total: 0 });
  });

  it("listJobs lists jobs with pagination params", async () => {
    server.use(http.get(url("/v1/jobs"), () => HttpResponse.json({ jobs: [], total: 0 }, { status: 200 })));
    const result = await makeClient().listJobs({ limit: 5, offset: 10 });
    expect(result).toEqual({ jobs: [], total: 0 });
  });
});
