// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tesseract_config.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_TesseractConfig _$TesseractConfigFromJson(
  Map<String, dynamic> json,
) => _TesseractConfig(
  classifyUsePreAdaptedTemplates:
      json['classify_use_pre_adapted_templates'] as bool? ?? true,
  enableTableDetection: json['enable_table_detection'] as bool? ?? true,
  language:
      (json['language'] as List<dynamic>?)?.map((e) => e as String).toList() ??
      const ['eng'],
  languageModelNgramOn: json['language_model_ngram_on'] as bool? ?? false,
  minConfidence: (json['min_confidence'] as num?)?.toDouble() ?? 0,
  oem: (json['oem'] as num?)?.toInt() ?? 3,
  outputFormat: json['output_format'] as String? ?? 'markdown',
  preprocessing: json['preprocessing'] == null
      ? null
      : ImagePreprocessingConfig.fromJson(
          json['preprocessing'] as Map<String, dynamic>,
        ),
  psm: (json['psm'] as num?)?.toInt() ?? 3,
  tableColumnThreshold: (json['table_column_threshold'] as num?)?.toInt() ?? 50,
  tableMinConfidence: (json['table_min_confidence'] as num?)?.toDouble() ?? 0,
  tableRowThresholdRatio:
      (json['table_row_threshold_ratio'] as num?)?.toDouble() ?? 0.5,
  tesseditCharBlacklist: json['tessedit_char_blacklist'] as String? ?? '',
  tesseditCharWhitelist: json['tessedit_char_whitelist'] as String? ?? '',
  tesseditDontBlkrejGoodWds:
      json['tessedit_dont_blkrej_good_wds'] as bool? ?? true,
  tesseditDontRowrejGoodWds:
      json['tessedit_dont_rowrej_good_wds'] as bool? ?? true,
  tesseditEnableDictCorrection:
      json['tessedit_enable_dict_correction'] as bool? ?? true,
  tesseditUsePrimaryParamsModel:
      json['tessedit_use_primary_params_model'] as bool? ?? true,
  textordSpaceSizeIsVariable:
      json['textord_space_size_is_variable'] as bool? ?? true,
  thresholdingMethod: json['thresholding_method'] as bool? ?? false,
  useCache: json['use_cache'] as bool? ?? true,
);

Map<String, dynamic> _$TesseractConfigToJson(
  _TesseractConfig instance,
) => <String, dynamic>{
  'classify_use_pre_adapted_templates': instance.classifyUsePreAdaptedTemplates,
  'enable_table_detection': instance.enableTableDetection,
  'language': instance.language,
  'language_model_ngram_on': instance.languageModelNgramOn,
  'min_confidence': instance.minConfidence,
  'oem': instance.oem,
  'output_format': instance.outputFormat,
  'preprocessing': instance.preprocessing,
  'psm': instance.psm,
  'table_column_threshold': instance.tableColumnThreshold,
  'table_min_confidence': instance.tableMinConfidence,
  'table_row_threshold_ratio': instance.tableRowThresholdRatio,
  'tessedit_char_blacklist': instance.tesseditCharBlacklist,
  'tessedit_char_whitelist': instance.tesseditCharWhitelist,
  'tessedit_dont_blkrej_good_wds': instance.tesseditDontBlkrejGoodWds,
  'tessedit_dont_rowrej_good_wds': instance.tesseditDontRowrejGoodWds,
  'tessedit_enable_dict_correction': instance.tesseditEnableDictCorrection,
  'tessedit_use_primary_params_model': instance.tesseditUsePrimaryParamsModel,
  'textord_space_size_is_variable': instance.textordSpaceSizeIsVariable,
  'thresholding_method': instance.thresholdingMethod,
  'use_cache': instance.useCache,
};
