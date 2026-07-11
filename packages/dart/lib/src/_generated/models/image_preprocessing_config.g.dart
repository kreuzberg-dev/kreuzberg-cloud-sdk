// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'image_preprocessing_config.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ImagePreprocessingConfig _$ImagePreprocessingConfigFromJson(
  Map<String, dynamic> json,
) => _ImagePreprocessingConfig(
  autoRotate: json['auto_rotate'] as bool? ?? false,
  binarizationMethod: json['binarization_method'] as String? ?? 'otsu',
  contrastEnhance: json['contrast_enhance'] as bool? ?? false,
  denoise: json['denoise'] as bool? ?? false,
  deskew: json['deskew'] as bool? ?? true,
  invertColors: json['invert_colors'] as bool? ?? false,
  targetDpi: (json['target_dpi'] as num?)?.toInt() ?? 300,
);

Map<String, dynamic> _$ImagePreprocessingConfigToJson(
  _ImagePreprocessingConfig instance,
) => <String, dynamic>{
  'auto_rotate': instance.autoRotate,
  'binarization_method': instance.binarizationMethod,
  'contrast_enhance': instance.contrastEnhance,
  'denoise': instance.denoise,
  'deskew': instance.deskew,
  'invert_colors': instance.invertColors,
  'target_dpi': instance.targetDpi,
};
