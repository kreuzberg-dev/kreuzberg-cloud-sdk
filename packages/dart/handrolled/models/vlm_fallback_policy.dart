// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'vlm_fallback_policy.freezed.dart';
part 'vlm_fallback_policy.g.dart';

/// VLM fallback policy for OCR operations.
@Freezed(unionKey: 'mode')
sealed class VlmFallbackPolicy with _$VlmFallbackPolicy {
  /// No VLM fallback. Uses single-backend mode only.
  const factory VlmFallbackPolicy.disabled() = VlmFallbackPolicyDisabled;

  /// Try classical OCR first, then fall back to VLM below the quality threshold.
  @FreezedUnionValue('on_low_quality')
  const factory VlmFallbackPolicy.onLowQuality({
    @JsonKey(name: 'quality_threshold') required double qualityThreshold,
  }) = VlmFallbackPolicyOnLowQuality;

  /// Skip classical OCR and send every page directly to VLM.
  const factory VlmFallbackPolicy.always() = VlmFallbackPolicyAlways;

  factory VlmFallbackPolicy.fromJson(Map<String, Object?> json) =>
  _$VlmFallbackPolicyFromJson(json);
}
