// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reranker_spec.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RerankerSpecPreset _$RerankerSpecPresetFromJson(Map<String, dynamic> json) =>
    RerankerSpecPreset(
      name: json['name'] as String,
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$RerankerSpecPresetToJson(RerankerSpecPreset instance) =>
    <String, dynamic>{'name': instance.name, 'type': instance.$type};

RerankerSpecLlm _$RerankerSpecLlmFromJson(Map<String, dynamic> json) =>
    RerankerSpecLlm(
      model: json['model'] as String?,
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$RerankerSpecLlmToJson(RerankerSpecLlm instance) =>
    <String, dynamic>{'model': instance.model, 'type': instance.$type};
