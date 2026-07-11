// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_collection_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CreateCollectionRequest _$CreateCollectionRequestFromJson(
  Map<String, dynamic> json,
) => _CreateCollectionRequest(
  embeddingDim: (json['embedding_dim'] as num).toInt(),
  name: json['name'] as String,
  chunkingConfig: json['chunking_config'] == null
      ? null
      : CollectionChunkingConfig.fromJson(
          json['chunking_config'] as Map<String, dynamic>,
        ),
  distanceMetric: json['distance_metric'] as String?,
  embeddingSource: json['embedding_source'] as String?,
  indexMethod: json['index_method'] as String?,
  labelClassifierThreshold: (json['label_classifier_threshold'] as num?)
      ?.toDouble(),
  labelVocabulary: (json['label_vocabulary'] as List<dynamic>?)
      ?.map((e) => e as String)
      .toList(),
  quotaMaxDocuments: (json['quota_max_documents'] as num?)?.toInt(),
  rerankDefault: json['rerank_default'] == null
      ? null
      : RerankerSpec.fromJson(json['rerank_default'] as Map<String, dynamic>),
);

Map<String, dynamic> _$CreateCollectionRequestToJson(
  _CreateCollectionRequest instance,
) => <String, dynamic>{
  'embedding_dim': instance.embeddingDim,
  'name': instance.name,
  'chunking_config': instance.chunkingConfig,
  'distance_metric': instance.distanceMetric,
  'embedding_source': instance.embeddingSource,
  'index_method': instance.indexMethod,
  'label_classifier_threshold': instance.labelClassifierThreshold,
  'label_vocabulary': instance.labelVocabulary,
  'quota_max_documents': instance.quotaMaxDocuments,
  'rerank_default': instance.rerankDefault,
};
