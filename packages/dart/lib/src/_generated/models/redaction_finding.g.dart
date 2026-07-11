// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'redaction_finding.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_RedactionFinding _$RedactionFindingFromJson(Map<String, dynamic> json) =>
    _RedactionFinding(
      category: PiiCategory.fromJson(json['category'] as Map<String, dynamic>),
      end: (json['end'] as num).toInt(),
      replacementToken: json['replacement_token'] as String,
      start: (json['start'] as num).toInt(),
      strategy: RedactionStrategy.fromJson(json['strategy'] as String),
    );

Map<String, dynamic> _$RedactionFindingToJson(_RedactionFinding instance) =>
    <String, dynamic>{
      'category': instance.category,
      'end': instance.end,
      'replacement_token': instance.replacementToken,
      'start': instance.start,
      'strategy': instance.strategy,
    };
