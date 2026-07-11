// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'collection_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CollectionResponse _$CollectionResponseFromJson(
  Map<String, dynamic> json,
) => _CollectionResponse(
  distanceMetric: json['distance_metric'] as String,
  embeddingDim: (json['embedding_dim'] as num).toInt(),
  id: json['id'] as String,
  indexMethod: json['index_method'] as String,
  name: json['name'] as String,
  chunkingConfig: json['chunking_config'] == null
      ? null
      : CollectionChunkingConfig.fromJson(
          json['chunking_config'] as Map<String, dynamic>,
        ),
  embeddingSource: json['embedding_source'] as String?,
  quotaMaxDocuments: (json['quota_max_documents'] as num?)?.toInt(),
  rerankDefault: json['rerank_default'] == null
      ? null
      : RerankerSpec.fromJson(json['rerank_default'] as Map<String, dynamic>),
  stats: json['stats'] == null
      ? null
      : CollectionStatsResponse.fromJson(json['stats'] as Map<String, dynamic>),
);

Map<String, dynamic> _$CollectionResponseToJson(_CollectionResponse instance) =>
    <String, dynamic>{
      'distance_metric': instance.distanceMetric,
      'embedding_dim': instance.embeddingDim,
      'id': instance.id,
      'index_method': instance.indexMethod,
      'name': instance.name,
      'chunking_config': instance.chunkingConfig,
      'embedding_source': instance.embeddingSource,
      'quota_max_documents': instance.quotaMaxDocuments,
      'rerank_default': instance.rerankDefault,
      'stats': instance.stats,
    };
