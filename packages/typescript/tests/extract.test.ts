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

describe("extract per-file configs", () => {
  /**
   * Capture the raw multipart body of the next `POST /v1/extract`, with the
   * random boundary replaced by a fixed token so a literal byte-for-byte
   * expectation is possible at all.
   */
  function captureExtractBody(jobIds: readonly string[]): () => string {
    let raw = "";
    server.use(
      http.post(url("/v1/extract"), async ({ request }) => {
        const boundary = (request.headers.get("content-type") ?? "").split("boundary=")[1] ?? "";
        raw = (await request.text()).replaceAll(boundary, "BOUNDARY");
        return HttpResponse.json({ job_ids: jobIds, status: "pending" }, { status: 202 });
      }),
    );
    return () => raw;
  }

  function pdf(name: string, body: string): File {
    return new File([body], name, { type: "application/pdf" });
  }

  it("sends a per-file config as the config-<filename> part", async () => {
    const body = captureExtractBody(["job-A"]);

    await makeClient().extract({
      file: pdf("invoice.pdf", "body-0"),
      options: { extraction_config: { disable_ocr: true } },
      config: { force_ocr: true },
    });

    expect(body()).toContain('name="config-invoice.pdf"\r\n\r\n{"force_ocr":true}');
    // The batch-level part goes out untouched next to it: resolving the
    // precedence between the two is the server's job, not the client's.
    expect(body()).toContain('{"extraction_config":{"disable_ocr":true}}');
  });

  it("sends one config part per file, keyed on that file's name", async () => {
    const body = captureExtractBody(["job-A", "job-B"]);

    await makeClient().extractBatch({
      files: [pdf("scanned.pdf", "body-0"), pdf("digital.pdf", "body-1")],
      configs: [{ force_ocr: true }, { disable_ocr: true }],
    });

    expect(body()).toContain('name="config-scanned.pdf"\r\n\r\n{"force_ocr":true}');
    expect(body()).toContain('name="config-digital.pdf"\r\n\r\n{"disable_ocr":true}');
  });

  it("omits the config part for a file whose entry is null", async () => {
    const body = captureExtractBody(["job-A", "job-B"]);

    await makeClient().extractBatch({
      files: [pdf("scanned.pdf", "body-0"), pdf("digital.pdf", "body-1")],
      configs: [{ force_ocr: true }, null],
    });

    expect(body()).toContain('name="config-scanned.pdf"');
    expect(body()).not.toContain('name="config-digital.pdf"');
  });

  /**
   * Pins the exact bytes of a request carrying no per-file overrides, so adding
   * them provably moved nothing for existing callers. The whole body is asserted
   * rather than just the absence of a `config-` part: a reordered, duplicated or
   * re-encoded part would be as much of a regression as a spurious one.
   */
  it("sends the body it always sent when no configs are given", async () => {
    const body = captureExtractBody(["job-A", "job-B"]);

    await makeClient().extractBatch({
      files: [pdf("scanned.pdf", "body-0"), pdf("digital.pdf", "body-1")],
      options: { extraction_config: { disable_ocr: true } },
    });

    expect(body()).toBe(
      '--BOUNDARY\r\nContent-Disposition: form-data; name="file"; filename="scanned.pdf"\r\n' +
        "Content-Type: application/pdf\r\n\r\nbody-0\r\n" +
        '--BOUNDARY\r\nContent-Disposition: form-data; name="file"; filename="digital.pdf"\r\n' +
        "Content-Type: application/pdf\r\n\r\nbody-1\r\n" +
        '--BOUNDARY\r\nContent-Disposition: form-data; name="options"\r\n\r\n' +
        '{"extraction_config":{"disable_ocr":true}}\r\n' +
        "--BOUNDARY--\r\n",
    );
  });

  /**
   * The one case this transport cannot express: a `config-<filename>` part is
   * keyed on the name, so two different overrides under one name have a single
   * slot between them. Throwing is the point — letting the later `append` win
   * would drop the other with nothing the caller could observe.
   */
  it("rejects the same filename carrying different configs", async () => {
    server.use(
      http.post(url("/v1/extract"), () => {
        throw new Error("request was sent despite the conflict");
      }),
    );

    await expect(
      makeClient().extractBatch({
        files: [pdf("invoice.pdf", "one"), pdf("invoice.pdf", "two")],
        configs: [{ force_ocr: true }, { disable_ocr: true }],
      }),
    ).rejects.toThrow(/per-file config conflict for "invoice\.pdf"/);
  });

  it("allows the same filename when the configs match, sending one part", async () => {
    const body = captureExtractBody(["job-A", "job-B"]);

    await makeClient().extractBatch({
      files: [pdf("invoice.pdf", "one"), pdf("invoice.pdf", "two")],
      configs: [{ force_ocr: true }, { force_ocr: true }],
    });

    expect(body().split('name="config-invoice.pdf"').length - 1).toBe(1);
  });

  it("rejects a configs array that is not the same length as files", async () => {
    server.use(
      http.post(url("/v1/extract"), () => {
        throw new Error("request was sent despite the length mismatch");
      }),
    );

    await expect(
      makeClient().extractBatch({
        files: [pdf("scanned.pdf", "body-0"), pdf("digital.pdf", "body-1")],
        configs: [{ force_ocr: true }],
      }),
    ).rejects.toThrow(/configs has 1 entries but 2 files were supplied/);
  });
});
