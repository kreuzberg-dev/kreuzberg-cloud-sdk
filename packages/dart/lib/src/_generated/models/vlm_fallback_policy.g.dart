// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vlm_fallback_policy.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VlmFallbackPolicyDisabled _$VlmFallbackPolicyDisabledFromJson(
  Map<String, dynamic> json,
) => VlmFallbackPolicyDisabled($type: json['mode'] as String?);

Map<String, dynamic> _$VlmFallbackPolicyDisabledToJson(
  VlmFallbackPolicyDisabled instance,
) => <String, dynamic>{'mode': instance.$type};

VlmFallbackPolicyOnLowQuality _$VlmFallbackPolicyOnLowQualityFromJson(
  Map<String, dynamic> json,
) => VlmFallbackPolicyOnLowQuality(
  qualityThreshold: (json['quality_threshold'] as num).toDouble(),
  $type: json['mode'] as String?,
);

Map<String, dynamic> _$VlmFallbackPolicyOnLowQualityToJson(
  VlmFallbackPolicyOnLowQuality instance,
) => <String, dynamic>{
  'quality_threshold': instance.qualityThreshold,
  'mode': instance.$type,
};

VlmFallbackPolicyAlways _$VlmFallbackPolicyAlwaysFromJson(
  Map<String, dynamic> json,
) => VlmFallbackPolicyAlways($type: json['mode'] as String?);

Map<String, dynamic> _$VlmFallbackPolicyAlwaysToJson(
  VlmFallbackPolicyAlways instance,
) => <String, dynamic>{'mode': instance.$type};
