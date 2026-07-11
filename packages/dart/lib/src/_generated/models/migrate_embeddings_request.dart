// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'webhook_config.dart';

part 'migrate_embeddings_request.freezed.dart';
part 'migrate_embeddings_request.g.dart';

/// Request to migrate a collection's embedding source.
@Freezed()
abstract class MigrateEmbeddingsRequest with _$MigrateEmbeddingsRequest {
  const factory MigrateEmbeddingsRequest({
    /// Target embedding source (e.g. "preset:quality", "preset:fast").
    @JsonKey(name: 'target_embedding_source')
    required String targetEmbeddingSource,

    /// Target embedding version (must be > collection's current embedding_version).
    @JsonKey(name: 'target_embedding_version')
    required int targetEmbeddingVersion,

    /// Optional webhook for migration completion/failure delivery.
    WebhookConfig? webhook,
  }) = _MigrateEmbeddingsRequest;

  factory MigrateEmbeddingsRequest.fromJson(Map<String, Object?> json) =>
      _$MigrateEmbeddingsRequestFromJson(json);
}
