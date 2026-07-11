// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'score_breakdown.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ScoreBreakdown _$ScoreBreakdownFromJson(Map<String, dynamic> json) =>
    _ScoreBreakdown(
      primary: PrimaryScore.fromJson(json['primary'] as Map<String, dynamic>),
      rankFinal: (json['rank_final'] as num).toInt(),
      rankPrimary: (json['rank_primary'] as num).toInt(),
      rerank: (json['rerank'] as num?)?.toDouble(),
      rerankFallback: json['rerank_fallback'] as String?,
    );

Map<String, dynamic> _$ScoreBreakdownToJson(_ScoreBreakdown instance) =>
    <String, dynamic>{
      'primary': instance.primary,
      'rank_final': instance.rankFinal,
      'rank_primary': instance.rankPrimary,
      'rerank': instance.rerank,
      'rerank_fallback': instance.rerankFallback,
    };
