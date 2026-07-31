/**
 * Error class hierarchy for the Xberg SDK (Enterprise + Pro).
 *
 * Every non-2xx HTTP response is mapped to a subclass of {@link XbergError}.
 * `TimeoutError` is also raised when {@link XbergClient.waitForJob} exceeds its
 * configured deadline (distinct from a network/fetch timeout).
 */

export interface XbergErrorOptions {
  status: number;
  body: unknown;
  cause?: unknown;
}

export class XbergError extends Error {
  public readonly status: number;
  public readonly body: unknown;

  public constructor(message: string, options: XbergErrorOptions) {
    const errorInit: ErrorOptions = options.cause === undefined ? {} : { cause: options.cause };
    super(message, errorInit);
    this.name = "XbergError";
    this.status = options.status;
    this.body = options.body;
  }
}

export class AuthError extends XbergError {
  public constructor(message: string, options: XbergErrorOptions) {
    super(message, options);
    this.name = "AuthError";
  }
}

export interface RateLimitErrorOptions extends XbergErrorOptions {
  retryAfter?: number;
}

export class RateLimitError extends XbergError {
  public readonly retryAfter?: number;

  public constructor(message: string, options: RateLimitErrorOptions) {
    super(message, options);
    this.name = "RateLimitError";
    if (options.retryAfter !== undefined) {
      this.retryAfter = options.retryAfter;
    }
  }
}

export class ValidationError extends XbergError {
  public constructor(message: string, options: XbergErrorOptions) {
    super(message, options);
    this.name = "ValidationError";
  }
}

export class NotFoundError extends XbergError {
  public constructor(message: string, options: XbergErrorOptions) {
    super(message, options);
    this.name = "NotFoundError";
  }
}

export class ServerError extends XbergError {
  public constructor(message: string, options: XbergErrorOptions) {
    super(message, options);
    this.name = "ServerError";
  }
}

export class TimeoutError extends XbergError {
  public constructor(message: string, options: XbergErrorOptions) {
    super(message, options);
    this.name = "TimeoutError";
  }
}

/**
 * Map an HTTP response status to the matching error subclass and throw it.
 *
 * Always throws — call as `throw await raiseForStatus(response)` if you want
 * the type system to see the unreachable code, otherwise just `await`. Both
 * 401 and 403 map to {@link AuthError} — the API uses 403 for a
 * valid-but-forbidden principal.
 */
export async function raiseForStatus(response: Response): Promise<never> {
  const body = await readBody(response);
  const message = extractErrorMessage(body) ?? `Request failed with status ${response.status}`;
  const options: XbergErrorOptions = { status: response.status, body };

  if (response.status === 401 || response.status === 403) {
    throw new AuthError(message, options);
  }
  if (response.status === 404) {
    throw new NotFoundError(message, options);
  }
  if (response.status === 429) {
    const retryAfterRaw = response.headers.get("retry-after");
    const retryAfter = parseRetryAfter(retryAfterRaw);
    const opts: RateLimitErrorOptions = retryAfter === undefined ? options : { ...options, retryAfter };
    throw new RateLimitError(message, opts);
  }
  if (response.status >= 400 && response.status < 500) {
    throw new ValidationError(message, options);
  }
  if (response.status >= 500) {
    throw new ServerError(message, options);
  }
  throw new XbergError(message, options);
}

async function readBody(response: Response): Promise<unknown> {
  const contentType = response.headers.get("content-type") ?? "";
  if (contentType.includes("application/json")) {
    try {
      return await response.json();
    } catch {
      return undefined;
    }
  }
  try {
    const text = await response.text();
    return text === "" ? undefined : text;
  } catch {
    return undefined;
  }
}

function extractErrorMessage(body: unknown): string | undefined {
  if (typeof body === "string" && body.length > 0) {
    return body;
  }
  if (body !== null && typeof body === "object") {
    const record = body as Record<string, unknown>;
    const error = record["error"];
    if (typeof error === "string" && error.length > 0) {
      return error;
    }
    const message = record["message"];
    if (typeof message === "string" && message.length > 0) {
      return message;
    }
  }
  return undefined;
}

function parseRetryAfter(value: string | null): number | undefined {
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
  const delta = Math.max(0, Math.ceil((parsed - Date.now()) / 1000));
  return delta;
}
