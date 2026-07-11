// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_collection_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CreateCollectionResponse _$CreateCollectionResponseFromJson(
  Map<String, dynamic> json,
) => _CreateCollectionResponse(
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
);

Map<String, dynamic> _$CreateCollectionResponseToJson(
  _CreateCollectionResponse instance,
) => <String, dynamic>{
  'distance_metric': instance.distanceMetric,
  'embedding_dim': instance.embeddingDim,
  'id': instance.id,
  'index_method': instance.indexMethod,
  'name': instance.name,
  'chunking_config': instance.chunkingConfig,
  'embedding_source': instance.embeddingSource,
  'quota_max_documents': instance.quotaMaxDocuments,
  'rerank_default': instance.rerankDefault,
};
