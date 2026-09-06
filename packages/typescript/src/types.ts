/**
 * Friendly re-exports of the two generated schema sets.
 *
 * Shared and Enterprise-only types key off `_generated/api.d.ts` (the Xberg
 * Enterprise managed API); Pro-only response types key off
 * `_generated/pro.d.ts`. The two schema sets are generated separately and never
 * merged — mirrors xberg-enterprise ADR-0072.
 */

import type { components } from "./_generated/api.js";
import type { components as proComponents } from "./_generated/pro.js";

// -- Shared surface (present in both schema sets; typed off the Enterprise API) --
export type ExtractionOptions = components["schemas"]["ExtractionOptions"];
export type ExtractionConfig = components["schemas"]["ExtractionConfig"];
export type ExtractedDocument = components["schemas"]["ExtractedDocument"];
export type ExtractionResult = ExtractedDocument;
export type Job = components["schemas"]["JobResponse"];
export type JobStatus = components["schemas"]["JobStatus"];
export type WebhookConfig = components["schemas"]["WebhookConfig"];
export type ExtractResponse = components["schemas"]["ExtractResponse"];
export type DocumentInput = components["schemas"]["DocumentInput"];
export type ListJobsResponse = components["schemas"]["ListJobsResponse"];
export type ListAuditEntriesResponse = components["schemas"]["ListAuditEntriesResponse"];
export type PresetSummary = components["schemas"]["PresetSummary"];
export type PresetDetail = components["schemas"]["PresetDetail"];

/**
 * The stored result document of a terminal job, returned by
 * `GET /v1/jobs/{id}/result` on both tiers. Distinct from {@link Job}, which is
 * the job's metadata record from `GET /v1/jobs/{id}`.
 */
export type JobResult = components["schemas"]["JobResult"];
/** A non-fatal per-document error attached to a {@link JobResult}. */
export type JobResultError = components["schemas"]["JobResultError"];

// -- Shared saved presets (both specs declare these identically) --
export type ListSavedPresetsResponse = components["schemas"]["ListSavedPresetsResponse"];
export type SavedPresetSummary = components["schemas"]["SavedPresetSummary"];
export type SavedPresetDetail = components["schemas"]["SavedPresetDetail"];
export type CreateSavedPresetRequest = components["schemas"]["CreateSavedPresetRequest"];
export type CreateSavedPresetResponse = components["schemas"]["CreateSavedPresetResponse"];
export type UpdateSavedPresetRequest = components["schemas"]["UpdateSavedPresetRequest"];
export type UpdateSavedPresetResponse = components["schemas"]["UpdateSavedPresetResponse"];

// -- Shared auto-tune surface (both specs declare these identically) --
export type ListAutoTuneJobsResponse = components["schemas"]["ListAutoTuneJobsResponse"];
export type AutoTuneJobSummary = components["schemas"]["AutoTuneJobSummary"];
export type CreateAutoTuneJobRequest = components["schemas"]["CreateAutoTuneJobRequest"];
export type CreateAutoTuneJobResponse = components["schemas"]["CreateAutoTuneJobResponse"];
export type AutoTuneCapabilitiesResponse = components["schemas"]["AutoTuneCapabilitiesResponse"];
export type AutoTuneJobStatus = components["schemas"]["AutoTuneJobStatus"];
export type AutoTuneResult = components["schemas"]["AutoTuneResult"];
export type PromoteProfileRequest = components["schemas"]["PromoteProfileRequest"];

// -- Shared tuning profiles (both specs declare these identically) --
export type ListTuningProfilesResponse = components["schemas"]["ListTuningProfilesResponse"];
export type TuningProfileSummary = components["schemas"]["TuningProfileSummary"];
export type TuningProfileDetail = components["schemas"]["TuningProfileDetail"];

// -- Enterprise-only surface (api schema) --
export type UsageResponse = components["schemas"]["UsageResponse"];
export type DiffResponse = components["schemas"]["DiffResponse"];
/** The async-pending envelope `diff`/`getDiffJob` return in place of {@link DiffResponse} while a diff is still computing. */
export type DiffAsyncAccepted = components["schemas"]["DiffAsyncAccepted"];

/**
 * Result of {@link XbergClient.diff} and {@link XbergClient.getDiffJob}.
 *
 * Both operations answer `200` with the computed {@link DiffResponse} or
 * `202` with the {@link DiffAsyncAccepted} polling envelope when the server
 * falls back to async computation — the same fallback `getDiffJob` exists to
 * poll. The two schemas share no field to discriminate on, so `status` here
 * is not part of either wire schema: it is the HTTP status code the response
 * actually carried, reattached so callers can narrow with a plain
 * `if (result.status === 200)` / `else` instead of a type assertion.
 */
export type DiffResult =
  | { readonly status: 200; readonly body: DiffResponse }
  | { readonly status: 202; readonly body: DiffAsyncAccepted };
export type DocumentVersionEntry = components["schemas"]["DocumentVersionEntry"];
export type PresignUploadRequest = components["schemas"]["PresignUploadRequest"];
export type PresignUploadResponse = components["schemas"]["PresignUploadResponse"];
export type ConfirmUploadRequest = components["schemas"]["ConfirmUploadRequest"];
export type ConfirmUploadResponse = components["schemas"]["ConfirmUploadResponse"];
export type EnrichTextRequest = components["schemas"]["EnrichTextRequest"];
export type EnrichRequestOptions = components["schemas"]["EnrichRequestOptions"];
export type EnrichJobSubmitted = components["schemas"]["EnrichJobSubmitted"];
export type EnrichJobStatus = components["schemas"]["EnrichJobStatus"];
export type ListExtractionEventsResponse = components["schemas"]["ListExtractionEventsResponse"];
export type ExtractionEventSummary = components["schemas"]["ExtractionEventSummary"];

// -- Pro-only surface (pro schema) --
export type GetJobResponse = proComponents["schemas"]["GetJobResponse"];
export type AuthConfigResponse = proComponents["schemas"]["AuthConfigResponse"];
export type LoginRequest = proComponents["schemas"]["LoginRequest"];
export type LoginResponse = proComponents["schemas"]["LoginResponse"];
export type SetRagConfigRequest = proComponents["schemas"]["SetRagConfigRequest"];
export type RagConfigResponse = proComponents["schemas"]["RagConfigResponse"];

// -- Pro-only control plane (projects, API keys, integrations) --
export type ListProjectsResponse = proComponents["schemas"]["ListProjectsResponse"];
export type CreateProjectRequest = proComponents["schemas"]["CreateProjectRequest"];
export type ProjectResponse = proComponents["schemas"]["ProjectResponse"];
export type ApiKeyResponse = proComponents["schemas"]["ApiKeyResponse"];
export type ApiKeyScope = proComponents["schemas"]["ApiKeyScope"];
export type ListApiKeysResponse = proComponents["schemas"]["ListApiKeysResponse"];
export type CreateApiKeyRequest = proComponents["schemas"]["CreateApiKeyRequest"];
export type CreateApiKeyResponse = proComponents["schemas"]["CreateApiKeyResponse"];
export type ListIntegrationsResponse = proComponents["schemas"]["ListIntegrationsResponse"];
export type CreateIntegrationRequest = proComponents["schemas"]["CreateIntegrationRequest"];
export type IntegrationResponse = proComponents["schemas"]["IntegrationResponse"];
export type BeginOAuthResponse = proComponents["schemas"]["BeginOAuthResponse"];
export type ListDocumentsResponse = proComponents["schemas"]["ListDocumentsResponse"];
export type DocumentResponse = proComponents["schemas"]["DocumentResponse"];

/**
 * Terminal job statuses — once observed, polling stops and the job result is
 * returned (or thrown, for `failed`/`cancelled`).
 */
export const TERMINAL_JOB_STATUSES: readonly JobStatus[] = [
  "completed",
  "partial_success",
  "failed",
  "cancelled",
] as const;

/**
 * Job statuses that indicate a successful extraction. Used to distinguish a
 * "completed but check warnings" result from a hard failure.
 */
export const SUCCESS_JOB_STATUSES: readonly JobStatus[] = ["completed", "partial_success"] as const;
