// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'extraction_options.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ExtractionOptions _$ExtractionOptionsFromJson(Map<String, dynamic> json) =>
    _ExtractionOptions(
      context: (json['context'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as String),
      ),
      extractionConfig: json['extraction_config'] == null
          ? null
          : ExtractionConfig.fromJson(
              json['extraction_config'] as Map<String, dynamic>,
            ),
      preset: json['preset'] as String?,
      savedPresetId: json['saved_preset_id'] as String?,
      splitDocuments: json['split_documents'] as bool?,
    );

Map<String, dynamic> _$ExtractionOptionsToJson(_ExtractionOptions instance) =>
    <String, dynamic>{
      'context': instance.context,
      'extraction_config': instance.extractionConfig,
      'preset': instance.preset,
      'saved_preset_id': instance.savedPresetId,
      'split_documents': instance.splitDocuments,
    };
