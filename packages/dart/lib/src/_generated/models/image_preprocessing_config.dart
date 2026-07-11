// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'image_preprocessing_config.freezed.dart';
part 'image_preprocessing_config.g.dart';

/// Image preprocessing configuration for OCR.
///
/// These settings control how images are preprocessed before OCR to improve.
/// text recognition quality. Different preprocessing strategies work better.
/// for different document types.
@Freezed()
abstract class ImagePreprocessingConfig with _$ImagePreprocessingConfig {
  const factory ImagePreprocessingConfig({
    /// Auto-detect and correct image rotation.
    @JsonKey(name: 'auto_rotate') @Default(false) bool autoRotate,

    /// Binarization method: "otsu", "sauvola", "adaptive".
    @JsonKey(name: 'binarization_method')
    @Default('otsu')
    String binarizationMethod,

    /// Enhance contrast for better text visibility.
    @JsonKey(name: 'contrast_enhance') @Default(false) bool contrastEnhance,

    /// Remove noise from the image.
    @Default(false) bool denoise,

    /// Correct skew (tilted images).
    @Default(true) bool deskew,

    /// Invert colors (white text on black → black on white).
    @JsonKey(name: 'invert_colors') @Default(false) bool invertColors,

    /// Target DPI for the image (300 is standard, 600 for small text).
    @JsonKey(name: 'target_dpi') @Default(300) int targetDpi,
  }) = _ImagePreprocessingConfig;

  factory ImagePreprocessingConfig.fromJson(Map<String, Object?> json) =>
      _$ImagePreprocessingConfigFromJson(json);
}
