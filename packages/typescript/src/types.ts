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

// -- Enterprise-only surface (api schema) --
export type UsageResponse = components["schemas"]["UsageResponse"];
export type DiffResponse = components["schemas"]["DiffResponse"];
export type DocumentVersionEntry = components["schemas"]["DocumentVersionEntry"];
export type PresetSummary = components["schemas"]["PresetSummary"];
export type PresetDetail = components["schemas"]["PresetDetail"];
export type PresignUploadRequest = components["schemas"]["PresignUploadRequest"];
export type PresignUploadResponse = components["schemas"]["PresignUploadResponse"];
export type ConfirmUploadRequest = components["schemas"]["ConfirmUploadRequest"];
export type ConfirmUploadResponse = components["schemas"]["ConfirmUploadResponse"];

// -- Pro-only surface (pro schema) --
export type GetJobResponse = proComponents["schemas"]["GetJobResponse"];
export type AuthConfigResponse = proComponents["schemas"]["AuthConfigResponse"];
export type LoginRequest = proComponents["schemas"]["LoginRequest"];
export type LoginResponse = proComponents["schemas"]["LoginResponse"];
export type ListSavedPresetsResponse = proComponents["schemas"]["ListSavedPresetsResponse"];
export type SavedPresetDetail = proComponents["schemas"]["SavedPresetDetail"];
export type CreateSavedPresetRequest = proComponents["schemas"]["CreateSavedPresetRequest"];
export type CreateSavedPresetResponse = proComponents["schemas"]["CreateSavedPresetResponse"];
export type SetRagConfigRequest = proComponents["schemas"]["SetRagConfigRequest"];
export type RagConfigResponse = proComponents["schemas"]["RagConfigResponse"];

/**
 * A completed (or failed) job, returned by `waitForJob` once the job reaches a
 * terminal status.
 */
export type JobResult = Job;

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
