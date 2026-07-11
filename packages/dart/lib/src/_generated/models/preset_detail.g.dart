// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'preset_detail.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PresetDetail _$PresetDetailFromJson(Map<String, dynamic> json) =>
    _PresetDetail(
      category: PresetCategory.fromJson(json['category'] as String),
      description: json['description'] as String,
      emitCitations: json['emit_citations'] as bool,
      fingerprint: json['fingerprint'] as String,
      id: json['id'] as String,
      preferredCallMode: PresetCallMode.fromJson(
        json['preferred_call_mode'] as String,
      ),
      schema: json['schema'],
      schemaName: json['schema_name'] as String,
      systemPrompt: json['system_prompt'] as String,
      version: json['version'] as String,
      contextTemplate: json['context_template'] as String?,
      sample: json['sample'] == null
          ? null
          : PresetSampleRef.fromJson(json['sample'] as Map<String, dynamic>),
      tags: (json['tags'] as List<dynamic>?)?.map((e) => e as String).toList(),
    );

Map<String, dynamic> _$PresetDetailToJson(_PresetDetail instance) =>
    <String, dynamic>{
      'category': instance.category,
      'description': instance.description,
      'emit_citations': instance.emitCitations,
      'fingerprint': instance.fingerprint,
      'id': instance.id,
      'preferred_call_mode': instance.preferredCallMode,
      'schema': instance.schema,
      'schema_name': instance.schemaName,
      'system_prompt': instance.systemPrompt,
      'version': instance.version,
      'context_template': instance.contextTemplate,
      'sample': instance.sample,
      'tags': instance.tags,
    };
