// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'retrieve_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_RetrieveResponse _$RetrieveResponseFromJson(Map<String, dynamic> json) =>
    _RetrieveResponse(
      chunks: (json['chunks'] as List<dynamic>)
          .map((e) => RetrievedChunk.fromJson(e as Map<String, dynamic>))
          .toList(),
      latencyBreakdown: LatencyBreakdown.fromJson(
        json['latency_breakdown'] as Map<String, dynamic>,
      ),
      mode: RetrieveMode.fromJson(json['mode'] as String),
      rerankApplied: json['rerank_applied'] == null
          ? null
          : RerankerKind.fromJson(json['rerank_applied'] as String),
    );

Map<String, dynamic> _$RetrieveResponseToJson(_RetrieveResponse instance) =>
    <String, dynamic>{
      'chunks': instance.chunks,
      'latency_breakdown': instance.latencyBreakdown,
      'mode': instance.mode,
      'rerank_applied': instance.rerankApplied,
    };
