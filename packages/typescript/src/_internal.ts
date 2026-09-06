/**
 * Internal helpers for {@link XbergClient}: base-URL resolution, query-string
 * and backoff arithmetic, and the file-to-`Blob` conversion the multipart
 * request paths need. Not part of the public API — of the names here only
 * {@link FileLike} and {@link BackoffStrategy} are re-exported, via `client.ts`,
 * because they appear in public client signatures.
 */

import { XbergError } from "./errors.js";

export const DEFAULT_ENTERPRISE_BASE_URL = "https://api.xberg.io";
export const DEFAULT_RETRY_BACKOFF_CAP_MS = 30_000;
export const DEFAULT_BACKOFF_FACTOR = 2;

/**
 * Backoff strategy for retries and `waitForJob` polling.
 *
 * - `exponential` — interval doubles after every attempt, capped at 30s.
 * - `constant` — interval stays the same on every attempt.
 */
export type BackoffStrategy = "exponential" | "constant";

/** Which product the client targets. */
export type Target = "enterprise" | "pro";

/** Query-string values accepted by the internal request engine. */
export type QueryParams = Record<string, string | number | undefined>;

/** Anything the client accepts as an uploadable file. */
export type FileLike = File | Blob | Uint8Array | { name?: string; data: Blob | Uint8Array; mimeType?: string };

/**
 * Resolve the effective base URL, enforcing that Pro requires an explicit one.
 */
export function resolveBaseUrl(baseUrl: string | undefined, target: Target | undefined): string {
  if (baseUrl !== undefined) {
    return baseUrl.replace(/\/+$/, "");
  }
  if (target === "pro") {
    throw new XbergError(
      "Xberg Pro has no default base URL (its spec ships no servers block); pass baseUrl pointing at your Pro instance.",
      { status: 0, body: null },
    );
  }
  return DEFAULT_ENTERPRISE_BASE_URL;
}

/**
 * Resolve the base URL of the Enterprise control plane, defaulting to the data plane's.
 *
 * Enterprise runs the control plane (projects, API keys, integrations, RAG
 * config, members, invitations, managed webhooks, usage, analytics, billing) as
 * a second binary on its own origin; Pro serves it from the same one. The
 * default therefore has to be `baseUrl`, exactly as the console's
 * `NEXT_PUBLIC_BACKEND_API_URL` is same-origin unless set — anything else would
 * break every Pro control-plane call the moment this option existed.
 */
export function resolveControlPlaneBaseUrl(controlPlaneBaseUrl: string | undefined, baseUrl: string): string {
  if (controlPlaneBaseUrl !== undefined) {
    return controlPlaneBaseUrl.replace(/\/+$/, "");
  }
  return baseUrl;
}

export function defaultSleep(ms: number): Promise<void> {
  return new Promise((resolve) => {
    setTimeout(resolve, ms);
  });
}

export function buildQueryString(params: QueryParams | undefined): string {
  if (params === undefined) {
    return "";
  }
  const search = new URLSearchParams();
  for (const [key, value] of Object.entries(params)) {
    if (value !== undefined) {
      search.append(key, String(value));
    }
  }
  const query = search.toString();
  return query.length > 0 ? `?${query}` : "";
}

export function nextBackoffInterval(current: number, strategy: BackoffStrategy): number {
  if (strategy === "constant") {
    return current;
  }
  return Math.min(current * DEFAULT_BACKOFF_FACTOR, DEFAULT_RETRY_BACKOFF_CAP_MS);
}

export function parseRetryAfterHeader(value: string | null): number | undefined {
  if (value === null) {
    return undefined;
  }
  const seconds = Number(value);
  if (Number.isFinite(seconds) && seconds >= 0) {
    return seconds;
  }
  const parsed = Date.parse(value);
  if (Number.isNaN(parsed)) {
    return undefined;
  }
  return Math.max(0, Math.ceil((parsed - Date.now()) / 1000));
}

/** Convert a {@link FileLike} input into a `Blob` plus best-guess filename. */
export function toBlob(file: FileLike): { blob: Blob; filename: string } {
  if (typeof File !== "undefined" && file instanceof File) {
    return { blob: file, filename: file.name };
  }
  if (file instanceof Blob) {
    return { blob: file, filename: "upload.bin" };
  }
  if (file instanceof Uint8Array) {
    return {
      blob: new Blob([new Uint8Array(file)], { type: "application/octet-stream" }),
      filename: "upload.bin",
    };
  }
  const wrapper = file;
  const name = wrapper.name ?? "upload.bin";
  const mimeType = wrapper.mimeType ?? guessMimeType(name);
  if (wrapper.data instanceof Blob) {
    return { blob: wrapper.data, filename: name };
  }
  return {
    blob: new Blob([new Uint8Array(wrapper.data)], { type: mimeType }),
    filename: name,
  };
}

function guessMimeType(filename: string): string {
  const lower = filename.toLowerCase();
  if (lower.endsWith(".csv")) {
    return "text/csv";
  }
  if (lower.endsWith(".md")) {
    return "text/markdown";
  }
  if (lower.endsWith(".pdf")) {
    return "application/pdf";
  }
  if (lower.endsWith(".txt")) {
    return "text/plain";
  }
  if (lower.endsWith(".docx")) {
    return "application/vnd.openxmlformats-officedocument.wordprocessingml.document";
  }
  return "application/octet-stream";
}

/** Guess a display name for a file (used to populate `Job.filename`). */
export function describeFile(file: FileLike): string {
  if (typeof File !== "undefined" && file instanceof File) {
    return file.name;
  }
  if (file instanceof Blob || file instanceof Uint8Array) {
    return "upload.bin";
  }
  return file.name ?? "upload.bin";
}
