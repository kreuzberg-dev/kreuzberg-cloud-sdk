// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tesseract_config.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TesseractConfig {

/// Use pre-adapted templates for character classification
@JsonKey(name: 'classify_use_pre_adapted_templates') bool get classifyUsePreAdaptedTemplates;/// Enable automatic table detection and reconstruction
@JsonKey(name: 'enable_table_detection') bool get enableTableDetection;/// Language code(s) for OCR recognition.
/// Accepts either a single language code ("eng") or a list (["eng", "deu"]).
/// For Tesseract backend, languages are joined with "+".
 List<String> get language;/// Enable N-gram language model
@JsonKey(name: 'language_model_ngram_on') bool get languageModelNgramOn;/// Minimum confidence threshold (0.0-100.0).
///
/// Words with confidence below this threshold may be rejected or flagged.
@JsonKey(name: 'min_confidence') double get minConfidence;/// OCR Engine Mode (0-3).
///
/// - 0: Legacy engine only.
/// - 1: Neural nets (LSTM) only (usually best).
/// - 2: Legacy + LSTM.
/// - 3: Default (based on what's available).
 int get oem;/// Output format ("text" or "markdown")
@JsonKey(name: 'output_format') String get outputFormat;/// Image preprocessing configuration.
///
/// Controls how images are preprocessed before OCR. Can significantly.
/// improve quality for scanned documents or low-quality images.
 ImagePreprocessingConfig? get preprocessing;/// Page Segmentation Mode (0-13).
///
/// Common values:.
/// - 3: Fully automatic page segmentation (native default).
/// - 6: Assume a single uniform block of text (WASM default — avoids layout-analysis hang).
/// - 11: Sparse text with no particular order.
 int get psm;/// Column threshold for table detection (pixels)
@JsonKey(name: 'table_column_threshold') int get tableColumnThreshold;/// Minimum confidence threshold for table detection (0.0-1.0)
@JsonKey(name: 'table_min_confidence') double get tableMinConfidence;/// Row threshold ratio for table detection (0.0-1.0)
@JsonKey(name: 'table_row_threshold_ratio') double get tableRowThresholdRatio;/// Blacklist of forbidden characters (empty = none forbidden)
@JsonKey(name: 'tessedit_char_blacklist') String get tesseditCharBlacklist;/// Whitelist of allowed characters (empty = all allowed)
@JsonKey(name: 'tessedit_char_whitelist') String get tesseditCharWhitelist;/// Don't reject good words during block-level processing
@JsonKey(name: 'tessedit_dont_blkrej_good_wds') bool get tesseditDontBlkrejGoodWds;/// Don't reject good words during row-level processing
@JsonKey(name: 'tessedit_dont_rowrej_good_wds') bool get tesseditDontRowrejGoodWds;/// Enable dictionary correction
@JsonKey(name: 'tessedit_enable_dict_correction') bool get tesseditEnableDictCorrection;/// Use primary language params model
@JsonKey(name: 'tessedit_use_primary_params_model') bool get tesseditUsePrimaryParamsModel;/// Variable-width space detection
@JsonKey(name: 'textord_space_size_is_variable') bool get textordSpaceSizeIsVariable;/// Use adaptive thresholding method
@JsonKey(name: 'thresholding_method') bool get thresholdingMethod;/// Enable OCR result caching
@JsonKey(name: 'use_cache') bool get useCache;
/// Create a copy of TesseractConfig
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TesseractConfigCopyWith<TesseractConfig> get copyWith => _$TesseractConfigCopyWithImpl<TesseractConfig>(this as TesseractConfig, _$identity);

  /// Serializes this TesseractConfig to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TesseractConfig&&(identical(other.classifyUsePreAdaptedTemplates, classifyUsePreAdaptedTemplates) || other.classifyUsePreAdaptedTemplates == classifyUsePreAdaptedTemplates)&&(identical(other.enableTableDetection, enableTableDetection) || other.enableTableDetection == enableTableDetection)&&const DeepCollectionEquality().equals(other.language, language)&&(identical(other.languageModelNgramOn, languageModelNgramOn) || other.languageModelNgramOn == languageModelNgramOn)&&(identical(other.minConfidence, minConfidence) || other.minConfidence == minConfidence)&&(identical(other.oem, oem) || other.oem == oem)&&(identical(other.outputFormat, outputFormat) || other.outputFormat == outputFormat)&&(identical(other.preprocessing, preprocessing) || other.preprocessing == preprocessing)&&(identical(other.psm, psm) || other.psm == psm)&&(identical(other.tableColumnThreshold, tableColumnThreshold) || other.tableColumnThreshold == tableColumnThreshold)&&(identical(other.tableMinConfidence, tableMinConfidence) || other.tableMinConfidence == tableMinConfidence)&&(identical(other.tableRowThresholdRatio, tableRowThresholdRatio) || other.tableRowThresholdRatio == tableRowThresholdRatio)&&(identical(other.tesseditCharBlacklist, tesseditCharBlacklist) || other.tesseditCharBlacklist == tesseditCharBlacklist)&&(identical(other.tesseditCharWhitelist, tesseditCharWhitelist) || other.tesseditCharWhitelist == tesseditCharWhitelist)&&(identical(other.tesseditDontBlkrejGoodWds, tesseditDontBlkrejGoodWds) || other.tesseditDontBlkrejGoodWds == tesseditDontBlkrejGoodWds)&&(identical(other.tesseditDontRowrejGoodWds, tesseditDontRowrejGoodWds) || other.tesseditDontRowrejGoodWds == tesseditDontRowrejGoodWds)&&(identical(other.tesseditEnableDictCorrection, tesseditEnableDictCorrection) || other.tesseditEnableDictCorrection == tesseditEnableDictCorrection)&&(identical(other.tesseditUsePrimaryParamsModel, tesseditUsePrimaryParamsModel) || other.tesseditUsePrimaryParamsModel == tesseditUsePrimaryParamsModel)&&(identical(other.textordSpaceSizeIsVariable, textordSpaceSizeIsVariable) || other.textordSpaceSizeIsVariable == textordSpaceSizeIsVariable)&&(identical(other.thresholdingMethod, thresholdingMethod) || other.thresholdingMethod == thresholdingMethod)&&(identical(other.useCache, useCache) || other.useCache == useCache));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,classifyUsePreAdaptedTemplates,enableTableDetection,const DeepCollectionEquality().hash(language),languageModelNgramOn,minConfidence,oem,outputFormat,preprocessing,psm,tableColumnThreshold,tableMinConfidence,tableRowThresholdRatio,tesseditCharBlacklist,tesseditCharWhitelist,tesseditDontBlkrejGoodWds,tesseditDontRowrejGoodWds,tesseditEnableDictCorrection,tesseditUsePrimaryParamsModel,textordSpaceSizeIsVariable,thresholdingMethod,useCache]);

@override
String toString() {
  return 'TesseractConfig(classifyUsePreAdaptedTemplates: $classifyUsePreAdaptedTemplates, enableTableDetection: $enableTableDetection, language: $language, languageModelNgramOn: $languageModelNgramOn, minConfidence: $minConfidence, oem: $oem, outputFormat: $outputFormat, preprocessing: $preprocessing, psm: $psm, tableColumnThreshold: $tableColumnThreshold, tableMinConfidence: $tableMinConfidence, tableRowThresholdRatio: $tableRowThresholdRatio, tesseditCharBlacklist: $tesseditCharBlacklist, tesseditCharWhitelist: $tesseditCharWhitelist, tesseditDontBlkrejGoodWds: $tesseditDontBlkrejGoodWds, tesseditDontRowrejGoodWds: $tesseditDontRowrejGoodWds, tesseditEnableDictCorrection: $tesseditEnableDictCorrection, tesseditUsePrimaryParamsModel: $tesseditUsePrimaryParamsModel, textordSpaceSizeIsVariable: $textordSpaceSizeIsVariable, thresholdingMethod: $thresholdingMethod, useCache: $useCache)';
}


}

/// @nodoc
abstract mixin class $TesseractConfigCopyWith<$Res>  {
  factory $TesseractConfigCopyWith(TesseractConfig value, $Res Function(TesseractConfig) _then) = _$TesseractConfigCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'classify_use_pre_adapted_templates') bool classifyUsePreAdaptedTemplates,@JsonKey(name: 'enable_table_detection') bool enableTableDetection, List<String> language,@JsonKey(name: 'language_model_ngram_on') bool languageModelNgramOn,@JsonKey(name: 'min_confidence') double minConfidence, int oem,@JsonKey(name: 'output_format') String outputFormat, ImagePreprocessingConfig? preprocessing, int psm,@JsonKey(name: 'table_column_threshold') int tableColumnThreshold,@JsonKey(name: 'table_min_confidence') double tableMinConfidence,@JsonKey(name: 'table_row_threshold_ratio') double tableRowThresholdRatio,@JsonKey(name: 'tessedit_char_blacklist') String tesseditCharBlacklist,@JsonKey(name: 'tessedit_char_whitelist') String tesseditCharWhitelist,@JsonKey(name: 'tessedit_dont_blkrej_good_wds') bool tesseditDontBlkrejGoodWds,@JsonKey(name: 'tessedit_dont_rowrej_good_wds') bool tesseditDontRowrejGoodWds,@JsonKey(name: 'tessedit_enable_dict_correction') bool tesseditEnableDictCorrection,@JsonKey(name: 'tessedit_use_primary_params_model') bool tesseditUsePrimaryParamsModel,@JsonKey(name: 'textord_space_size_is_variable') bool textordSpaceSizeIsVariable,@JsonKey(name: 'thresholding_method') bool thresholdingMethod,@JsonKey(name: 'use_cache') bool useCache
});


$ImagePreprocessingConfigCopyWith<$Res>? get preprocessing;

}
/// @nodoc
class _$TesseractConfigCopyWithImpl<$Res>
    implements $TesseractConfigCopyWith<$Res> {
  _$TesseractConfigCopyWithImpl(this._self, this._then);

  final TesseractConfig _self;
  final $Res Function(TesseractConfig) _then;

/// Create a copy of TesseractConfig
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? classifyUsePreAdaptedTemplates = null,Object? enableTableDetection = null,Object? language = null,Object? languageModelNgramOn = null,Object? minConfidence = null,Object? oem = null,Object? outputFormat = null,Object? preprocessing = freezed,Object? psm = null,Object? tableColumnThreshold = null,Object? tableMinConfidence = null,Object? tableRowThresholdRatio = null,Object? tesseditCharBlacklist = null,Object? tesseditCharWhitelist = null,Object? tesseditDontBlkrejGoodWds = null,Object? tesseditDontRowrejGoodWds = null,Object? tesseditEnableDictCorrection = null,Object? tesseditUsePrimaryParamsModel = null,Object? textordSpaceSizeIsVariable = null,Object? thresholdingMethod = null,Object? useCache = null,}) {
  return _then(_self.copyWith(
classifyUsePreAdaptedTemplates: null == classifyUsePreAdaptedTemplates ? _self.classifyUsePreAdaptedTemplates : classifyUsePreAdaptedTemplates // ignore: cast_nullable_to_non_nullable
as bool,enableTableDetection: null == enableTableDetection ? _self.enableTableDetection : enableTableDetection // ignore: cast_nullable_to_non_nullable
as bool,language: null == language ? _self.language : language // ignore: cast_nullable_to_non_nullable
as List<String>,languageModelNgramOn: null == languageModelNgramOn ? _self.languageModelNgramOn : languageModelNgramOn // ignore: cast_nullable_to_non_nullable
as bool,minConfidence: null == minConfidence ? _self.minConfidence : minConfidence // ignore: cast_nullable_to_non_nullable
as double,oem: null == oem ? _self.oem : oem // ignore: cast_nullable_to_non_nullable
as int,outputFormat: null == outputFormat ? _self.outputFormat : outputFormat // ignore: cast_nullable_to_non_nullable
as String,preprocessing: freezed == preprocessing ? _self.preprocessing : preprocessing // ignore: cast_nullable_to_non_nullable
as ImagePreprocessingConfig?,psm: null == psm ? _self.psm : psm // ignore: cast_nullable_to_non_nullable
as int,tableColumnThreshold: null == tableColumnThreshold ? _self.tableColumnThreshold : tableColumnThreshold // ignore: cast_nullable_to_non_nullable
as int,tableMinConfidence: null == tableMinConfidence ? _self.tableMinConfidence : tableMinConfidence // ignore: cast_nullable_to_non_nullable
as double,tableRowThresholdRatio: null == tableRowThresholdRatio ? _self.tableRowThresholdRatio : tableRowThresholdRatio // ignore: cast_nullable_to_non_nullable
as double,tesseditCharBlacklist: null == tesseditCharBlacklist ? _self.tesseditCharBlacklist : tesseditCharBlacklist // ignore: cast_nullable_to_non_nullable
as String,tesseditCharWhitelist: null == tesseditCharWhitelist ? _self.tesseditCharWhitelist : tesseditCharWhitelist // ignore: cast_nullable_to_non_nullable
as String,tesseditDontBlkrejGoodWds: null == tesseditDontBlkrejGoodWds ? _self.tesseditDontBlkrejGoodWds : tesseditDontBlkrejGoodWds // ignore: cast_nullable_to_non_nullable
as bool,tesseditDontRowrejGoodWds: null == tesseditDontRowrejGoodWds ? _self.tesseditDontRowrejGoodWds : tesseditDontRowrejGoodWds // ignore: cast_nullable_to_non_nullable
as bool,tesseditEnableDictCorrection: null == tesseditEnableDictCorrection ? _self.tesseditEnableDictCorrection : tesseditEnableDictCorrection // ignore: cast_nullable_to_non_nullable
as bool,tesseditUsePrimaryParamsModel: null == tesseditUsePrimaryParamsModel ? _self.tesseditUsePrimaryParamsModel : tesseditUsePrimaryParamsModel // ignore: cast_nullable_to_non_nullable
as bool,textordSpaceSizeIsVariable: null == textordSpaceSizeIsVariable ? _self.textordSpaceSizeIsVariable : textordSpaceSizeIsVariable // ignore: cast_nullable_to_non_nullable
as bool,thresholdingMethod: null == thresholdingMethod ? _self.thresholdingMethod : thresholdingMethod // ignore: cast_nullable_to_non_nullable
as bool,useCache: null == useCache ? _self.useCache : useCache // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}
/// Create a copy of TesseractConfig
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ImagePreprocessingConfigCopyWith<$Res>? get preprocessing {
    if (_self.preprocessing == null) {
    return null;
  }

  return $ImagePreprocessingConfigCopyWith<$Res>(_self.preprocessing!, (value) {
    return _then(_self.copyWith(preprocessing: value));
  });
}
}


/// Adds pattern-matching-related methods to [TesseractConfig].
extension TesseractConfigPatterns on TesseractConfig {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TesseractConfig value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TesseractConfig() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TesseractConfig value)  $default,){
final _that = this;
switch (_that) {
case _TesseractConfig():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TesseractConfig value)?  $default,){
final _that = this;
switch (_that) {
case _TesseractConfig() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'classify_use_pre_adapted_templates')  bool classifyUsePreAdaptedTemplates, @JsonKey(name: 'enable_table_detection')  bool enableTableDetection,  List<String> language, @JsonKey(name: 'language_model_ngram_on')  bool languageModelNgramOn, @JsonKey(name: 'min_confidence')  double minConfidence,  int oem, @JsonKey(name: 'output_format')  String outputFormat,  ImagePreprocessingConfig? preprocessing,  int psm, @JsonKey(name: 'table_column_threshold')  int tableColumnThreshold, @JsonKey(name: 'table_min_confidence')  double tableMinConfidence, @JsonKey(name: 'table_row_threshold_ratio')  double tableRowThresholdRatio, @JsonKey(name: 'tessedit_char_blacklist')  String tesseditCharBlacklist, @JsonKey(name: 'tessedit_char_whitelist')  String tesseditCharWhitelist, @JsonKey(name: 'tessedit_dont_blkrej_good_wds')  bool tesseditDontBlkrejGoodWds, @JsonKey(name: 'tessedit_dont_rowrej_good_wds')  bool tesseditDontRowrejGoodWds, @JsonKey(name: 'tessedit_enable_dict_correction')  bool tesseditEnableDictCorrection, @JsonKey(name: 'tessedit_use_primary_params_model')  bool tesseditUsePrimaryParamsModel, @JsonKey(name: 'textord_space_size_is_variable')  bool textordSpaceSizeIsVariable, @JsonKey(name: 'thresholding_method')  bool thresholdingMethod, @JsonKey(name: 'use_cache')  bool useCache)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TesseractConfig() when $default != null:
return $default(_that.classifyUsePreAdaptedTemplates,_that.enableTableDetection,_that.language,_that.languageModelNgramOn,_that.minConfidence,_that.oem,_that.outputFormat,_that.preprocessing,_that.psm,_that.tableColumnThreshold,_that.tableMinConfidence,_that.tableRowThresholdRatio,_that.tesseditCharBlacklist,_that.tesseditCharWhitelist,_that.tesseditDontBlkrejGoodWds,_that.tesseditDontRowrejGoodWds,_that.tesseditEnableDictCorrection,_that.tesseditUsePrimaryParamsModel,_that.textordSpaceSizeIsVariable,_that.thresholdingMethod,_that.useCache);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'classify_use_pre_adapted_templates')  bool classifyUsePreAdaptedTemplates, @JsonKey(name: 'enable_table_detection')  bool enableTableDetection,  List<String> language, @JsonKey(name: 'language_model_ngram_on')  bool languageModelNgramOn, @JsonKey(name: 'min_confidence')  double minConfidence,  int oem, @JsonKey(name: 'output_format')  String outputFormat,  ImagePreprocessingConfig? preprocessing,  int psm, @JsonKey(name: 'table_column_threshold')  int tableColumnThreshold, @JsonKey(name: 'table_min_confidence')  double tableMinConfidence, @JsonKey(name: 'table_row_threshold_ratio')  double tableRowThresholdRatio, @JsonKey(name: 'tessedit_char_blacklist')  String tesseditCharBlacklist, @JsonKey(name: 'tessedit_char_whitelist')  String tesseditCharWhitelist, @JsonKey(name: 'tessedit_dont_blkrej_good_wds')  bool tesseditDontBlkrejGoodWds, @JsonKey(name: 'tessedit_dont_rowrej_good_wds')  bool tesseditDontRowrejGoodWds, @JsonKey(name: 'tessedit_enable_dict_correction')  bool tesseditEnableDictCorrection, @JsonKey(name: 'tessedit_use_primary_params_model')  bool tesseditUsePrimaryParamsModel, @JsonKey(name: 'textord_space_size_is_variable')  bool textordSpaceSizeIsVariable, @JsonKey(name: 'thresholding_method')  bool thresholdingMethod, @JsonKey(name: 'use_cache')  bool useCache)  $default,) {final _that = this;
switch (_that) {
case _TesseractConfig():
return $default(_that.classifyUsePreAdaptedTemplates,_that.enableTableDetection,_that.language,_that.languageModelNgramOn,_that.minConfidence,_that.oem,_that.outputFormat,_that.preprocessing,_that.psm,_that.tableColumnThreshold,_that.tableMinConfidence,_that.tableRowThresholdRatio,_that.tesseditCharBlacklist,_that.tesseditCharWhitelist,_that.tesseditDontBlkrejGoodWds,_that.tesseditDontRowrejGoodWds,_that.tesseditEnableDictCorrection,_that.tesseditUsePrimaryParamsModel,_that.textordSpaceSizeIsVariable,_that.thresholdingMethod,_that.useCache);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'classify_use_pre_adapted_templates')  bool classifyUsePreAdaptedTemplates, @JsonKey(name: 'enable_table_detection')  bool enableTableDetection,  List<String> language, @JsonKey(name: 'language_model_ngram_on')  bool languageModelNgramOn, @JsonKey(name: 'min_confidence')  double minConfidence,  int oem, @JsonKey(name: 'output_format')  String outputFormat,  ImagePreprocessingConfig? preprocessing,  int psm, @JsonKey(name: 'table_column_threshold')  int tableColumnThreshold, @JsonKey(name: 'table_min_confidence')  double tableMinConfidence, @JsonKey(name: 'table_row_threshold_ratio')  double tableRowThresholdRatio, @JsonKey(name: 'tessedit_char_blacklist')  String tesseditCharBlacklist, @JsonKey(name: 'tessedit_char_whitelist')  String tesseditCharWhitelist, @JsonKey(name: 'tessedit_dont_blkrej_good_wds')  bool tesseditDontBlkrejGoodWds, @JsonKey(name: 'tessedit_dont_rowrej_good_wds')  bool tesseditDontRowrejGoodWds, @JsonKey(name: 'tessedit_enable_dict_correction')  bool tesseditEnableDictCorrection, @JsonKey(name: 'tessedit_use_primary_params_model')  bool tesseditUsePrimaryParamsModel, @JsonKey(name: 'textord_space_size_is_variable')  bool textordSpaceSizeIsVariable, @JsonKey(name: 'thresholding_method')  bool thresholdingMethod, @JsonKey(name: 'use_cache')  bool useCache)?  $default,) {final _that = this;
switch (_that) {
case _TesseractConfig() when $default != null:
return $default(_that.classifyUsePreAdaptedTemplates,_that.enableTableDetection,_that.language,_that.languageModelNgramOn,_that.minConfidence,_that.oem,_that.outputFormat,_that.preprocessing,_that.psm,_that.tableColumnThreshold,_that.tableMinConfidence,_that.tableRowThresholdRatio,_that.tesseditCharBlacklist,_that.tesseditCharWhitelist,_that.tesseditDontBlkrejGoodWds,_that.tesseditDontRowrejGoodWds,_that.tesseditEnableDictCorrection,_that.tesseditUsePrimaryParamsModel,_that.textordSpaceSizeIsVariable,_that.thresholdingMethod,_that.useCache);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TesseractConfig implements TesseractConfig {
  const _TesseractConfig({@JsonKey(name: 'classify_use_pre_adapted_templates') this.classifyUsePreAdaptedTemplates = true, @JsonKey(name: 'enable_table_detection') this.enableTableDetection = true, final  List<String> language = const ['eng'], @JsonKey(name: 'language_model_ngram_on') this.languageModelNgramOn = false, @JsonKey(name: 'min_confidence') this.minConfidence = 0, this.oem = 3, @JsonKey(name: 'output_format') this.outputFormat = 'markdown', this.preprocessing, this.psm = 3, @JsonKey(name: 'table_column_threshold') this.tableColumnThreshold = 50, @JsonKey(name: 'table_min_confidence') this.tableMinConfidence = 0, @JsonKey(name: 'table_row_threshold_ratio') this.tableRowThresholdRatio = 0.5, @JsonKey(name: 'tessedit_char_blacklist') this.tesseditCharBlacklist = '', @JsonKey(name: 'tessedit_char_whitelist') this.tesseditCharWhitelist = '', @JsonKey(name: 'tessedit_dont_blkrej_good_wds') this.tesseditDontBlkrejGoodWds = true, @JsonKey(name: 'tessedit_dont_rowrej_good_wds') this.tesseditDontRowrejGoodWds = true, @JsonKey(name: 'tessedit_enable_dict_correction') this.tesseditEnableDictCorrection = true, @JsonKey(name: 'tessedit_use_primary_params_model') this.tesseditUsePrimaryParamsModel = true, @JsonKey(name: 'textord_space_size_is_variable') this.textordSpaceSizeIsVariable = true, @JsonKey(name: 'thresholding_method') this.thresholdingMethod = false, @JsonKey(name: 'use_cache') this.useCache = true}): _language = language;
  factory _TesseractConfig.fromJson(Map<String, dynamic> json) => _$TesseractConfigFromJson(json);

/// Use pre-adapted templates for character classification
@override@JsonKey(name: 'classify_use_pre_adapted_templates') final  bool classifyUsePreAdaptedTemplates;
/// Enable automatic table detection and reconstruction
@override@JsonKey(name: 'enable_table_detection') final  bool enableTableDetection;
/// Language code(s) for OCR recognition.
/// Accepts either a single language code ("eng") or a list (["eng", "deu"]).
/// For Tesseract backend, languages are joined with "+".
 final  List<String> _language;
/// Language code(s) for OCR recognition.
/// Accepts either a single language code ("eng") or a list (["eng", "deu"]).
/// For Tesseract backend, languages are joined with "+".
@override@JsonKey() List<String> get language {
  if (_language is EqualUnmodifiableListView) return _language;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_language);
}

/// Enable N-gram language model
@override@JsonKey(name: 'language_model_ngram_on') final  bool languageModelNgramOn;
/// Minimum confidence threshold (0.0-100.0).
///
/// Words with confidence below this threshold may be rejected or flagged.
@override@JsonKey(name: 'min_confidence') final  double minConfidence;
/// OCR Engine Mode (0-3).
///
/// - 0: Legacy engine only.
/// - 1: Neural nets (LSTM) only (usually best).
/// - 2: Legacy + LSTM.
/// - 3: Default (based on what's available).
@override@JsonKey() final  int oem;
/// Output format ("text" or "markdown")
@override@JsonKey(name: 'output_format') final  String outputFormat;
/// Image preprocessing configuration.
///
/// Controls how images are preprocessed before OCR. Can significantly.
/// improve quality for scanned documents or low-quality images.
@override final  ImagePreprocessingConfig? preprocessing;
/// Page Segmentation Mode (0-13).
///
/// Common values:.
/// - 3: Fully automatic page segmentation (native default).
/// - 6: Assume a single uniform block of text (WASM default — avoids layout-analysis hang).
/// - 11: Sparse text with no particular order.
@override@JsonKey() final  int psm;
/// Column threshold for table detection (pixels)
@override@JsonKey(name: 'table_column_threshold') final  int tableColumnThreshold;
/// Minimum confidence threshold for table detection (0.0-1.0)
@override@JsonKey(name: 'table_min_confidence') final  double tableMinConfidence;
/// Row threshold ratio for table detection (0.0-1.0)
@override@JsonKey(name: 'table_row_threshold_ratio') final  double tableRowThresholdRatio;
/// Blacklist of forbidden characters (empty = none forbidden)
@override@JsonKey(name: 'tessedit_char_blacklist') final  String tesseditCharBlacklist;
/// Whitelist of allowed characters (empty = all allowed)
@override@JsonKey(name: 'tessedit_char_whitelist') final  String tesseditCharWhitelist;
/// Don't reject good words during block-level processing
@override@JsonKey(name: 'tessedit_dont_blkrej_good_wds') final  bool tesseditDontBlkrejGoodWds;
/// Don't reject good words during row-level processing
@override@JsonKey(name: 'tessedit_dont_rowrej_good_wds') final  bool tesseditDontRowrejGoodWds;
/// Enable dictionary correction
@override@JsonKey(name: 'tessedit_enable_dict_correction') final  bool tesseditEnableDictCorrection;
/// Use primary language params model
@override@JsonKey(name: 'tessedit_use_primary_params_model') final  bool tesseditUsePrimaryParamsModel;
/// Variable-width space detection
@override@JsonKey(name: 'textord_space_size_is_variable') final  bool textordSpaceSizeIsVariable;
/// Use adaptive thresholding method
@override@JsonKey(name: 'thresholding_method') final  bool thresholdingMethod;
/// Enable OCR result caching
@override@JsonKey(name: 'use_cache') final  bool useCache;

/// Create a copy of TesseractConfig
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TesseractConfigCopyWith<_TesseractConfig> get copyWith => __$TesseractConfigCopyWithImpl<_TesseractConfig>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TesseractConfigToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TesseractConfig&&(identical(other.classifyUsePreAdaptedTemplates, classifyUsePreAdaptedTemplates) || other.classifyUsePreAdaptedTemplates == classifyUsePreAdaptedTemplates)&&(identical(other.enableTableDetection, enableTableDetection) || other.enableTableDetection == enableTableDetection)&&const DeepCollectionEquality().equals(other._language, _language)&&(identical(other.languageModelNgramOn, languageModelNgramOn) || other.languageModelNgramOn == languageModelNgramOn)&&(identical(other.minConfidence, minConfidence) || other.minConfidence == minConfidence)&&(identical(other.oem, oem) || other.oem == oem)&&(identical(other.outputFormat, outputFormat) || other.outputFormat == outputFormat)&&(identical(other.preprocessing, preprocessing) || other.preprocessing == preprocessing)&&(identical(other.psm, psm) || other.psm == psm)&&(identical(other.tableColumnThreshold, tableColumnThreshold) || other.tableColumnThreshold == tableColumnThreshold)&&(identical(other.tableMinConfidence, tableMinConfidence) || other.tableMinConfidence == tableMinConfidence)&&(identical(other.tableRowThresholdRatio, tableRowThresholdRatio) || other.tableRowThresholdRatio == tableRowThresholdRatio)&&(identical(other.tesseditCharBlacklist, tesseditCharBlacklist) || other.tesseditCharBlacklist == tesseditCharBlacklist)&&(identical(other.tesseditCharWhitelist, tesseditCharWhitelist) || other.tesseditCharWhitelist == tesseditCharWhitelist)&&(identical(other.tesseditDontBlkrejGoodWds, tesseditDontBlkrejGoodWds) || other.tesseditDontBlkrejGoodWds == tesseditDontBlkrejGoodWds)&&(identical(other.tesseditDontRowrejGoodWds, tesseditDontRowrejGoodWds) || other.tesseditDontRowrejGoodWds == tesseditDontRowrejGoodWds)&&(identical(other.tesseditEnableDictCorrection, tesseditEnableDictCorrection) || other.tesseditEnableDictCorrection == tesseditEnableDictCorrection)&&(identical(other.tesseditUsePrimaryParamsModel, tesseditUsePrimaryParamsModel) || other.tesseditUsePrimaryParamsModel == tesseditUsePrimaryParamsModel)&&(identical(other.textordSpaceSizeIsVariable, textordSpaceSizeIsVariable) || other.textordSpaceSizeIsVariable == textordSpaceSizeIsVariable)&&(identical(other.thresholdingMethod, thresholdingMethod) || other.thresholdingMethod == thresholdingMethod)&&(identical(other.useCache, useCache) || other.useCache == useCache));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,classifyUsePreAdaptedTemplates,enableTableDetection,const DeepCollectionEquality().hash(_language),languageModelNgramOn,minConfidence,oem,outputFormat,preprocessing,psm,tableColumnThreshold,tableMinConfidence,tableRowThresholdRatio,tesseditCharBlacklist,tesseditCharWhitelist,tesseditDontBlkrejGoodWds,tesseditDontRowrejGoodWds,tesseditEnableDictCorrection,tesseditUsePrimaryParamsModel,textordSpaceSizeIsVariable,thresholdingMethod,useCache]);

@override
String toString() {
  return 'TesseractConfig(classifyUsePreAdaptedTemplates: $classifyUsePreAdaptedTemplates, enableTableDetection: $enableTableDetection, language: $language, languageModelNgramOn: $languageModelNgramOn, minConfidence: $minConfidence, oem: $oem, outputFormat: $outputFormat, preprocessing: $preprocessing, psm: $psm, tableColumnThreshold: $tableColumnThreshold, tableMinConfidence: $tableMinConfidence, tableRowThresholdRatio: $tableRowThresholdRatio, tesseditCharBlacklist: $tesseditCharBlacklist, tesseditCharWhitelist: $tesseditCharWhitelist, tesseditDontBlkrejGoodWds: $tesseditDontBlkrejGoodWds, tesseditDontRowrejGoodWds: $tesseditDontRowrejGoodWds, tesseditEnableDictCorrection: $tesseditEnableDictCorrection, tesseditUsePrimaryParamsModel: $tesseditUsePrimaryParamsModel, textordSpaceSizeIsVariable: $textordSpaceSizeIsVariable, thresholdingMethod: $thresholdingMethod, useCache: $useCache)';
}


}

/// @nodoc
abstract mixin class _$TesseractConfigCopyWith<$Res> implements $TesseractConfigCopyWith<$Res> {
  factory _$TesseractConfigCopyWith(_TesseractConfig value, $Res Function(_TesseractConfig) _then) = __$TesseractConfigCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'classify_use_pre_adapted_templates') bool classifyUsePreAdaptedTemplates,@JsonKey(name: 'enable_table_detection') bool enableTableDetection, List<String> language,@JsonKey(name: 'language_model_ngram_on') bool languageModelNgramOn,@JsonKey(name: 'min_confidence') double minConfidence, int oem,@JsonKey(name: 'output_format') String outputFormat, ImagePreprocessingConfig? preprocessing, int psm,@JsonKey(name: 'table_column_threshold') int tableColumnThreshold,@JsonKey(name: 'table_min_confidence') double tableMinConfidence,@JsonKey(name: 'table_row_threshold_ratio') double tableRowThresholdRatio,@JsonKey(name: 'tessedit_char_blacklist') String tesseditCharBlacklist,@JsonKey(name: 'tessedit_char_whitelist') String tesseditCharWhitelist,@JsonKey(name: 'tessedit_dont_blkrej_good_wds') bool tesseditDontBlkrejGoodWds,@JsonKey(name: 'tessedit_dont_rowrej_good_wds') bool tesseditDontRowrejGoodWds,@JsonKey(name: 'tessedit_enable_dict_correction') bool tesseditEnableDictCorrection,@JsonKey(name: 'tessedit_use_primary_params_model') bool tesseditUsePrimaryParamsModel,@JsonKey(name: 'textord_space_size_is_variable') bool textordSpaceSizeIsVariable,@JsonKey(name: 'thresholding_method') bool thresholdingMethod,@JsonKey(name: 'use_cache') bool useCache
});


@override $ImagePreprocessingConfigCopyWith<$Res>? get preprocessing;

}
/// @nodoc
class __$TesseractConfigCopyWithImpl<$Res>
    implements _$TesseractConfigCopyWith<$Res> {
  __$TesseractConfigCopyWithImpl(this._self, this._then);

  final _TesseractConfig _self;
  final $Res Function(_TesseractConfig) _then;

/// Create a copy of TesseractConfig
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? classifyUsePreAdaptedTemplates = null,Object? enableTableDetection = null,Object? language = null,Object? languageModelNgramOn = null,Object? minConfidence = null,Object? oem = null,Object? outputFormat = null,Object? preprocessing = freezed,Object? psm = null,Object? tableColumnThreshold = null,Object? tableMinConfidence = null,Object? tableRowThresholdRatio = null,Object? tesseditCharBlacklist = null,Object? tesseditCharWhitelist = null,Object? tesseditDontBlkrejGoodWds = null,Object? tesseditDontRowrejGoodWds = null,Object? tesseditEnableDictCorrection = null,Object? tesseditUsePrimaryParamsModel = null,Object? textordSpaceSizeIsVariable = null,Object? thresholdingMethod = null,Object? useCache = null,}) {
  return _then(_TesseractConfig(
classifyUsePreAdaptedTemplates: null == classifyUsePreAdaptedTemplates ? _self.classifyUsePreAdaptedTemplates : classifyUsePreAdaptedTemplates // ignore: cast_nullable_to_non_nullable
as bool,enableTableDetection: null == enableTableDetection ? _self.enableTableDetection : enableTableDetection // ignore: cast_nullable_to_non_nullable
as bool,language: null == language ? _self._language : language // ignore: cast_nullable_to_non_nullable
as List<String>,languageModelNgramOn: null == languageModelNgramOn ? _self.languageModelNgramOn : languageModelNgramOn // ignore: cast_nullable_to_non_nullable
as bool,minConfidence: null == minConfidence ? _self.minConfidence : minConfidence // ignore: cast_nullable_to_non_nullable
as double,oem: null == oem ? _self.oem : oem // ignore: cast_nullable_to_non_nullable
as int,outputFormat: null == outputFormat ? _self.outputFormat : outputFormat // ignore: cast_nullable_to_non_nullable
as String,preprocessing: freezed == preprocessing ? _self.preprocessing : preprocessing // ignore: cast_nullable_to_non_nullable
as ImagePreprocessingConfig?,psm: null == psm ? _self.psm : psm // ignore: cast_nullable_to_non_nullable
as int,tableColumnThreshold: null == tableColumnThreshold ? _self.tableColumnThreshold : tableColumnThreshold // ignore: cast_nullable_to_non_nullable
as int,tableMinConfidence: null == tableMinConfidence ? _self.tableMinConfidence : tableMinConfidence // ignore: cast_nullable_to_non_nullable
as double,tableRowThresholdRatio: null == tableRowThresholdRatio ? _self.tableRowThresholdRatio : tableRowThresholdRatio // ignore: cast_nullable_to_non_nullable
as double,tesseditCharBlacklist: null == tesseditCharBlacklist ? _self.tesseditCharBlacklist : tesseditCharBlacklist // ignore: cast_nullable_to_non_nullable
as String,tesseditCharWhitelist: null == tesseditCharWhitelist ? _self.tesseditCharWhitelist : tesseditCharWhitelist // ignore: cast_nullable_to_non_nullable
as String,tesseditDontBlkrejGoodWds: null == tesseditDontBlkrejGoodWds ? _self.tesseditDontBlkrejGoodWds : tesseditDontBlkrejGoodWds // ignore: cast_nullable_to_non_nullable
as bool,tesseditDontRowrejGoodWds: null == tesseditDontRowrejGoodWds ? _self.tesseditDontRowrejGoodWds : tesseditDontRowrejGoodWds // ignore: cast_nullable_to_non_nullable
as bool,tesseditEnableDictCorrection: null == tesseditEnableDictCorrection ? _self.tesseditEnableDictCorrection : tesseditEnableDictCorrection // ignore: cast_nullable_to_non_nullable
as bool,tesseditUsePrimaryParamsModel: null == tesseditUsePrimaryParamsModel ? _self.tesseditUsePrimaryParamsModel : tesseditUsePrimaryParamsModel // ignore: cast_nullable_to_non_nullable
as bool,textordSpaceSizeIsVariable: null == textordSpaceSizeIsVariable ? _self.textordSpaceSizeIsVariable : textordSpaceSizeIsVariable // ignore: cast_nullable_to_non_nullable
as bool,thresholdingMethod: null == thresholdingMethod ? _self.thresholdingMethod : thresholdingMethod // ignore: cast_nullable_to_non_nullable
as bool,useCache: null == useCache ? _self.useCache : useCache // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

/// Create a copy of TesseractConfig
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ImagePreprocessingConfigCopyWith<$Res>? get preprocessing {
    if (_self.preprocessing == null) {
    return null;
  }

  return $ImagePreprocessingConfigCopyWith<$Res>(_self.preprocessing!, (value) {
    return _then(_self.copyWith(preprocessing: value));
  });
}
}

// dart format on
