// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'migrate_progress.freezed.dart';
part 'migrate_progress.g.dart';

/// Detailed progress of an ongoing or completed migration.
@Freezed()
abstract class MigrateProgress with _$MigrateProgress {
  const factory MigrateProgress({
    /// Current phase of migration.
    @JsonKey(name: 'current_phase') required String currentPhase,

    /// Documents successfully dual-written to the new version.
    @JsonKey(name: 'documents_dual_written') required int documentsDualWritten,

    /// Total documents to migrate.
    @JsonKey(name: 'documents_total') required int documentsTotal,
  }) = _MigrateProgress;

  factory MigrateProgress.fromJson(Map<String, Object?> json) =>
      _$MigrateProgressFromJson(json);
}
