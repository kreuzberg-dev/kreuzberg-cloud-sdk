// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'retrieve_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_RetrieveRequest _$RetrieveRequestFromJson(Map<String, dynamic> json) =>
    _RetrieveRequest(
      candidateMultiplier: (json['candidate_multiplier'] as num?)?.toInt(),
      filter: json['filter'],
      groupByDocument: json['group_by_document'] as bool?,
      include: json['include'] == null
          ? null
          : IncludeMask.fromJson(json['include'] as Map<String, dynamic>),
      mode: json['mode'] == null
          ? null
          : RetrieveMode.fromJson(json['mode'] as String),
      query: json['query'] as String?,
      queryVector: (json['query_vector'] as List<dynamic>?)
          ?.map((e) => (e as num).toDouble())
          .toList(),
      rerank: json['rerank'] == null
          ? null
          : RerankerSpec.fromJson(json['rerank'] as Map<String, dynamic>),
      topK: (json['top_k'] as num?)?.toInt(),
    );

Map<String, dynamic> _$RetrieveRequestToJson(_RetrieveRequest instance) =>
    <String, dynamic>{
      'candidate_multiplier': instance.candidateMultiplier,
      'filter': instance.filter,
      'group_by_document': instance.groupByDocument,
      'include': instance.include,
      'mode': instance.mode,
      'query': instance.query,
      'query_vector': instance.queryVector,
      'rerank': instance.rerank,
      'top_k': instance.topK,
    };
