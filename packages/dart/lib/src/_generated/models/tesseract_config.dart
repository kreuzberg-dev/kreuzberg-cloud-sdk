// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'image_preprocessing_config.dart';

part 'tesseract_config.freezed.dart';
part 'tesseract_config.g.dart';

/// Tesseract OCR configuration.
///
/// Provides fine-grained control over Tesseract OCR engine parameters.
/// Most users can use the defaults, but these settings allow optimization.
/// for specific document types (invoices, handwriting, etc.).
@Freezed()
abstract class TesseractConfig with _$TesseractConfig {
  const factory TesseractConfig({
    /// Use pre-adapted templates for character classification
    @JsonKey(name: 'classify_use_pre_adapted_templates')
    @Default(true)
    bool classifyUsePreAdaptedTemplates,

    /// Enable automatic table detection and reconstruction
    @JsonKey(name: 'enable_table_detection')
    @Default(true)
    bool enableTableDetection,

    /// Language code(s) for OCR recognition.
    /// Accepts either a single language code ("eng") or a list (["eng", "deu"]).
    /// For Tesseract backend, languages are joined with "+".
    @Default(['eng']) List<String> language,

    /// Enable N-gram language model
    @JsonKey(name: 'language_model_ngram_on')
    @Default(false)
    bool languageModelNgramOn,

    /// Minimum confidence threshold (0.0-100.0).
    ///
    /// Words with confidence below this threshold may be rejected or flagged.
    @JsonKey(name: 'min_confidence') @Default(0) double minConfidence,

    /// OCR Engine Mode (0-3).
    ///
    /// - 0: Legacy engine only.
    /// - 1: Neural nets (LSTM) only (usually best).
    /// - 2: Legacy + LSTM.
    /// - 3: Default (based on what's available).
    @Default(3) int oem,

    /// Output format ("text" or "markdown")
    @JsonKey(name: 'output_format') @Default('markdown') String outputFormat,

    /// Image preprocessing configuration.
    ///
    /// Controls how images are preprocessed before OCR. Can significantly.
    /// improve quality for scanned documents or low-quality images.
    ImagePreprocessingConfig? preprocessing,

    /// Page Segmentation Mode (0-13).
    ///
    /// Common values:.
    /// - 3: Fully automatic page segmentation (native default).
    /// - 6: Assume a single uniform block of text (WASM default — avoids layout-analysis hang).
    /// - 11: Sparse text with no particular order.
    @Default(3) int psm,

    /// Column threshold for table detection (pixels)
    @JsonKey(name: 'table_column_threshold')
    @Default(50)
    int tableColumnThreshold,

    /// Minimum confidence threshold for table detection (0.0-1.0)
    @JsonKey(name: 'table_min_confidence')
    @Default(0)
    double tableMinConfidence,

    /// Row threshold ratio for table detection (0.0-1.0)
    @JsonKey(name: 'table_row_threshold_ratio')
    @Default(0.5)
    double tableRowThresholdRatio,

    /// Blacklist of forbidden characters (empty = none forbidden)
    @JsonKey(name: 'tessedit_char_blacklist')
    @Default('')
    String tesseditCharBlacklist,

    /// Whitelist of allowed characters (empty = all allowed)
    @JsonKey(name: 'tessedit_char_whitelist')
    @Default('')
    String tesseditCharWhitelist,

    /// Don't reject good words during block-level processing
    @JsonKey(name: 'tessedit_dont_blkrej_good_wds')
    @Default(true)
    bool tesseditDontBlkrejGoodWds,

    /// Don't reject good words during row-level processing
    @JsonKey(name: 'tessedit_dont_rowrej_good_wds')
    @Default(true)
    bool tesseditDontRowrejGoodWds,

    /// Enable dictionary correction
    @JsonKey(name: 'tessedit_enable_dict_correction')
    @Default(true)
    bool tesseditEnableDictCorrection,

    /// Use primary language params model
    @JsonKey(name: 'tessedit_use_primary_params_model')
    @Default(true)
    bool tesseditUsePrimaryParamsModel,

    /// Variable-width space detection
    @JsonKey(name: 'textord_space_size_is_variable')
    @Default(true)
    bool textordSpaceSizeIsVariable,

    /// Use adaptive thresholding method
    @JsonKey(name: 'thresholding_method')
    @Default(false)
    bool thresholdingMethod,

    /// Enable OCR result caching
    @JsonKey(name: 'use_cache') @Default(true) bool useCache,
  }) = _TesseractConfig;

  factory TesseractConfig.fromJson(Map<String, Object?> json) =>
      _$TesseractConfigFromJson(json);
}
