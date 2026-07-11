// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'llm_config.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_LlmConfig _$LlmConfigFromJson(Map<String, dynamic> json) => _LlmConfig(
  model: json['model'] as String,
  apiKey: json['api_key'] as String?,
  baseUrl: json['base_url'] as String?,
  maxRetries: (json['max_retries'] as num?)?.toInt(),
  maxTokens: (json['max_tokens'] as num?)?.toInt(),
  temperature: (json['temperature'] as num?)?.toDouble(),
  timeoutSecs: (json['timeout_secs'] as num?)?.toInt(),
  useManaged: json['use_managed'] as bool?,
);

Map<String, dynamic> _$LlmConfigToJson(_LlmConfig instance) =>
    <String, dynamic>{
      'model': instance.model,
      'api_key': instance.apiKey,
      'base_url': instance.baseUrl,
      'max_retries': instance.maxRetries,
      'max_tokens': instance.maxTokens,
      'temperature': instance.temperature,
      'timeout_secs': instance.timeoutSecs,
      'use_managed': instance.useManaged,
    };
