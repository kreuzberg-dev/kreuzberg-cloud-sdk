import { describe, expect, it } from "vitest";
import {
  AuthError,
  NotFoundError,
  RateLimitError,
  ServerError,
  SUCCESS_JOB_STATUSES,
  TERMINAL_JOB_STATUSES,
  TimeoutError,
  ValidationError,
  XbergClient,
  XbergError,
  createClient,
} from "../src/index.js";
import type {
  ApiKeyResponse,
  ApiKeyScope,
  AuditParams,
  AuthConfigResponse,
  BackoffStrategy,
  BeginOAuthResponse,
  ConfirmUploadRequest,
  ConfirmUploadResponse,
  CreateApiKeyRequest,
  CreateApiKeyResponse,
  CreateClientOptions,
  CreateIntegrationRequest,
  CreateProjectRequest,
  CreateSavedPresetRequest,
  CreateSavedPresetResponse,
  DiffResponse,
  DocumentInput,
  DocumentResponse,
  DocumentVersionEntry,
  ExtractAndWaitParams,
  ExtractBatchParams,
  ExtractionConfig,
  ExtractionOptions,
  ExtractionResult,
  ExtractParams,
  ExtractResponse,
  ExtractedDocument,
  FileLike,
  GetJobResponse,
  IntegrationResponse,
  Job,
  JobResult,
  JobResultError,
  JobStatus,
  ListApiKeysResponse,
  ListAuditEntriesResponse,
  ListDocumentsResponse,
  ListIntegrationDocumentsParams,
  ListIntegrationsResponse,
  ListJobsParams,
  ListJobsResponse,
  ListProjectsResponse,
  ListSavedPresetsResponse,
  LoginRequest,
  LoginResponse,
  PaginationParams,
  PresetDetail,
  PresetSummary,
  PresignUploadRequest,
  PresignUploadResponse,
  ProjectResponse,
  RagConfigResponse,
  RateLimitErrorOptions,
  SavedPresetDetail,
  SetRagConfigRequest,
  Target,
  UsageResponse,
  WaitOptions,
  WebhookConfig,
  XbergClientOptions,
  XbergErrorOptions,
  XbergRawClient,
  components,
  paths,
  proComponents,
  proPaths,
} from "../src/index.js";

describe("index re-exports", () => {
  it("re-exports the client value exports with the correct runtime type", () => {
    expect(typeof XbergClient).toBe("function");
    expect(typeof createClient).toBe("function");
  });

  it("re-exports the error class hierarchy with the correct runtime type", () => {
    expect(typeof XbergError).toBe("function");
    expect(typeof AuthError).toBe("function");
    expect(typeof NotFoundError).toBe("function");
    expect(typeof RateLimitError).toBe("function");
    expect(typeof ServerError).toBe("function");
    expect(typeof TimeoutError).toBe("function");
    expect(typeof ValidationError).toBe("function");
  });

  it("re-exports the exact SUCCESS_JOB_STATUSES value from types.ts", () => {
    expect(SUCCESS_JOB_STATUSES).toEqual(["completed", "partial_success"]);
  });

  it("re-exports the exact TERMINAL_JOB_STATUSES value from types.ts", () => {
    expect(TERMINAL_JOB_STATUSES).toEqual(["completed", "partial_success", "failed", "cancelled"]);
  });

  it("re-exported error classes form the expected instanceof chain", () => {
    const authError = new AuthError("nope", { status: 401, body: null });
    expect(authError).toBeInstanceOf(XbergError);
    expect(authError).toBeInstanceOf(Error);
  });
});

// Type-only exports vanish at compile time; importing them here proves the
// export exists and compiles without needing a runtime assertion.
type _TypeOnlyExportsCompile = [
  ApiKeyResponse,
  ApiKeyScope,
  AuditParams,
  AuthConfigResponse,
  BackoffStrategy,
  BeginOAuthResponse,
  ConfirmUploadRequest,
  ConfirmUploadResponse,
  CreateApiKeyRequest,
  CreateApiKeyResponse,
  CreateClientOptions,
  CreateIntegrationRequest,
  CreateProjectRequest,
  CreateSavedPresetRequest,
  CreateSavedPresetResponse,
  DiffResponse,
  DocumentInput,
  DocumentResponse,
  DocumentVersionEntry,
  ExtractAndWaitParams,
  ExtractBatchParams,
  ExtractionConfig,
  ExtractionOptions,
  ExtractionResult,
  ExtractParams,
  ExtractResponse,
  ExtractedDocument,
  FileLike,
  GetJobResponse,
  IntegrationResponse,
  Job,
  JobResult,
  JobResultError,
  JobStatus,
  ListApiKeysResponse,
  ListAuditEntriesResponse,
  ListDocumentsResponse,
  ListIntegrationDocumentsParams,
  ListIntegrationsResponse,
  ListJobsParams,
  ListJobsResponse,
  ListProjectsResponse,
  ListSavedPresetsResponse,
  LoginRequest,
  LoginResponse,
  PaginationParams,
  PresetDetail,
  PresetSummary,
  PresignUploadRequest,
  PresignUploadResponse,
  ProjectResponse,
  RagConfigResponse,
  RateLimitErrorOptions,
  SavedPresetDetail,
  SetRagConfigRequest,
  Target,
  UsageResponse,
  WaitOptions,
  WebhookConfig,
  XbergClientOptions,
  XbergErrorOptions,
  XbergRawClient,
  components,
  paths,
  proComponents,
  proPaths,
];
