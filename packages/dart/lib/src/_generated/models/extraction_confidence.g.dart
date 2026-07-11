// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'extraction_confidence.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ExtractionConfidence _$ExtractionConfidenceFromJson(
  Map<String, dynamic> json,
) => _ExtractionConfidence(
  combined: (json['combined'] as num).toDouble(),
  schemaCompliance: SchemaCompliance.fromJson(
    json['schema_compliance'] as String,
  ),
  textCoverage: (json['text_coverage'] as num).toDouble(),
  ocrAggregate: (json['ocr_aggregate'] as num?)?.toDouble(),
);

Map<String, dynamic> _$ExtractionConfidenceToJson(
  _ExtractionConfidence instance,
) => <String, dynamic>{
  'combined': instance.combined,
  'schema_compliance': instance.schemaCompliance,
  'text_coverage': instance.textCoverage,
  'ocr_aggregate': instance.ocrAggregate,
};
