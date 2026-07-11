// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'rag_job_kind.dart';
import 'rag_job_progress.dart';
import 'rag_job_state.dart';

part 'rag_job_status_response.freezed.dart';
part 'rag_job_status_response.g.dart';

/// Unified RAG async job status response covering ingest, reindex, and migrate operations.
///
/// The response shape varies depending on the operation type (`kind`):.
/// - **ingest**: status field reflects document ingestion progress (pending, indexed, failed).
/// - **reindex**: status field reflects re-chunking and re-embedding progress.
/// - **migrate**: status and progress fields reflect embedding migration state.
@Freezed()
abstract class RagJobStatusResponse with _$RagJobStatusResponse {
  const factory RagJobStatusResponse({
    /// Timestamp when job was submitted (RFC3339)
    @JsonKey(name: 'created_at') required String createdAt,

    /// Job identifier (ULID) for this async operation
    @JsonKey(name: 'job_id') required String jobId,

    /// Operation type: "ingest", "reindex", or "migrate"
    required RagJobKind kind,

    /// Current job state
    required RagJobState state,

    /// Associated collection ID (for migrate only; absent for ingest/reindex)
    @JsonKey(name: 'collection_id') String? collectionId,

    /// Associated document ID (for ingest/reindex only; absent for migrate)
    @JsonKey(name: 'document_id') String? documentId,

    /// Error message if state = failed
    String? error,

    /// Progress details (only for migrate operations; null for ingest/reindex)
    RagJobProgress? progress,
  }) = _RagJobStatusResponse;

  factory RagJobStatusResponse.fromJson(Map<String, Object?> json) =>
      _$RagJobStatusResponseFromJson(json);
}
