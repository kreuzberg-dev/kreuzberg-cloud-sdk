/**
 * High-level dual-target client for the Xberg Enterprise and Xberg Pro HTTP APIs.
 *
 * One {@link XbergClient} speaks to either product. The shared surface —
 * extraction, jobs, audit, and the RAG API — is written once. Tier-specific
 * methods are capability-gated: they probe the connected instance (`GET
 * /healthz`'s `tier`, or an explicit `target`) and throw a clear error instead
 * of a raw 404 when invoked against the wrong tier.
 *
 * Both products authenticate identically: `Authorization: Bearer {apiKey}`.
 * Enterprise defaults `baseUrl` to `https://api.xberg.io`; Pro has no default
 * (its spec ships no servers block) and requires an explicit one.
 */

import createOpenApiClient, { type Client } from "openapi-fetch";
import type { paths } from "./_generated/api.js";
import { RateLimitError, TimeoutError, XbergError, raiseForStatus } from "./errors.js";
import type {
  AuthConfigResponse,
  BeginOAuthResponse,
  ConfirmUploadRequest,
  ConfirmUploadResponse,
  CreateApiKeyRequest,
  CreateApiKeyResponse,
  CreateIntegrationRequest,
  CreateProjectRequest,
  CreateSavedPresetRequest,
  CreateSavedPresetResponse,
  DiffResponse,
  DocumentVersionEntry,
  ExtractResponse,
  ExtractionOptions,
  IntegrationResponse,
  Job,
  JobResult,
  ListApiKeysResponse,
  ListAuditEntriesResponse,
  ListDocumentsResponse,
  ListIntegrationsResponse,
  ListJobsResponse,
  ListProjectsResponse,
  ListSavedPresetsResponse,
  LoginRequest,
  LoginResponse,
  PresetDetail,
  PresetSummary,
  PresignUploadRequest,
  PresignUploadResponse,
  ProjectResponse,
  RagConfigResponse,
  SetRagConfigRequest,
  UsageResponse,
  WebhookConfig,
} from "./types.js";
import { SUCCESS_JOB_STATUSES, TERMINAL_JOB_STATUSES } from "./types.js";
import { VERSION } from "./version.js";

const DEFAULT_ENTERPRISE_BASE_URL = "https://api.xberg.io";
const USER_AGENT = `xberg-io-sdk-typescript/${VERSION}`;
const DEFAULT_TIMEOUT_MS = 30_000;
const DEFAULT_POLL_INTERVAL_MS = 1_000;
const DEFAULT_WAIT_TIMEOUT_MS = 5 * 60_000;
const DEFAULT_RETRY_STATUSES: readonly number[] = [429, 502, 503, 504];
const DEFAULT_RETRY_BACKOFF_BASE_MS = 200;
const DEFAULT_RETRY_BACKOFF_CAP_MS = 30_000;
const DEFAULT_BACKOFF_FACTOR = 2;

/**
 * Backoff strategy for retries and `waitForJob` polling.
 *
 * - `exponential` — interval doubles after every attempt, capped at 30s.
 * - `constant` — interval stays the same on every attempt.
 */
export type BackoffStrategy = "exponential" | "constant";

/** Which product the client targets. */
export type Target = "enterprise" | "pro";

export interface XbergClientOptions {
  apiKey?: string;
  baseUrl?: string;
  /**
   * Which product to talk to. When omitted, the tier is discovered lazily from
   * `GET /healthz` before the first tier-specific call. Enterprise defaults
   * `baseUrl`; `target: "pro"` requires an explicit `baseUrl`.
   */
  target?: Target;
  fetch?: typeof fetch;
  headers?: Record<string, string>;
  timeoutMs?: number;
  retries?: number;
  retryOn?: readonly number[];
  retryBackoff?: BackoffStrategy;
  /** Sleep helper, swappable in tests. Defaults to `setTimeout`. */
  sleep?: (ms: number) => Promise<void>;
}

export type FileLike = File | Blob | Uint8Array | { name?: string; data: Blob | Uint8Array; mimeType?: string };

export interface ExtractParams {
  file: FileLike;
  options?: ExtractionOptions;
  webhook?: WebhookConfig;
}

export interface ExtractBatchParams {
  files: readonly FileLike[];
  options?: ExtractionOptions;
  webhook?: WebhookConfig;
}

export interface WaitOptions {
  /** Total time to wait before throwing TimeoutError. Default 5 minutes. */
  timeoutMs?: number;
  /** Initial poll interval. Default 1000ms. */
  pollIntervalMs?: number;
  /** `exponential` doubles the interval each cycle (capped). Default exponential. */
  backoff?: BackoffStrategy;
}

export interface ExtractAndWaitParams extends ExtractParams, WaitOptions {}

export interface ListJobsParams {
  limit?: number;
  offset?: number;
}

export interface AuditParams {
  action?: string;
  limit?: number;
  offset?: number;
}

/** Offset pagination accepted by the Pro control-plane list endpoints. */
export interface PaginationParams {
  limit?: number;
  offset?: number;
}

/** Filters accepted by `listIntegrationDocuments`. */
export interface ListIntegrationDocumentsParams {
  /** Comma-separated MIME types to restrict the listing to. */
  mimeTypes?: string;
  /** Source-specific folder to list instead of the connection root. */
  folderId?: string;
  /** Upper bound on the number of documents returned. */
  maxResults?: number;
}

/** Query-string values accepted by the internal request engine. */
type QueryParams = Record<string, string | number | undefined>;

/** Underlying `openapi-fetch` client, typed over the Enterprise API schema. */
export type XbergRawClient = Client<paths>;

/**
 * Resolve the effective base URL, enforcing that Pro requires an explicit one.
 */
function resolveBaseUrl(baseUrl: string | undefined, target: Target | undefined): string {
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
 * High-level dual-target client. Construct with `new XbergClient({ apiKey })`.
 */
export class XbergClient {
  private readonly baseUrl: string;
  private readonly headers: Record<string, string>;
  private readonly fetchImpl: typeof fetch;
  private readonly timeoutMs: number;
  private readonly retries: number;
  private readonly retryOn: readonly number[];
  private readonly retryBackoff: BackoffStrategy;
  private readonly sleep: (ms: number) => Promise<void>;
  private readonly target?: Target;
  private probedTier: string | undefined;
  /** Underlying `openapi-fetch` client — exposed for advanced use. */
  public readonly raw: XbergRawClient;

  public constructor(options: XbergClientOptions = {}) {
    if (options.target !== undefined) {
      this.target = options.target;
    }
    this.baseUrl = resolveBaseUrl(options.baseUrl, options.target);
    this.fetchImpl = options.fetch ?? fetch;
    this.timeoutMs = options.timeoutMs ?? DEFAULT_TIMEOUT_MS;
    this.retries = options.retries ?? 0;
    this.retryOn = options.retryOn ?? DEFAULT_RETRY_STATUSES;
    this.retryBackoff = options.retryBackoff ?? "exponential";
    this.sleep = options.sleep ?? defaultSleep;

    this.headers = {
      "User-Agent": USER_AGENT,
      ...options.headers,
    };
    if (options.apiKey !== undefined) {
      this.headers["Authorization"] = `Bearer ${options.apiKey}`;
    }

    this.raw = createOpenApiClient<paths>({
      baseUrl: this.baseUrl,
      headers: this.headers,
      fetch: this.fetchImpl,
    });
  }

  // -- Shared surface (Enterprise + Pro) ---------------------------------

  /**
   * Submit a single document for extraction. Returns the initial {@link Job}
   * record (still pending — call `waitForJob` to await completion).
   */
  public async extract(params: ExtractParams): Promise<Job> {
    const jobs = await this.extractBatch({
      files: [params.file],
      ...(params.options !== undefined ? { options: params.options } : {}),
      ...(params.webhook !== undefined ? { webhook: params.webhook } : {}),
    });
    const first = jobs[0];
    if (first === undefined) {
      throw new XbergError("Server did not return any job IDs", { status: 500, body: { jobs } });
    }
    return first;
  }

  /**
   * Submit multiple documents in a single multipart request. Returns one
   * {@link Job} per file, in the same order.
   */
  public async extractBatch(params: ExtractBatchParams): Promise<Job[]> {
    if (params.files.length === 0) {
      throw new XbergError("extractBatch called with no files", { status: 400, body: null });
    }

    const form = new FormData();
    for (const file of params.files) {
      const { blob, filename } = toBlob(file);
      form.append("file", blob, filename);
    }
    if (params.options !== undefined) {
      form.append("options", JSON.stringify(params.options));
    }
    const webhookPayload: WebhookConfig = params.webhook ?? { url: "" };
    form.append("webhook", JSON.stringify(webhookPayload));

    const body = await this.requestJson<ExtractResponse>("POST", "/v1/extract", { body: form });
    const jobIds = body.job_ids ?? [];
    const now = new Date().toISOString();
    return params.files.map((file, index) => {
      const id = jobIds[index];
      if (id === undefined) {
        throw new XbergError(`Server returned ${jobIds.length} job IDs for ${params.files.length} files`, {
          status: 500,
          body,
        });
      }
      return { id, filename: describeFile(file), status: "pending", created_at: now };
    });
  }

  /** Fetch the current state of a job. */
  public async getJob(jobId: string): Promise<Job> {
    return await this.requestJson<Job>("GET", `/v1/jobs/${encodeURIComponent(jobId)}`);
  }

  /**
   * Fetch a job's stored result document (`GET /v1/jobs/{id}/result`).
   *
   * Declared by both tiers with an identical `JobResult` envelope; the
   * extracted documents live in `results`. Distinct from {@link getJob}, which
   * returns the job's metadata record.
   */
  public async getJobResult(jobId: string): Promise<JobResult> {
    return await this.requestJson<JobResult>("GET", `/v1/jobs/${encodeURIComponent(jobId)}/result`);
  }

  /** List jobs (paginated) via `GET /v1/jobs`. */
  public async listJobs(params: ListJobsParams = {}): Promise<ListJobsResponse> {
    return await this.requestJson<ListJobsResponse>("GET", "/v1/jobs", {
      params: { limit: params.limit, offset: params.offset },
    });
  }

  /**
   * Poll {@link getJob} until the job reaches a terminal status. Throws
   * {@link TimeoutError} if the wait exceeds `timeoutMs`. Throws
   * {@link XbergError} if the terminal status is `failed` or `cancelled`.
   */
  public async waitForJob(jobId: string, options: WaitOptions = {}): Promise<Job> {
    const timeoutMs = options.timeoutMs ?? DEFAULT_WAIT_TIMEOUT_MS;
    const initialInterval = options.pollIntervalMs ?? DEFAULT_POLL_INTERVAL_MS;
    const backoff = options.backoff ?? "exponential";
    const start = Date.now();
    let interval = initialInterval;

    for (;;) {
      const job = await this.getJob(jobId);
      if (TERMINAL_JOB_STATUSES.includes(job.status)) {
        if (SUCCESS_JOB_STATUSES.includes(job.status)) {
          return job;
        }
        throw new XbergError(`Job ${jobId} ended with status ${job.status}`, { status: 200, body: job });
      }

      const elapsed = Date.now() - start;
      const remaining = timeoutMs - elapsed;
      if (remaining <= 0) {
        throw new TimeoutError(`Timed out waiting for job ${jobId} after ${timeoutMs}ms`, { status: 408, body: job });
      }
      const delay = Math.min(interval, remaining);
      await this.sleep(delay);
      if (backoff === "exponential") {
        interval = Math.min(interval * DEFAULT_BACKOFF_FACTOR, DEFAULT_RETRY_BACKOFF_CAP_MS);
      }
    }
  }

  /** Wait for many jobs in parallel. */
  public async waitForJobs(jobIds: readonly string[], options: WaitOptions = {}): Promise<Job[]> {
    return await Promise.all(jobIds.map((id) => this.waitForJob(id, options)));
  }

  /** Convenience: extract one file and await its result. */
  public async extractAndWait(params: ExtractAndWaitParams): Promise<Job> {
    const extractParams: ExtractParams = {
      file: params.file,
      ...(params.options !== undefined ? { options: params.options } : {}),
      ...(params.webhook !== undefined ? { webhook: params.webhook } : {}),
    };
    const job = await this.extract(extractParams);
    const waitOptions: WaitOptions = {
      ...(params.timeoutMs !== undefined ? { timeoutMs: params.timeoutMs } : {}),
      ...(params.pollIntervalMs !== undefined ? { pollIntervalMs: params.pollIntervalMs } : {}),
      ...(params.backoff !== undefined ? { backoff: params.backoff } : {}),
    };
    return this.waitForJob(job.id, waitOptions);
  }

  /** Fetch audit-log entries via `GET /v1/audit`. */
  public async audit(params: AuditParams = {}): Promise<ListAuditEntriesResponse> {
    return await this.requestJson<ListAuditEntriesResponse>("GET", "/v1/audit", {
      params: { action: params.action, limit: params.limit, offset: params.offset },
    });
  }

  // -- Shared preset catalogue -------------------------------------------

  /** List the read-only curated presets (`GET /v1/presets`). */
  public async presets(): Promise<PresetSummary[]> {
    return await this.requestJson<PresetSummary[]>("GET", "/v1/presets");
  }

  /** Fetch one curated preset in full (`GET /v1/presets/{id}`). */
  public async getPreset(presetId: string): Promise<PresetDetail> {
    return await this.requestJson<PresetDetail>("GET", `/v1/presets/${encodeURIComponent(presetId)}`);
  }

  /**
   * Download a preset's bundled sample file
   * (`GET /v1/presets/{id}/sample/{name}`). The response is raw bytes, not
   * JSON.
   */
  public async getPresetSample(presetId: string, name: string): Promise<Uint8Array> {
    const path = `/v1/presets/${encodeURIComponent(presetId)}/sample/${encodeURIComponent(name)}`;
    return await this.requestBytes("GET", path);
  }

  // -- Shared RAG surface ------------------------------------------------

  /** List RAG collections (`GET /v1/rag/collections`). */
  public async listRagCollections(): Promise<unknown> {
    return await this.requestJson("GET", "/v1/rag/collections");
  }

  /** Create a RAG collection (`POST /v1/rag/collections`). */
  public async createRagCollection(body: Record<string, unknown>): Promise<unknown> {
    return await this.requestJson("POST", "/v1/rag/collections", { json: body });
  }

  /** Fetch a RAG collection (`GET /v1/rag/collections/{name}`). */
  public async getRagCollection(name: string): Promise<unknown> {
    return await this.requestJson("GET", `/v1/rag/collections/${encodeURIComponent(name)}`);
  }

  /** Delete a RAG collection (`DELETE /v1/rag/collections/{name}`). */
  public async deleteRagCollection(name: string): Promise<unknown> {
    return await this.requestJson("DELETE", `/v1/rag/collections/${encodeURIComponent(name)}`);
  }

  /** Add documents to a RAG collection (`POST /v1/rag/collections/{name}/documents`). */
  public async addRagDocuments(name: string, body: Record<string, unknown>): Promise<unknown> {
    return await this.requestJson("POST", `/v1/rag/collections/${encodeURIComponent(name)}/documents`, { json: body });
  }

  /** Reindex a RAG document (`POST /v1/rag/collections/{name}/documents/{id}/reindex`). */
  public async reindexRagDocument(name: string, documentId: string, body?: Record<string, unknown>): Promise<unknown> {
    const path = `/v1/rag/collections/${encodeURIComponent(name)}/documents/${encodeURIComponent(documentId)}/reindex`;
    return await this.requestJson("POST", path, body !== undefined ? { json: body } : {});
  }

  /** Retrieve chunks from a RAG collection (`POST /v1/rag/collections/{name}/retrieve`). */
  public async ragRetrieve(name: string, body: Record<string, unknown>): Promise<unknown> {
    return await this.requestJson("POST", `/v1/rag/collections/${encodeURIComponent(name)}/retrieve`, { json: body });
  }

  /** Kick off an embedding migration (`POST /v1/rag/collections/{name}/migrate-embeddings`). */
  public async migrateRagEmbeddings(name: string, body: Record<string, unknown>): Promise<unknown> {
    return await this.requestJson("POST", `/v1/rag/collections/${encodeURIComponent(name)}/migrate-embeddings`, {
      json: body,
    });
  }

  /** Poll an embedding-migration job (`GET .../migrate-embeddings/{jobId}`). */
  public async getRagMigrationJob(name: string, jobId: string): Promise<unknown> {
    const path = `/v1/rag/collections/${encodeURIComponent(name)}/migrate-embeddings/${encodeURIComponent(jobId)}`;
    return await this.requestJson("GET", path);
  }

  /** Fetch a RAG job's status (`GET /v1/rag/jobs/{jobId}`). */
  public async getRagJob(jobId: string): Promise<unknown> {
    return await this.requestJson("GET", `/v1/rag/jobs/${encodeURIComponent(jobId)}`);
  }

  // -- Pro-only surface --------------------------------------------------

  /** Pro only: fetch the instance's accepted auth methods (`GET /auth/config`). */
  public async authConfig(): Promise<AuthConfigResponse> {
    await this.requireTier("pro", "authConfig");
    return this.requestJson<AuthConfigResponse>("GET", "/auth/config");
  }

  /** Pro only: exchange a verified OIDC ID token for a Pro session JWT (`POST /auth/login`). */
  public async login(body: LoginRequest): Promise<LoginResponse> {
    await this.requireTier("pro", "login");
    return this.requestJson<LoginResponse>("POST", "/auth/login", { json: body });
  }

  /** Pro only: list saved presets (`GET /v1/saved-presets`). */
  public async listSavedPresets(): Promise<ListSavedPresetsResponse> {
    await this.requireTier("pro", "listSavedPresets");
    return this.requestJson<ListSavedPresetsResponse>("GET", "/v1/saved-presets");
  }

  /** Pro only: create a saved preset (`POST /v1/saved-presets`). */
  public async createSavedPreset(body: CreateSavedPresetRequest): Promise<CreateSavedPresetResponse> {
    await this.requireTier("pro", "createSavedPreset");
    return this.requestJson<CreateSavedPresetResponse>("POST", "/v1/saved-presets", { json: body });
  }

  /** Pro only: delete a saved preset (`DELETE /v1/saved-presets/{id}`). */
  public async deleteSavedPreset(presetId: string): Promise<unknown> {
    await this.requireTier("pro", "deleteSavedPreset");
    return this.requestJson("DELETE", `/v1/saved-presets/${encodeURIComponent(presetId)}`);
  }

  /** Pro only: fetch a project's RAG config (`GET /v1/projects/{projectId}/rag-config`). */
  public async getRagConfig(projectId: string): Promise<RagConfigResponse> {
    await this.requireTier("pro", "getRagConfig");
    return this.requestJson<RagConfigResponse>("GET", `/v1/projects/${encodeURIComponent(projectId)}/rag-config`);
  }

  /** Pro only: update a project's RAG config (`PUT /v1/projects/{projectId}/rag-config`). */
  public async setRagConfig(projectId: string, body: SetRagConfigRequest): Promise<RagConfigResponse> {
    await this.requireTier("pro", "setRagConfig");
    return this.requestJson<RagConfigResponse>("PUT", `/v1/projects/${encodeURIComponent(projectId)}/rag-config`, {
      json: body,
    });
  }

  // -- Pro-only control plane (projects, API keys, integrations) ---------

  /** Pro only: list the caller's projects (`GET /v1/projects`). */
  public async listProjects(params: PaginationParams = {}): Promise<ListProjectsResponse> {
    await this.requireTier("pro", "listProjects");
    return this.requestJson<ListProjectsResponse>("GET", "/v1/projects", {
      params: { limit: params.limit, offset: params.offset },
    });
  }

  /** Pro only: create a project owned by the caller (`POST /v1/projects`). */
  public async createProject(body: CreateProjectRequest): Promise<ProjectResponse> {
    await this.requireTier("pro", "createProject");
    return this.requestJson<ProjectResponse>("POST", "/v1/projects", { json: body });
  }

  /** Pro only: list a project's API keys (`GET /v1/projects/{projectId}/api-keys`). */
  public async listApiKeys(projectId: string, params: PaginationParams = {}): Promise<ListApiKeysResponse> {
    await this.requireTier("pro", "listApiKeys");
    return this.requestJson<ListApiKeysResponse>("GET", `${this.projectPath(projectId)}/api-keys`, {
      params: { limit: params.limit, offset: params.offset },
    });
  }

  /** Pro only: mint an API key for a project (`POST /v1/projects/{projectId}/api-keys`). */
  public async createApiKey(projectId: string, body: CreateApiKeyRequest): Promise<CreateApiKeyResponse> {
    await this.requireTier("pro", "createApiKey");
    return this.requestJson<CreateApiKeyResponse>("POST", `${this.projectPath(projectId)}/api-keys`, { json: body });
  }

  /** Pro only: revoke an API key (`DELETE /v1/projects/{projectId}/api-keys/{keyId}`). */
  public async revokeApiKey(projectId: string, keyId: string): Promise<void> {
    await this.requireTier("pro", "revokeApiKey");
    await this.requestJson("DELETE", `${this.projectPath(projectId)}/api-keys/${encodeURIComponent(keyId)}`);
  }

  /** Pro only: list a project's integrations (`GET /v1/projects/{projectId}/integrations`). */
  public async listIntegrations(projectId: string, params: PaginationParams = {}): Promise<ListIntegrationsResponse> {
    await this.requireTier("pro", "listIntegrations");
    return this.requestJson<ListIntegrationsResponse>("GET", `${this.projectPath(projectId)}/integrations`, {
      params: { limit: params.limit, offset: params.offset },
    });
  }

  /** Pro only: create an integration (`POST /v1/projects/{projectId}/integrations`). */
  public async createIntegration(projectId: string, body: CreateIntegrationRequest): Promise<IntegrationResponse> {
    await this.requireTier("pro", "createIntegration");
    return this.requestJson<IntegrationResponse>("POST", `${this.projectPath(projectId)}/integrations`, {
      json: body,
    });
  }

  /** Pro only: fetch one integration (`GET .../integrations/{integrationId}`). */
  public async getIntegration(projectId: string, integrationId: string): Promise<IntegrationResponse> {
    await this.requireTier("pro", "getIntegration");
    return this.requestJson<IntegrationResponse>("GET", this.integrationPath(projectId, integrationId));
  }

  /** Pro only: delete an integration (`DELETE .../integrations/{integrationId}`). */
  public async deleteIntegration(projectId: string, integrationId: string): Promise<void> {
    await this.requireTier("pro", "deleteIntegration");
    await this.requestJson("DELETE", this.integrationPath(projectId, integrationId));
  }

  /**
   * Pro only: begin the OAuth flow for an integration
   * (`POST .../integrations/{integrationId}/connect`). Returns the provider
   * authorize URL to redirect the user to.
   */
  public async connectIntegration(projectId: string, integrationId: string): Promise<BeginOAuthResponse> {
    await this.requireTier("pro", "connectIntegration");
    return this.requestJson<BeginOAuthResponse>("POST", `${this.integrationPath(projectId, integrationId)}/connect`);
  }

  /** Pro only: revoke an integration's OAuth connection (`POST .../disconnect`). */
  public async disconnectIntegration(projectId: string, integrationId: string): Promise<void> {
    await this.requireTier("pro", "disconnectIntegration");
    await this.requestJson("POST", `${this.integrationPath(projectId, integrationId)}/disconnect`);
  }

  /** Pro only: list the documents an integration exposes (`GET .../documents`). */
  public async listIntegrationDocuments(
    projectId: string,
    integrationId: string,
    params: ListIntegrationDocumentsParams = {},
  ): Promise<ListDocumentsResponse> {
    await this.requireTier("pro", "listIntegrationDocuments");
    return this.requestJson<ListDocumentsResponse>(
      "GET",
      `${this.integrationPath(projectId, integrationId)}/documents`,
      {
        params: {
          mime_types: params.mimeTypes,
          folder_id: params.folderId,
          max_results: params.maxResults,
        },
      },
    );
  }

  /**
   * Pro only: download one document from an integration
   * (`GET .../documents/{documentId}`). The response is raw bytes, not JSON.
   */
  public async fetchIntegrationDocument(
    projectId: string,
    integrationId: string,
    documentId: string,
  ): Promise<Uint8Array> {
    await this.requireTier("pro", "fetchIntegrationDocument");
    const path = `${this.integrationPath(projectId, integrationId)}/documents/${encodeURIComponent(documentId)}`;
    return this.requestBytes("GET", path);
  }

  // -- Enterprise-only surface ------------------------------------------

  /** Enterprise only: list a document's versions (`GET /v1/documents/{id}/versions`). */
  public async versions(documentId: string): Promise<DocumentVersionEntry[]> {
    await this.requireTier("enterprise", "versions");
    return this.requestJson<DocumentVersionEntry[]>("GET", `/v1/documents/${encodeURIComponent(documentId)}/versions`);
  }

  /** Enterprise only: diff document versions (`GET /v1/documents/{id}/diff`). */
  public async diff(documentId: string, params?: QueryParams): Promise<DiffResponse> {
    await this.requireTier("enterprise", "diff");
    const init: RequestParts = params !== undefined ? { params } : {};
    return this.requestJson<DiffResponse>("GET", `/v1/documents/${encodeURIComponent(documentId)}/diff`, init);
  }

  /** Enterprise only: poll a diff job (`GET /v1/documents/{id}/diff/{diffJobId}`). */
  public async getDiffJob(documentId: string, diffJobId: string): Promise<DiffResponse> {
    await this.requireTier("enterprise", "getDiffJob");
    const path = `/v1/documents/${encodeURIComponent(documentId)}/diff/${encodeURIComponent(diffJobId)}`;
    return this.requestJson<DiffResponse>("GET", path);
  }

  /** Enterprise only: request a presigned upload URL (`POST /v1/uploads/presign`). */
  public async presignUpload(body: PresignUploadRequest): Promise<PresignUploadResponse> {
    await this.requireTier("enterprise", "presignUpload");
    return this.requestJson<PresignUploadResponse>("POST", "/v1/uploads/presign", { json: body });
  }

  /** Enterprise only: confirm a presigned upload (`POST /v1/uploads/confirm`). */
  public async confirmUpload(body: ConfirmUploadRequest): Promise<ConfirmUploadResponse> {
    await this.requireTier("enterprise", "confirmUpload");
    return this.requestJson<ConfirmUploadResponse>("POST", "/v1/uploads/confirm", { json: body });
  }

  /** Enterprise only: fetch usage/metering data (`GET /v1/usage`). */
  public async usage(params?: QueryParams): Promise<UsageResponse> {
    await this.requireTier("enterprise", "usage");
    const init: RequestParts = params !== undefined ? { params } : {};
    return this.requestJson<UsageResponse>("GET", "/v1/usage", init);
  }

  // -- Internals ---------------------------------------------------------

  /** Build `/v1/projects/{projectId}` with the id percent-encoded. */
  private projectPath(projectId: string): string {
    return `/v1/projects/${encodeURIComponent(projectId)}`;
  }

  /** Build `/v1/projects/{projectId}/integrations/{integrationId}`. */
  private integrationPath(projectId: string, integrationId: string): string {
    return `${this.projectPath(projectId)}/integrations/${encodeURIComponent(integrationId)}`;
  }

  /**
   * Return the effective tier — an explicit `target` if set, else probed from
   * `/healthz` (cached after the first probe).
   */
  private async resolveTier(): Promise<string> {
    if (this.target !== undefined) {
      return this.target;
    }
    if (this.probedTier === undefined) {
      const body = await this.requestJson<{ tier?: unknown }>("GET", "/healthz");
      this.probedTier = typeof body?.tier === "string" ? body.tier : "";
    }
    return this.probedTier;
  }

  /** Throw a clear error when the connected tier does not match the required one. */
  private async requireTier(required: Target, methodName: string): Promise<void> {
    const tier = await this.resolveTier();
    if (tier !== required) {
      const actual = tier || "unknown";
      throw new XbergError(
        `${methodName}() is not available on the '${actual}' tier (requires the '${required}' tier)`,
        { status: 0, body: null },
      );
    }
  }

  /** Issue a request, raise on non-2xx, and decode the JSON body (undefined for empty bodies). */
  private async requestJson<T = unknown>(method: string, path: string, init: RequestParts = {}): Promise<T> {
    const response = await this.requestWithRetry(method, path, init);
    if (response.status === 204) {
      return undefined as T;
    }
    const text = await response.text();
    return (text.length > 0 ? JSON.parse(text) : undefined) as T;
  }

  /** Issue a request, raise on non-2xx, and return the response body as raw bytes. */
  private async requestBytes(method: string, path: string, init: RequestParts = {}): Promise<Uint8Array> {
    const response = await this.requestWithRetry(method, path, init);
    return new Uint8Array(await response.arrayBuffer());
  }

  /**
   * Issue a raw HTTP request with auth, timeout, query params, and retry
   * handling. Returns the raw (2xx) {@link Response}; non-2xx responses are
   * mapped to a thrown {@link XbergError} subclass.
   */
  private async requestWithRetry(method: string, path: string, init: RequestParts = {}): Promise<Response> {
    const url = `${this.baseUrl}${path}${buildQueryString(init.params)}`;
    let attempt = 0;
    let interval = DEFAULT_RETRY_BACKOFF_BASE_MS;
    for (;;) {
      const headers = { ...this.headers, ...init.headers };
      let body: FormData | string | Uint8Array | undefined = init.body;
      if (init.json !== undefined) {
        headers["Content-Type"] = "application/json";
        body = JSON.stringify(init.json);
      }
      const requestInit: RequestInit = { method, headers, signal: AbortSignal.timeout(this.timeoutMs) };
      if (body !== undefined) {
        requestInit.body = body;
      }

      let response: Response;
      try {
        response = await this.fetchImpl(url, requestInit);
      } catch (cause) {
        if (attempt < this.retries) {
          attempt += 1;
          await this.sleep(interval);
          interval = nextBackoffInterval(interval, this.retryBackoff);
          continue;
        }
        throw new XbergError(`Network error contacting ${url}`, { status: 0, body: null, cause });
      }

      if (response.ok) {
        return response;
      }

      if (this.retryOn.includes(response.status) && attempt < this.retries) {
        attempt += 1;
        const retryAfter = parseRetryAfterHeader(response.headers.get("retry-after"));
        const wait = retryAfter !== undefined ? retryAfter * 1000 : interval;
        await this.sleep(wait);
        interval = nextBackoffInterval(interval, this.retryBackoff);
        continue;
      }

      try {
        await raiseForStatus(response);
      } catch (error) {
        if (error instanceof RateLimitError && error.retryAfter !== undefined && attempt < this.retries) {
          attempt += 1;
          await this.sleep(error.retryAfter * 1000);
          interval = nextBackoffInterval(interval, this.retryBackoff);
          continue;
        }
        throw error;
      }
      throw new XbergError("Unreachable", { status: response.status, body: null });
    }
  }
}

/** Parts accepted by the internal request engine. */
interface RequestParts {
  body?: FormData | string | Uint8Array;
  json?: unknown;
  headers?: Record<string, string>;
  params?: QueryParams;
}

/** Backwards-compatible factory returning the low-level `openapi-fetch` client. */
export interface CreateClientOptions {
  baseUrl?: string;
  apiKey?: string;
  headers?: Record<string, string>;
  fetch?: typeof fetch;
}

export function createClient(options: CreateClientOptions = {}): XbergRawClient {
  const headers: Record<string, string> = {
    "User-Agent": USER_AGENT,
    ...options.headers,
  };
  if (options.apiKey !== undefined) {
    headers["Authorization"] = `Bearer ${options.apiKey}`;
  }
  return createOpenApiClient<paths>({
    baseUrl: options.baseUrl ?? DEFAULT_ENTERPRISE_BASE_URL,
    headers,
    ...(options.fetch !== undefined ? { fetch: options.fetch } : {}),
  });
}

function defaultSleep(ms: number): Promise<void> {
  return new Promise((resolve) => {
    setTimeout(resolve, ms);
  });
}

function buildQueryString(params: QueryParams | undefined): string {
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

function nextBackoffInterval(current: number, strategy: BackoffStrategy): number {
  if (strategy === "constant") {
    return current;
  }
  return Math.min(current * DEFAULT_BACKOFF_FACTOR, DEFAULT_RETRY_BACKOFF_CAP_MS);
}

function parseRetryAfterHeader(value: string | null): number | undefined {
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
function toBlob(file: FileLike): { blob: Blob; filename: string } {
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
function describeFile(file: FileLike): string {
  if (typeof File !== "undefined" && file instanceof File) {
    return file.name;
  }
  if (file instanceof Blob || file instanceof Uint8Array) {
    return "upload.bin";
  }
  return file.name ?? "upload.bin";
}
