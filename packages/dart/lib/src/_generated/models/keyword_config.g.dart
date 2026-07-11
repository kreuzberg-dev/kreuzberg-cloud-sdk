// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'keyword_config.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_KeywordConfig _$KeywordConfigFromJson(Map<String, dynamic> json) =>
    _KeywordConfig(
      algorithm: json['algorithm'] == null
          ? null
          : KeywordAlgorithm.fromJson(json['algorithm'] as String),
      language: json['language'] as String?,
      maxKeywords: (json['max_keywords'] as num?)?.toInt(),
      minScore: (json['min_score'] as num?)?.toDouble(),
      ngramRange: (json['ngram_range'] as List<dynamic>?)
          ?.map((e) => (e as num).toInt())
          .toList(),
      rakeParams: json['rake_params'] == null
          ? null
          : RakeParams.fromJson(json['rake_params'] as Map<String, dynamic>),
      yakeParams: json['yake_params'] == null
          ? null
          : YakeParams.fromJson(json['yake_params'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$KeywordConfigToJson(_KeywordConfig instance) =>
    <String, dynamic>{
      'algorithm': instance.algorithm,
      'language': instance.language,
      'max_keywords': instance.maxKeywords,
      'min_score': instance.minScore,
      'ngram_range': instance.ngramRange,
      'rake_params': instance.rakeParams,
      'yake_params': instance.yakeParams,
    };
