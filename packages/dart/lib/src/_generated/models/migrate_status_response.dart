// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'migrate_progress.dart';
import 'migrate_status.dart';

part 'migrate_status_response.freezed.dart';
part 'migrate_status_response.g.dart';

/// Status response for migration progress polling.
@Freezed()
abstract class MigrateStatusResponse with _$MigrateStatusResponse {
  const factory MigrateStatusResponse({
    /// Job ID.
    @JsonKey(name: 'job_id') required String jobId,

    /// Current status.
    required MigrateStatus status,

    /// Error message (only when failed).
    String? error,

    /// Progress details (only available when running or completed).
    MigrateProgress? progress,
  }) = _MigrateStatusResponse;

  factory MigrateStatusResponse.fromJson(Map<String, Object?> json) =>
      _$MigrateStatusResponseFromJson(json);
}
