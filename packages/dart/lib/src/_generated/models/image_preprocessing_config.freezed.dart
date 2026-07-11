// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'image_preprocessing_config.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ImagePreprocessingConfig {

/// Auto-detect and correct image rotation.
@JsonKey(name: 'auto_rotate') bool get autoRotate;/// Binarization method: "otsu", "sauvola", "adaptive".
@JsonKey(name: 'binarization_method') String get binarizationMethod;/// Enhance contrast for better text visibility.
@JsonKey(name: 'contrast_enhance') bool get contrastEnhance;/// Remove noise from the image.
 bool get denoise;/// Correct skew (tilted images).
 bool get deskew;/// Invert colors (white text on black → black on white).
@JsonKey(name: 'invert_colors') bool get invertColors;/// Target DPI for the image (300 is standard, 600 for small text).
@JsonKey(name: 'target_dpi') int get targetDpi;
/// Create a copy of ImagePreprocessingConfig
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ImagePreprocessingConfigCopyWith<ImagePreprocessingConfig> get copyWith => _$ImagePreprocessingConfigCopyWithImpl<ImagePreprocessingConfig>(this as ImagePreprocessingConfig, _$identity);

  /// Serializes this ImagePreprocessingConfig to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ImagePreprocessingConfig&&(identical(other.autoRotate, autoRotate) || other.autoRotate == autoRotate)&&(identical(other.binarizationMethod, binarizationMethod) || other.binarizationMethod == binarizationMethod)&&(identical(other.contrastEnhance, contrastEnhance) || other.contrastEnhance == contrastEnhance)&&(identical(other.denoise, denoise) || other.denoise == denoise)&&(identical(other.deskew, deskew) || other.deskew == deskew)&&(identical(other.invertColors, invertColors) || other.invertColors == invertColors)&&(identical(other.targetDpi, targetDpi) || other.targetDpi == targetDpi));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,autoRotate,binarizationMethod,contrastEnhance,denoise,deskew,invertColors,targetDpi);

@override
String toString() {
  return 'ImagePreprocessingConfig(autoRotate: $autoRotate, binarizationMethod: $binarizationMethod, contrastEnhance: $contrastEnhance, denoise: $denoise, deskew: $deskew, invertColors: $invertColors, targetDpi: $targetDpi)';
}


}

/// @nodoc
abstract mixin class $ImagePreprocessingConfigCopyWith<$Res>  {
  factory $ImagePreprocessingConfigCopyWith(ImagePreprocessingConfig value, $Res Function(ImagePreprocessingConfig) _then) = _$ImagePreprocessingConfigCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'auto_rotate') bool autoRotate,@JsonKey(name: 'binarization_method') String binarizationMethod,@JsonKey(name: 'contrast_enhance') bool contrastEnhance, bool denoise, bool deskew,@JsonKey(name: 'invert_colors') bool invertColors,@JsonKey(name: 'target_dpi') int targetDpi
});




}
/// @nodoc
class _$ImagePreprocessingConfigCopyWithImpl<$Res>
    implements $ImagePreprocessingConfigCopyWith<$Res> {
  _$ImagePreprocessingConfigCopyWithImpl(this._self, this._then);

  final ImagePreprocessingConfig _self;
  final $Res Function(ImagePreprocessingConfig) _then;

/// Create a copy of ImagePreprocessingConfig
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? autoRotate = null,Object? binarizationMethod = null,Object? contrastEnhance = null,Object? denoise = null,Object? deskew = null,Object? invertColors = null,Object? targetDpi = null,}) {
  return _then(_self.copyWith(
autoRotate: null == autoRotate ? _self.autoRotate : autoRotate // ignore: cast_nullable_to_non_nullable
as bool,binarizationMethod: null == binarizationMethod ? _self.binarizationMethod : binarizationMethod // ignore: cast_nullable_to_non_nullable
as String,contrastEnhance: null == contrastEnhance ? _self.contrastEnhance : contrastEnhance // ignore: cast_nullable_to_non_nullable
as bool,denoise: null == denoise ? _self.denoise : denoise // ignore: cast_nullable_to_non_nullable
as bool,deskew: null == deskew ? _self.deskew : deskew // ignore: cast_nullable_to_non_nullable
as bool,invertColors: null == invertColors ? _self.invertColors : invertColors // ignore: cast_nullable_to_non_nullable
as bool,targetDpi: null == targetDpi ? _self.targetDpi : targetDpi // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [ImagePreprocessingConfig].
extension ImagePreprocessingConfigPatterns on ImagePreprocessingConfig {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ImagePreprocessingConfig value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ImagePreprocessingConfig() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ImagePreprocessingConfig value)  $default,){
final _that = this;
switch (_that) {
case _ImagePreprocessingConfig():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ImagePreprocessingConfig value)?  $default,){
final _that = this;
switch (_that) {
case _ImagePreprocessingConfig() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'auto_rotate')  bool autoRotate, @JsonKey(name: 'binarization_method')  String binarizationMethod, @JsonKey(name: 'contrast_enhance')  bool contrastEnhance,  bool denoise,  bool deskew, @JsonKey(name: 'invert_colors')  bool invertColors, @JsonKey(name: 'target_dpi')  int targetDpi)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ImagePreprocessingConfig() when $default != null:
return $default(_that.autoRotate,_that.binarizationMethod,_that.contrastEnhance,_that.denoise,_that.deskew,_that.invertColors,_that.targetDpi);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'auto_rotate')  bool autoRotate, @JsonKey(name: 'binarization_method')  String binarizationMethod, @JsonKey(name: 'contrast_enhance')  bool contrastEnhance,  bool denoise,  bool deskew, @JsonKey(name: 'invert_colors')  bool invertColors, @JsonKey(name: 'target_dpi')  int targetDpi)  $default,) {final _that = this;
switch (_that) {
case _ImagePreprocessingConfig():
return $default(_that.autoRotate,_that.binarizationMethod,_that.contrastEnhance,_that.denoise,_that.deskew,_that.invertColors,_that.targetDpi);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'auto_rotate')  bool autoRotate, @JsonKey(name: 'binarization_method')  String binarizationMethod, @JsonKey(name: 'contrast_enhance')  bool contrastEnhance,  bool denoise,  bool deskew, @JsonKey(name: 'invert_colors')  bool invertColors, @JsonKey(name: 'target_dpi')  int targetDpi)?  $default,) {final _that = this;
switch (_that) {
case _ImagePreprocessingConfig() when $default != null:
return $default(_that.autoRotate,_that.binarizationMethod,_that.contrastEnhance,_that.denoise,_that.deskew,_that.invertColors,_that.targetDpi);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ImagePreprocessingConfig implements ImagePreprocessingConfig {
  const _ImagePreprocessingConfig({@JsonKey(name: 'auto_rotate') this.autoRotate = false, @JsonKey(name: 'binarization_method') this.binarizationMethod = 'otsu', @JsonKey(name: 'contrast_enhance') this.contrastEnhance = false, this.denoise = false, this.deskew = true, @JsonKey(name: 'invert_colors') this.invertColors = false, @JsonKey(name: 'target_dpi') this.targetDpi = 300});
  factory _ImagePreprocessingConfig.fromJson(Map<String, dynamic> json) => _$ImagePreprocessingConfigFromJson(json);

/// Auto-detect and correct image rotation.
@override@JsonKey(name: 'auto_rotate') final  bool autoRotate;
/// Binarization method: "otsu", "sauvola", "adaptive".
@override@JsonKey(name: 'binarization_method') final  String binarizationMethod;
/// Enhance contrast for better text visibility.
@override@JsonKey(name: 'contrast_enhance') final  bool contrastEnhance;
/// Remove noise from the image.
@override@JsonKey() final  bool denoise;
/// Correct skew (tilted images).
@override@JsonKey() final  bool deskew;
/// Invert colors (white text on black → black on white).
@override@JsonKey(name: 'invert_colors') final  bool invertColors;
/// Target DPI for the image (300 is standard, 600 for small text).
@override@JsonKey(name: 'target_dpi') final  int targetDpi;

/// Create a copy of ImagePreprocessingConfig
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ImagePreprocessingConfigCopyWith<_ImagePreprocessingConfig> get copyWith => __$ImagePreprocessingConfigCopyWithImpl<_ImagePreprocessingConfig>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ImagePreprocessingConfigToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ImagePreprocessingConfig&&(identical(other.autoRotate, autoRotate) || other.autoRotate == autoRotate)&&(identical(other.binarizationMethod, binarizationMethod) || other.binarizationMethod == binarizationMethod)&&(identical(other.contrastEnhance, contrastEnhance) || other.contrastEnhance == contrastEnhance)&&(identical(other.denoise, denoise) || other.denoise == denoise)&&(identical(other.deskew, deskew) || other.deskew == deskew)&&(identical(other.invertColors, invertColors) || other.invertColors == invertColors)&&(identical(other.targetDpi, targetDpi) || other.targetDpi == targetDpi));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,autoRotate,binarizationMethod,contrastEnhance,denoise,deskew,invertColors,targetDpi);

@override
String toString() {
  return 'ImagePreprocessingConfig(autoRotate: $autoRotate, binarizationMethod: $binarizationMethod, contrastEnhance: $contrastEnhance, denoise: $denoise, deskew: $deskew, invertColors: $invertColors, targetDpi: $targetDpi)';
}


}

/// @nodoc
abstract mixin class _$ImagePreprocessingConfigCopyWith<$Res> implements $ImagePreprocessingConfigCopyWith<$Res> {
  factory _$ImagePreprocessingConfigCopyWith(_ImagePreprocessingConfig value, $Res Function(_ImagePreprocessingConfig) _then) = __$ImagePreprocessingConfigCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'auto_rotate') bool autoRotate,@JsonKey(name: 'binarization_method') String binarizationMethod,@JsonKey(name: 'contrast_enhance') bool contrastEnhance, bool denoise, bool deskew,@JsonKey(name: 'invert_colors') bool invertColors,@JsonKey(name: 'target_dpi') int targetDpi
});




}
/// @nodoc
class __$ImagePreprocessingConfigCopyWithImpl<$Res>
    implements _$ImagePreprocessingConfigCopyWith<$Res> {
  __$ImagePreprocessingConfigCopyWithImpl(this._self, this._then);

  final _ImagePreprocessingConfig _self;
  final $Res Function(_ImagePreprocessingConfig) _then;

/// Create a copy of ImagePreprocessingConfig
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? autoRotate = null,Object? binarizationMethod = null,Object? contrastEnhance = null,Object? denoise = null,Object? deskew = null,Object? invertColors = null,Object? targetDpi = null,}) {
  return _then(_ImagePreprocessingConfig(
autoRotate: null == autoRotate ? _self.autoRotate : autoRotate // ignore: cast_nullable_to_non_nullable
as bool,binarizationMethod: null == binarizationMethod ? _self.binarizationMethod : binarizationMethod // ignore: cast_nullable_to_non_nullable
as String,contrastEnhance: null == contrastEnhance ? _self.contrastEnhance : contrastEnhance // ignore: cast_nullable_to_non_nullable
as bool,denoise: null == denoise ? _self.denoise : denoise // ignore: cast_nullable_to_non_nullable
as bool,deskew: null == deskew ? _self.deskew : deskew // ignore: cast_nullable_to_non_nullable
as bool,invertColors: null == invertColors ? _self.invertColors : invertColors // ignore: cast_nullable_to_non_nullable
as bool,targetDpi: null == targetDpi ? _self.targetDpi : targetDpi // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
