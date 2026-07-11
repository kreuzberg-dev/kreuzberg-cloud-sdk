// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'rag_job_progress.freezed.dart';
part 'rag_job_progress.g.dart';

/// Progress details for long-running operations (migrate only)
@Freezed()
abstract class RagJobProgress with _$RagJobProgress {
  const factory RagJobProgress({
    /// Current processing phase (for migrate: "dual_write"|"index_build"|"swap"|"cleanup")
    @JsonKey(name: 'current_phase') required String currentPhase,

    /// Documents successfully processed
    @JsonKey(name: 'documents_processed') required int documentsProcessed,

    /// Total documents to process
    @JsonKey(name: 'documents_total') required int documentsTotal,
  }) = _RagJobProgress;

  factory RagJobProgress.fromJson(Map<String, Object?> json) =>
      _$RagJobProgressFromJson(json);
}
