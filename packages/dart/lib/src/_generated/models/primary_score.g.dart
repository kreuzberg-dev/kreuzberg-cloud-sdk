// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'primary_score.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PrimaryScoreVector _$PrimaryScoreVectorFromJson(Map<String, dynamic> json) =>
    PrimaryScoreVector(
      score: (json['score'] as num).toDouble(),
      $type: json['kind'] as String?,
    );

Map<String, dynamic> _$PrimaryScoreVectorToJson(PrimaryScoreVector instance) =>
    <String, dynamic>{'score': instance.score, 'kind': instance.$type};

PrimaryScoreFullText _$PrimaryScoreFullTextFromJson(
  Map<String, dynamic> json,
) => PrimaryScoreFullText(
  score: (json['score'] as num).toDouble(),
  $type: json['kind'] as String?,
);

Map<String, dynamic> _$PrimaryScoreFullTextToJson(
  PrimaryScoreFullText instance,
) => <String, dynamic>{'score': instance.score, 'kind': instance.$type};

PrimaryScoreHybrid _$PrimaryScoreHybridFromJson(Map<String, dynamic> json) =>
    PrimaryScoreHybrid(
      vector: (json['vector'] as num).toDouble(),
      fullText: (json['full_text'] as num).toDouble(),
      rrf: (json['rrf'] as num).toDouble(),
      $type: json['kind'] as String?,
    );

Map<String, dynamic> _$PrimaryScoreHybridToJson(PrimaryScoreHybrid instance) =>
    <String, dynamic>{
      'vector': instance.vector,
      'full_text': instance.fullText,
      'rrf': instance.rrf,
      'kind': instance.$type,
    };
