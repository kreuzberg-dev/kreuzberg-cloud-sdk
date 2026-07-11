// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'vlm_fallback_policy.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
VlmFallbackPolicy _$VlmFallbackPolicyFromJson(
  Map<String, dynamic> json
) {
        switch (json['mode']) {
                  case 'disabled':
          return VlmFallbackPolicyDisabled.fromJson(
            json
          );
                case 'on_low_quality':
          return VlmFallbackPolicyOnLowQuality.fromJson(
            json
          );
                case 'always':
          return VlmFallbackPolicyAlways.fromJson(
            json
          );

          default:
            throw CheckedFromJsonException(
  json,
  'mode',
  'VlmFallbackPolicy',
  'Invalid union type "${json['mode']}"!'
);
        }

}

/// @nodoc
mixin _$VlmFallbackPolicy {



  /// Serializes this VlmFallbackPolicy to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is VlmFallbackPolicy);
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'VlmFallbackPolicy()';
}


}

/// @nodoc
class $VlmFallbackPolicyCopyWith<$Res>  {
$VlmFallbackPolicyCopyWith(VlmFallbackPolicy _, $Res Function(VlmFallbackPolicy) __);
}


/// Adds pattern-matching-related methods to [VlmFallbackPolicy].
extension VlmFallbackPolicyPatterns on VlmFallbackPolicy {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( VlmFallbackPolicyDisabled value)?  disabled,TResult Function( VlmFallbackPolicyOnLowQuality value)?  onLowQuality,TResult Function( VlmFallbackPolicyAlways value)?  always,required TResult orElse(),}){
final _that = this;
switch (_that) {
case VlmFallbackPolicyDisabled() when disabled != null:
return disabled(_that);case VlmFallbackPolicyOnLowQuality() when onLowQuality != null:
return onLowQuality(_that);case VlmFallbackPolicyAlways() when always != null:
return always(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( VlmFallbackPolicyDisabled value)  disabled,required TResult Function( VlmFallbackPolicyOnLowQuality value)  onLowQuality,required TResult Function( VlmFallbackPolicyAlways value)  always,}){
final _that = this;
switch (_that) {
case VlmFallbackPolicyDisabled():
return disabled(_that);case VlmFallbackPolicyOnLowQuality():
return onLowQuality(_that);case VlmFallbackPolicyAlways():
return always(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( VlmFallbackPolicyDisabled value)?  disabled,TResult? Function( VlmFallbackPolicyOnLowQuality value)?  onLowQuality,TResult? Function( VlmFallbackPolicyAlways value)?  always,}){
final _that = this;
switch (_that) {
case VlmFallbackPolicyDisabled() when disabled != null:
return disabled(_that);case VlmFallbackPolicyOnLowQuality() when onLowQuality != null:
return onLowQuality(_that);case VlmFallbackPolicyAlways() when always != null:
return always(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  disabled,TResult Function(@JsonKey(name: 'quality_threshold')  double qualityThreshold)?  onLowQuality,TResult Function()?  always,required TResult orElse(),}) {final _that = this;
switch (_that) {
case VlmFallbackPolicyDisabled() when disabled != null:
return disabled();case VlmFallbackPolicyOnLowQuality() when onLowQuality != null:
return onLowQuality(_that.qualityThreshold);case VlmFallbackPolicyAlways() when always != null:
return always();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  disabled,required TResult Function(@JsonKey(name: 'quality_threshold')  double qualityThreshold)  onLowQuality,required TResult Function()  always,}) {final _that = this;
switch (_that) {
case VlmFallbackPolicyDisabled():
return disabled();case VlmFallbackPolicyOnLowQuality():
return onLowQuality(_that.qualityThreshold);case VlmFallbackPolicyAlways():
return always();}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  disabled,TResult? Function(@JsonKey(name: 'quality_threshold')  double qualityThreshold)?  onLowQuality,TResult? Function()?  always,}) {final _that = this;
switch (_that) {
case VlmFallbackPolicyDisabled() when disabled != null:
return disabled();case VlmFallbackPolicyOnLowQuality() when onLowQuality != null:
return onLowQuality(_that.qualityThreshold);case VlmFallbackPolicyAlways() when always != null:
return always();case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class VlmFallbackPolicyDisabled implements VlmFallbackPolicy {
  const VlmFallbackPolicyDisabled({final  String? $type}): $type = $type ?? 'disabled';
  factory VlmFallbackPolicyDisabled.fromJson(Map<String, dynamic> json) => _$VlmFallbackPolicyDisabledFromJson(json);



@JsonKey(name: 'mode')
final String $type;



@override
Map<String, dynamic> toJson() {
  return _$VlmFallbackPolicyDisabledToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is VlmFallbackPolicyDisabled);
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'VlmFallbackPolicy.disabled()';
}


}




/// @nodoc
@JsonSerializable()

class VlmFallbackPolicyOnLowQuality implements VlmFallbackPolicy {
  const VlmFallbackPolicyOnLowQuality({@JsonKey(name: 'quality_threshold') required this.qualityThreshold, final  String? $type}): $type = $type ?? 'on_low_quality';
  factory VlmFallbackPolicyOnLowQuality.fromJson(Map<String, dynamic> json) => _$VlmFallbackPolicyOnLowQualityFromJson(json);

@JsonKey(name: 'quality_threshold') final  double qualityThreshold;

@JsonKey(name: 'mode')
final String $type;


/// Create a copy of VlmFallbackPolicy
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$VlmFallbackPolicyOnLowQualityCopyWith<VlmFallbackPolicyOnLowQuality> get copyWith => _$VlmFallbackPolicyOnLowQualityCopyWithImpl<VlmFallbackPolicyOnLowQuality>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$VlmFallbackPolicyOnLowQualityToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is VlmFallbackPolicyOnLowQuality&&(identical(other.qualityThreshold, qualityThreshold) || other.qualityThreshold == qualityThreshold));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,qualityThreshold);

@override
String toString() {
  return 'VlmFallbackPolicy.onLowQuality(qualityThreshold: $qualityThreshold)';
}


}

/// @nodoc
abstract mixin class $VlmFallbackPolicyOnLowQualityCopyWith<$Res> implements $VlmFallbackPolicyCopyWith<$Res> {
  factory $VlmFallbackPolicyOnLowQualityCopyWith(VlmFallbackPolicyOnLowQuality value, $Res Function(VlmFallbackPolicyOnLowQuality) _then) = _$VlmFallbackPolicyOnLowQualityCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'quality_threshold') double qualityThreshold
});




}
/// @nodoc
class _$VlmFallbackPolicyOnLowQualityCopyWithImpl<$Res>
    implements $VlmFallbackPolicyOnLowQualityCopyWith<$Res> {
  _$VlmFallbackPolicyOnLowQualityCopyWithImpl(this._self, this._then);

  final VlmFallbackPolicyOnLowQuality _self;
  final $Res Function(VlmFallbackPolicyOnLowQuality) _then;

/// Create a copy of VlmFallbackPolicy
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? qualityThreshold = null,}) {
  return _then(VlmFallbackPolicyOnLowQuality(
qualityThreshold: null == qualityThreshold ? _self.qualityThreshold : qualityThreshold // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}

/// @nodoc
@JsonSerializable()

class VlmFallbackPolicyAlways implements VlmFallbackPolicy {
  const VlmFallbackPolicyAlways({final  String? $type}): $type = $type ?? 'always';
  factory VlmFallbackPolicyAlways.fromJson(Map<String, dynamic> json) => _$VlmFallbackPolicyAlwaysFromJson(json);



@JsonKey(name: 'mode')
final String $type;



@override
Map<String, dynamic> toJson() {
  return _$VlmFallbackPolicyAlwaysToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is VlmFallbackPolicyAlways);
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'VlmFallbackPolicy.always()';
}


}




// dart format on
