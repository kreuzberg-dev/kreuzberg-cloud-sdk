import { HttpResponse, http } from "msw";
import { afterAll, afterEach, beforeAll, describe, expect, it } from "vitest";
import { XbergClient } from "../src/client.js";
import { createTestServer } from "./_helpers.js";

const server = createTestServer();

beforeAll(() => server.listen({ onUnhandledRequest: "error" }));
afterEach(() => server.resetHandlers());
afterAll(() => server.close());

const PRO_URL = "https://pro.example.test";

function makeClient(): XbergClient {
  return new XbergClient({
    apiKey: "k",
    baseUrl: PRO_URL,
    target: "pro",
    sleep: async () => {},
  });
}

describe("pro-only surface", () => {
  it("authConfig fetches accepted auth methods", async () => {
    server.use(http.get(`${PRO_URL}/auth/config`, () => HttpResponse.json({ methods: ["oidc"] }, { status: 200 })));
    const result = await makeClient().authConfig();
    expect(result).toEqual({ methods: ["oidc"] });
  });

  it("createSavedPreset creates a saved preset", async () => {
    let receivedBody: unknown;
    server.use(
      http.post(`${PRO_URL}/v1/saved-presets`, async ({ request }) => {
        receivedBody = await request.json();
        return HttpResponse.json({ id: "preset-1" }, { status: 201 });
      }),
    );
    const result = await makeClient().createSavedPreset({ name: "My Preset" });
    expect(result).toEqual({ id: "preset-1" });
    expect(receivedBody).toEqual({ name: "My Preset" });
  });

  it("deleteSavedPreset deletes a saved preset by id", async () => {
    let receivedPath = "";
    server.use(
      http.delete(`${PRO_URL}/v1/saved-presets/:id`, ({ request }) => {
        receivedPath = new URL(request.url).pathname;
        return new HttpResponse(null, { status: 204 });
      }),
    );
    const result = await makeClient().deleteSavedPreset("preset-1");
    expect(result).toBeUndefined();
    expect(receivedPath).toBe("/v1/saved-presets/preset-1");
  });

  it("getRagConfig fetches a project's RAG config", async () => {
    server.use(
      http.get(`${PRO_URL}/v1/projects/proj-1/rag-config`, () => HttpResponse.json({ enabled: true }, { status: 200 })),
    );
    const result = await makeClient().getRagConfig("proj-1");
    expect(result).toEqual({ enabled: true });
  });

  it("setRagConfig updates a project's RAG config", async () => {
    let receivedBody: unknown;
    server.use(
      http.put(`${PRO_URL}/v1/projects/proj-1/rag-config`, async ({ request }) => {
        receivedBody = await request.json();
        return HttpResponse.json({ enabled: false }, { status: 200 });
      }),
    );
    const result = await makeClient().setRagConfig("proj-1", { enabled: false });
    expect(result).toEqual({ enabled: false });
    expect(receivedBody).toEqual({ enabled: false });
  });
});
