// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'document_summary.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_DocumentSummary _$DocumentSummaryFromJson(Map<String, dynamic> json) =>
    _DocumentSummary(
      strategy: SummaryStrategy.fromJson(json['strategy'] as String),
      text: json['text'] as String,
      tokenCount: (json['token_count'] as num?)?.toInt(),
    );

Map<String, dynamic> _$DocumentSummaryToJson(_DocumentSummary instance) =>
    <String, dynamic>{
      'strategy': instance.strategy,
      'text': instance.text,
      'token_count': instance.tokenCount,
    };
