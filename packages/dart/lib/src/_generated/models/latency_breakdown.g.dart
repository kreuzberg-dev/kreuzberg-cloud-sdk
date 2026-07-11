// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'latency_breakdown.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_LatencyBreakdown _$LatencyBreakdownFromJson(Map<String, dynamic> json) =>
    _LatencyBreakdown(
      retrieveMs: (json['retrieve_ms'] as num).toInt(),
      totalMs: (json['total_ms'] as num).toInt(),
      rerankMs: (json['rerank_ms'] as num?)?.toInt(),
    );

Map<String, dynamic> _$LatencyBreakdownToJson(_LatencyBreakdown instance) =>
    <String, dynamic>{
      'retrieve_ms': instance.retrieveMs,
      'total_ms': instance.totalMs,
      'rerank_ms': instance.rerankMs,
    };
