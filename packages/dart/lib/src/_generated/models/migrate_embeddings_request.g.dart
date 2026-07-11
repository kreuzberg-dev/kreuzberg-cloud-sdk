// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'migrate_embeddings_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_MigrateEmbeddingsRequest _$MigrateEmbeddingsRequestFromJson(
  Map<String, dynamic> json,
) => _MigrateEmbeddingsRequest(
  targetEmbeddingSource: json['target_embedding_source'] as String,
  targetEmbeddingVersion: (json['target_embedding_version'] as num).toInt(),
  webhook: json['webhook'] == null
      ? null
      : WebhookConfig.fromJson(json['webhook'] as Map<String, dynamic>),
);

Map<String, dynamic> _$MigrateEmbeddingsRequestToJson(
  _MigrateEmbeddingsRequest instance,
) => <String, dynamic>{
  'target_embedding_source': instance.targetEmbeddingSource,
  'target_embedding_version': instance.targetEmbeddingVersion,
  'webhook': instance.webhook,
};
