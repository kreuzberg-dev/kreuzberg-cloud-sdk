import { HttpResponse, http } from "msw";
import { afterAll, afterEach, beforeAll, describe, expect, it } from "vitest";
import { XbergClient } from "../src/client.js";
import { TEST_BASE_URL, createTestServer, url } from "./_helpers.js";

const server = createTestServer();

beforeAll(() => server.listen({ onUnhandledRequest: "error" }));
afterEach(() => server.resetHandlers());
afterAll(() => server.close());

const PRO_URL = "https://pro.example.test";

function enterpriseClient(): XbergClient {
  return new XbergClient({
    apiKey: "k",
    baseUrl: TEST_BASE_URL,
    target: "enterprise",
    sleep: async () => {},
  });
}

function proClient(): XbergClient {
  return new XbergClient({ apiKey: "k", baseUrl: PRO_URL, target: "pro", sleep: async () => {} });
}

describe("shared preset catalogue", () => {
  it("presets lists curated presets on the enterprise target", async () => {
    server.use(
      http.get(url("/v1/presets"), () => HttpResponse.json([{ id: "p1", name: "Preset One" }], { status: 200 })),
    );
    const result = await enterpriseClient().presets();
    expect(result).toEqual([{ id: "p1", name: "Preset One" }]);
  });

  it("presets is ungated and works against the pro target", async () => {
    server.use(
      http.get(`${PRO_URL}/v1/presets`, () => HttpResponse.json([{ id: "p1", name: "Preset One" }], { status: 200 })),
    );
    const result = await proClient().presets();
    expect(result).toEqual([{ id: "p1", name: "Preset One" }]);
  });

  it("getPreset fetches a single preset on the enterprise target", async () => {
    server.use(
      http.get(url("/v1/presets/p1"), () => HttpResponse.json({ id: "p1", name: "Preset One" }, { status: 200 })),
    );
    const result = await enterpriseClient().getPreset("p1");
    expect(result).toEqual({ id: "p1", name: "Preset One" });
  });

  it("getPreset is ungated and works against the pro target", async () => {
    server.use(
      http.get(`${PRO_URL}/v1/presets/p1`, () => HttpResponse.json({ id: "p1", name: "Preset One" }, { status: 200 })),
    );
    const result = await proClient().getPreset("p1");
    expect(result).toEqual({ id: "p1", name: "Preset One" });
  });

  it("getPresetSample returns the raw sample bytes", async () => {
    let receivedPath = "";
    server.use(
      http.get(url("/v1/presets/p1/sample/:name"), ({ request }) => {
        receivedPath = new URL(request.url).pathname;
        return HttpResponse.arrayBuffer(new Uint8Array([0x25, 0x50, 0x44, 0x46]).buffer, {
          status: 200,
          headers: { "content-type": "application/octet-stream" },
        });
      }),
    );
    const bytes = await enterpriseClient().getPresetSample("p1", "invoice sample.pdf");
    expect(bytes).toBeInstanceOf(Uint8Array);
    expect([...bytes]).toEqual([0x25, 0x50, 0x44, 0x46]);
    expect(receivedPath).toBe("/v1/presets/p1/sample/invoice%20sample.pdf");
  });

  it("getPresetSample is ungated and works against the pro target", async () => {
    server.use(
      http.get(`${PRO_URL}/v1/presets/p1/sample/s.pdf`, () =>
        HttpResponse.arrayBuffer(new Uint8Array([1, 2]).buffer, { status: 200 }),
      ),
    );
    const bytes = await proClient().getPresetSample("p1", "s.pdf");
    expect([...bytes]).toEqual([1, 2]);
  });
});
