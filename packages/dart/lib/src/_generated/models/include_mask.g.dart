// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'include_mask.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_IncludeMask _$IncludeMaskFromJson(Map<String, dynamic> json) => _IncludeMask(
  content: json['content'] as bool?,
  document: json['document'] as bool?,
  scoreBreakdown: json['score_breakdown'] as bool?,
);

Map<String, dynamic> _$IncludeMaskToJson(_IncludeMask instance) =>
    <String, dynamic>{
      'content': instance.content,
      'document': instance.document,
      'score_breakdown': instance.scoreBreakdown,
    };
