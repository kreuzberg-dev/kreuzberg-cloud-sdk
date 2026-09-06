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
    apiKey: "test-key",
    baseUrl: TEST_BASE_URL,
    sleep: async () => {},
  });
}

describe("extract", () => {
  it("posts a single file and returns a pending Job with the assigned id", async () => {
    let receivedAuth: string | null = null;
    let receivedContentType: string | null = null;
    server.use(
      http.post(url("/v1/extract"), ({ request }) => {
        receivedAuth = request.headers.get("authorization");
        receivedContentType = request.headers.get("content-type");
        return HttpResponse.json({ job_ids: ["job-123"], status: "pending" }, { status: 202 });
      }),
    );

    const client = makeClient();
    const job = await client.extract({
      file: new Blob([new Uint8Array([1, 2, 3])], { type: "application/pdf" }),
    });

    expect(job.id).toBe("job-123");
    expect(job.status).toBe("pending");
    expect(receivedAuth).toBe("Bearer test-key");
    expect(receivedContentType).toMatch(/^multipart\/form-data/);
  });

  it("accepts a File and preserves its filename in the multipart body", async () => {
    let receivedFilenames: string[] = [];
    server.use(
      http.post(url("/v1/extract"), async ({ request }) => {
        const form = await request.formData();
        receivedFilenames = form
          .getAll("file")
          .filter((v): v is File => v instanceof File)
          .map((f) => f.name);
        return HttpResponse.json({ job_ids: ["job-A"], status: "pending" }, { status: 202 });
      }),
    );

    const client = makeClient();
    const file = new File([new Uint8Array([10, 20])], "invoice.pdf", { type: "application/pdf" });
    await client.extract({ file });

    expect(receivedFilenames).toEqual(["invoice.pdf"]);
  });

  it("accepts a Uint8Array with default filename upload.bin", async () => {
    let filenames: string[] = [];
    server.use(
      http.post(url("/v1/extract"), async ({ request }) => {
        const form = await request.formData();
        filenames = form
          .getAll("file")
          .filter((v): v is File => v instanceof File)
          .map((f) => f.name);
        return HttpResponse.json({ job_ids: ["job-X"], status: "pending" }, { status: 202 });
      }),
    );

    const client = makeClient();
    await client.extract({ file: new Uint8Array([1, 2, 3, 4]) });
    expect(filenames).toEqual(["upload.bin"]);
  });

  it("accepts a wrapper { name, data } and uses the provided name", async () => {
    let filenames: string[] = [];
    let contentTypes: string[] = [];
    server.use(
      http.post(url("/v1/extract"), async ({ request }) => {
        const form = await request.formData();
        const files = form.getAll("file").filter((v): v is File => v instanceof File);
        filenames = files.map((f) => f.name);
        contentTypes = files.map((f) => f.type);
        return HttpResponse.json({ job_ids: ["job-X"], status: "pending" }, { status: 202 });
      }),
    );

    const client = makeClient();
    await client.extract({ file: { name: "report.md", data: new Uint8Array([1]) } });
    expect(filenames).toEqual(["report.md"]);
    expect(contentTypes).toEqual(["text/markdown"]);
  });

  it("serializes options as a JSON multipart part", async () => {
    let optionsField: string | null = null;
    server.use(
      http.post(url("/v1/extract"), async ({ request }) => {
        const form = await request.formData();
        const value = form.get("options");
        optionsField = typeof value === "string" ? value : null;
        return HttpResponse.json({ job_ids: ["job-x"], status: "pending" }, { status: 202 });
      }),
    );

    const client = makeClient();
    await client.extract({
      file: new Blob(["hi"]),
      options: { extraction_config: { output_format: "markdown" } },
    });

    expect(optionsField).not.toBeNull();
    expect(JSON.parse(optionsField as unknown as string)).toEqual({
      extraction_config: { output_format: "markdown" },
    });
  });

  it("omits the webhook part entirely when none is provided", async () => {
    let hasWebhookField = true;
    server.use(
      http.post(url("/v1/extract"), async ({ request }) => {
        const form = await request.formData();
        hasWebhookField = form.has("webhook");
        return HttpResponse.json({ job_ids: ["job-w"], status: "pending" }, { status: 202 });
      }),
    );

    const client = makeClient();
    await client.extract({ file: new Blob(["hi"]) });
    expect(hasWebhookField).toBe(false);
  });

  it("forwards an explicit webhook config in the multipart body", async () => {
    let webhookField: string | null = null;
    server.use(
      http.post(url("/v1/extract"), async ({ request }) => {
        const form = await request.formData();
        const value = form.get("webhook");
        webhookField = typeof value === "string" ? value : null;
        return HttpResponse.json({ job_ids: ["job-w"], status: "pending" }, { status: 202 });
      }),
    );

    const client = makeClient();
    await client.extract({
      file: new Blob(["hi"]),
      webhook: { url: "https://example.com/hook", secret: "shh" },
    });

    expect(webhookField).not.toBeNull();
    expect(JSON.parse(webhookField as unknown as string)).toEqual({
      url: "https://example.com/hook",
      secret: "shh",
    });
  });

  it("extractBatch posts multiple files in a single request", async () => {
    let fileCount = 0;
    server.use(
      http.post(url("/v1/extract"), async ({ request }) => {
        const form = await request.formData();
        fileCount = form.getAll("file").length;
        return HttpResponse.json({ job_ids: ["job-1", "job-2", "job-3"], status: "pending" }, { status: 202 });
      }),
    );

    const client = makeClient();
    const jobs = await client.extractBatch({
      files: [new Blob(["a"]), new Blob(["b"]), new Blob(["c"])],
    });

    expect(fileCount).toBe(3);
    expect(jobs.map((j) => j.id)).toEqual(["job-1", "job-2", "job-3"]);
  });

  it("extractBatch throws when called with no files", async () => {
    const client = makeClient();
    await expect(client.extractBatch({ files: [] })).rejects.toThrow(/no files/);
  });

  it("extractBatch throws when the server returns fewer job IDs than files", async () => {
    server.use(
      http.post(url("/v1/extract"), () =>
        HttpResponse.json({ job_ids: ["only-one"], status: "pending" }, { status: 202 }),
      ),
    );

    const client = makeClient();
    await expect(client.extractBatch({ files: [new Blob(["a"]), new Blob(["b"])] })).rejects.toThrow(/job IDs/);
  });

  it("accepts a wrapper { name, data } where data is already a Blob", async () => {
    let filenames: string[] = [];
    server.use(
      http.post(url("/v1/extract"), async ({ request }) => {
        const form = await request.formData();
        filenames = form
          .getAll("file")
          .filter((v): v is File => v instanceof File)
          .map((f) => f.name);
        return HttpResponse.json({ job_ids: ["job-blob"], status: "pending" }, { status: 202 });
      }),
    );

    const client = makeClient();
    await client.extract({ file: { name: "sheet.csv", data: new Blob(["a,b"], { type: "text/csv" }) } });
    expect(filenames).toEqual(["sheet.csv"]);
  });

  it("assigns Job.filename from the wrapper's name field", async () => {
    server.use(
      http.post(url("/v1/extract"), () =>
        HttpResponse.json({ job_ids: ["job-name"], status: "pending" }, { status: 202 }),
      ),
    );
    const client = makeClient();
    const job = await client.extract({ file: { name: "report.md", data: new Uint8Array([1]) } });
    expect(job.filename).toBe("report.md");
  });

  it("assigns Job.filename to upload.bin for a wrapper without a name", async () => {
    server.use(
      http.post(url("/v1/extract"), () =>
        HttpResponse.json({ job_ids: ["job-noname"], status: "pending" }, { status: 202 }),
      ),
    );
    const client = makeClient();
    const job = await client.extract({ file: { data: new Uint8Array([1]) } });
    expect(job.filename).toBe("upload.bin");
  });

  it("assigns Job.filename to upload.bin for a raw Blob", async () => {
    server.use(
      http.post(url("/v1/extract"), () =>
        HttpResponse.json({ job_ids: ["job-blob2"], status: "pending" }, { status: 202 }),
      ),
    );
    const client = makeClient();
    const job = await client.extract({ file: new Blob(["hi"]) });
    expect(job.filename).toBe("upload.bin");
  });

  it("assigns Job.filename from a File instance's name", async () => {
    server.use(
      http.post(url("/v1/extract"), () =>
        HttpResponse.json({ job_ids: ["job-file"], status: "pending" }, { status: 202 }),
      ),
    );
    const client = makeClient();
    const job = await client.extract({ file: new File([new Uint8Array([1])], "invoice.pdf") });
    expect(job.filename).toBe("invoice.pdf");
  });

  it.each([
    ["data.csv", "text/csv"],
    ["notes.md", "text/markdown"],
    ["doc.pdf", "application/pdf"],
    ["readme.txt", "text/plain"],
    ["contract.docx", "application/vnd.openxmlformats-officedocument.wordprocessingml.document"],
    ["archive.zip", "application/octet-stream"],
  ])("guesses the mime type %s -> %s for a wrapper with no explicit mimeType", async (filename, expectedMime) => {
    let contentTypes: string[] = [];
    server.use(
      http.post(url("/v1/extract"), async ({ request }) => {
        const form = await request.formData();
        contentTypes = form
          .getAll("file")
          .filter((v): v is File => v instanceof File)
          .map((f) => f.type);
        return HttpResponse.json({ job_ids: ["job-mime"], status: "pending" }, { status: 202 });
      }),
    );
    const client = makeClient();
    await client.extract({ file: { name: filename, data: new Uint8Array([1]) } });
    expect(contentTypes).toEqual([expectedMime]);
  });

  it("honors an explicit mimeType override on the wrapper", async () => {
    let contentTypes: string[] = [];
    server.use(
      http.post(url("/v1/extract"), async ({ request }) => {
        const form = await request.formData();
        contentTypes = form
          .getAll("file")
          .filter((v): v is File => v instanceof File)
          .map((f) => f.type);
        return HttpResponse.json({ job_ids: ["job-override"], status: "pending" }, { status: 202 });
      }),
    );
    const client = makeClient();
    await client.extract({ file: { name: "data.csv", data: new Uint8Array([1]), mimeType: "application/custom" } });
    expect(contentTypes).toEqual(["application/custom"]);
  });
});
