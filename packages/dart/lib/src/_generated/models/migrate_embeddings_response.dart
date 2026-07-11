// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'migrate_status.dart';

part 'migrate_embeddings_response.freezed.dart';
part 'migrate_embeddings_response.g.dart';

/// Response to a migrate embeddings request.
@Freezed()
abstract class MigrateEmbeddingsResponse with _$MigrateEmbeddingsResponse {
  const factory MigrateEmbeddingsResponse({
    /// Collection being migrated.
    @JsonKey(name: 'collection_id') required String collectionId,

    /// Current embedding source.
    @JsonKey(name: 'from_source') required String fromSource,

    /// Current embedding version.
    @JsonKey(name: 'from_version') required int fromVersion,

    /// Job ID for polling progress.
    @JsonKey(name: 'job_id') required String jobId,

    /// Poll endpoint: `/v1/rag/collections/{name}/migrate-embeddings/{job_id}`.
    required String poll,

    /// Current migration status.
    required MigrateStatus status,

    /// Target embedding source.
    @JsonKey(name: 'to_source') required String toSource,

    /// Target embedding version.
    @JsonKey(name: 'to_version') required int toVersion,
  }) = _MigrateEmbeddingsResponse;

  factory MigrateEmbeddingsResponse.fromJson(Map<String, Object?> json) =>
      _$MigrateEmbeddingsResponseFromJson(json);
}
