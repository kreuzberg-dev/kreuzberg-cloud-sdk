import { describe, expect, it } from "vitest";
import { createClient } from "../src/client.js";

describe("createClient", () => {
  it("returns a client object with HTTP method functions", () => {
    const client = createClient({ apiKey: "test-key" });
    expect(typeof client.GET).toBe("function");
    expect(typeof client.POST).toBe("function");
  });

  it("accepts a custom base URL", () => {
    const client = createClient({ baseUrl: "https://api.example.test", apiKey: "k" });
    expect(client).toBeDefined();
  });

  it("accepts a custom fetch implementation and uses it for requests", async () => {
    let called = false;
    let receivedAuth: string | null = null;
    const customFetch: typeof fetch = async (input) => {
      called = true;
      receivedAuth = input instanceof Request ? input.headers.get("authorization") : null;
      return new Response("{}", { status: 200, headers: { "content-type": "application/json" } });
    };
    const client = createClient({ apiKey: "test-key", fetch: customFetch });
    await client.GET("/v1/jobs");
    expect(called).toBe(true);
    expect(receivedAuth).toBe("Bearer test-key");
  });

  it("works without an API key", () => {
    const client = createClient();
    expect(typeof client.GET).toBe("function");
  });

  it("defaults the base URL to https://api.xberg.io", async () => {
    let receivedUrl = "";
    const customFetch: typeof fetch = async (input) => {
      receivedUrl = input instanceof Request ? input.url : input.toString();
      return new Response("{}", { status: 200, headers: { "content-type": "application/json" } });
    };
    const client = createClient({ fetch: customFetch });
    await client.GET("/v1/jobs");
    expect(receivedUrl).toBe("https://api.xberg.io/v1/jobs");
  });
});
