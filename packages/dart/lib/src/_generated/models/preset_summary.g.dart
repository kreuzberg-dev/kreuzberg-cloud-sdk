// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'preset_summary.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PresetSummary _$PresetSummaryFromJson(Map<String, dynamic> json) =>
    _PresetSummary(
      category: PresetCategory.fromJson(json['category'] as String),
      description: json['description'] as String,
      emitCitations: json['emit_citations'] as bool,
      fingerprint: json['fingerprint'] as String,
      id: json['id'] as String,
      preferredCallMode: PresetCallMode.fromJson(
        json['preferred_call_mode'] as String,
      ),
      schemaName: json['schema_name'] as String,
      version: json['version'] as String,
      tags: (json['tags'] as List<dynamic>?)?.map((e) => e as String).toList(),
    );

Map<String, dynamic> _$PresetSummaryToJson(_PresetSummary instance) =>
    <String, dynamic>{
      'category': instance.category,
      'description': instance.description,
      'emit_citations': instance.emitCitations,
      'fingerprint': instance.fingerprint,
      'id': instance.id,
      'preferred_call_mode': instance.preferredCallMode,
      'schema_name': instance.schemaName,
      'version': instance.version,
      'tags': instance.tags,
    };
