import { HttpResponse, http } from "msw";
import { afterAll, afterEach, beforeAll, describe, expect, it } from "vitest";
import { XbergClient } from "../src/client.js";
import { XbergError } from "../src/errors.js";
import { createTestServer } from "./_helpers.js";

const server = createTestServer();

beforeAll(() => server.listen({ onUnhandledRequest: "error" }));
afterEach(() => server.resetHandlers());
afterAll(() => server.close());

const PRO_URL = "https://pro.example.test";
const ENTERPRISE_URL = "https://api.test.enterprise.xberg.io";

/** A fetch stub that records request URLs and returns a canned JSON body. */
function recordingFetch(): { fetchImpl: typeof fetch; urls: string[] } {
  const urls: string[] = [];
  const fetchImpl = (async (input: RequestInfo | URL): Promise<Response> => {
    urls.push(typeof input === "string" ? input : input.toString());
    return new Response(JSON.stringify({ collections: [] }), {
      status: 200,
      headers: { "content-type": "application/json" },
    });
  }) as typeof fetch;
  return { fetchImpl, urls };
}

// -- base-url policy ----------------------------------------------------------

describe("base-url policy", () => {
  it("defaults the base URL to https://api.xberg.io for the enterprise target", async () => {
    const { fetchImpl, urls } = recordingFetch();
    const client = new XbergClient({ apiKey: "k", target: "enterprise", fetch: fetchImpl });
    await client.listRagCollections();
    expect(urls[0]).toBe("https://api.xberg.io/v1/rag/collections");
  });

  it("defaults to the enterprise base URL when no target is given", async () => {
    const { fetchImpl, urls } = recordingFetch();
    const client = new XbergClient({ apiKey: "k", fetch: fetchImpl });
    await client.listRagCollections();
    expect(urls[0]).toBe("https://api.xberg.io/v1/rag/collections");
  });

  it("throws a clear error when target is pro and no base URL is provided", () => {
    expect(() => new XbergClient({ target: "pro" })).toThrow(XbergError);
    expect(() => new XbergClient({ target: "pro" })).toThrow(/no default base URL/);
  });

  it("accepts an explicit pro base URL and strips a trailing slash", async () => {
    const { fetchImpl, urls } = recordingFetch();
    const client = new XbergClient({ apiKey: "k", target: "pro", baseUrl: `${PRO_URL}/`, fetch: fetchImpl });
    await client.listRagCollections();
    expect(urls[0]).toBe(`${PRO_URL}/v1/rag/collections`);
  });
});

// -- tier gating (explicit target) --------------------------------------------

describe("tier gating with an explicit target", () => {
  it("rejects a pro-only method on the enterprise tier without an HTTP call", async () => {
    const client = new XbergClient({ apiKey: "k", baseUrl: ENTERPRISE_URL, target: "enterprise" });
    await expect(client.login({ id_token: "x" })).rejects.toThrow(/not available on the 'enterprise' tier/);
  });

  it("rejects an enterprise-only method on the pro tier without an HTTP call", async () => {
    const client = new XbergClient({ apiKey: "k", baseUrl: PRO_URL, target: "pro" });
    await expect(client.usage()).rejects.toThrow(/not available on the 'pro' tier/);
  });

  it("reaches the login endpoint on the pro tier", async () => {
    let called = false;
    server.use(
      http.post(`${PRO_URL}/auth/login`, () => {
        called = true;
        return HttpResponse.json({ token: "session-jwt" }, { status: 200 });
      }),
    );
    const client = new XbergClient({ apiKey: "k", baseUrl: PRO_URL, target: "pro" });
    const result = await client.login({ id_token: "verified" });
    expect(called).toBe(true);
    expect(result).toEqual({ token: "session-jwt" });
  });

  it("lists saved presets on the pro tier", async () => {
    server.use(
      http.get(`${PRO_URL}/v1/saved-presets`, () =>
        HttpResponse.json({ presets: [], total: 0, page: 0, limit: 0 }, { status: 200 }),
      ),
    );
    const client = new XbergClient({ apiKey: "k", baseUrl: PRO_URL, target: "pro" });
    expect(await client.listSavedPresets()).toEqual({ presets: [], total: 0, page: 0, limit: 0 });
  });

  it("fetches usage on the enterprise tier", async () => {
    server.use(http.get(`${ENTERPRISE_URL}/v1/usage`, () => HttpResponse.json({ pages: 42 }, { status: 200 })));
    const client = new XbergClient({ apiKey: "k", baseUrl: ENTERPRISE_URL, target: "enterprise" });
    expect(await client.usage()).toEqual({ pages: 42 });
  });
});

// -- tier gating (capability probe) -------------------------------------------

describe("tier gating via the /healthz capability probe", () => {
  it("discovers the tier from /healthz and caches it across calls", async () => {
    let healthzCalls = 0;
    server.use(
      http.get(`${ENTERPRISE_URL}/healthz`, () => {
        healthzCalls += 1;
        return HttpResponse.json({ status: "ok", tier: "enterprise" }, { status: 200 });
      }),
      http.get(`${ENTERPRISE_URL}/v1/usage`, () => HttpResponse.json({ pages: 7 }, { status: 200 })),
    );
    // target omitted -> tier is discovered from /healthz, then cached.
    const client = new XbergClient({ apiKey: "k", baseUrl: ENTERPRISE_URL });
    expect(await client.usage()).toEqual({ pages: 7 });
    expect(await client.usage()).toEqual({ pages: 7 });
    expect(healthzCalls).toBe(1);
  });

  it("gates a method when the probed tier does not match", async () => {
    server.use(
      http.get(`${ENTERPRISE_URL}/healthz`, () => HttpResponse.json({ status: "ok", tier: "pro" }, { status: 200 })),
    );
    const client = new XbergClient({ apiKey: "k", baseUrl: ENTERPRISE_URL });
    await expect(client.usage()).rejects.toThrow(/not available on the 'pro' tier/);
  });
});
