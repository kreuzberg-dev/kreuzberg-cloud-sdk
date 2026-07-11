// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'structured_extraction_config.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_StructuredExtractionConfig _$StructuredExtractionConfigFromJson(
  Map<String, dynamic> json,
) => _StructuredExtractionConfig(
  llm: LlmConfig.fromJson(json['llm'] as Map<String, dynamic>),
  schema: json['schema'],
  prompt: json['prompt'] as String?,
  schemaDescription: json['schema_description'] as String?,
  schemaName: json['schema_name'] as String?,
  strict: json['strict'] as bool?,
);

Map<String, dynamic> _$StructuredExtractionConfigToJson(
  _StructuredExtractionConfig instance,
) => <String, dynamic>{
  'llm': instance.llm,
  'schema': instance.schema,
  'prompt': instance.prompt,
  'schema_description': instance.schemaDescription,
  'schema_name': instance.schemaName,
  'strict': instance.strict,
};
