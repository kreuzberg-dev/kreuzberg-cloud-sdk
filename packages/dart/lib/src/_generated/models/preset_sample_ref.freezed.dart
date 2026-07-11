// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'preset_sample_ref.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PresetSampleRef {

/// URL path (relative to the API root) to fetch the sample input bytes.
@JsonKey(name: 'input_url') String get inputUrl;/// URL path (relative to the API root) to fetch the reference output JSON.
@JsonKey(name: 'output_url') String get outputUrl;
/// Create a copy of PresetSampleRef
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PresetSampleRefCopyWith<PresetSampleRef> get copyWith => _$PresetSampleRefCopyWithImpl<PresetSampleRef>(this as PresetSampleRef, _$identity);

  /// Serializes this PresetSampleRef to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PresetSampleRef&&(identical(other.inputUrl, inputUrl) || other.inputUrl == inputUrl)&&(identical(other.outputUrl, outputUrl) || other.outputUrl == outputUrl));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,inputUrl,outputUrl);

@override
String toString() {
  return 'PresetSampleRef(inputUrl: $inputUrl, outputUrl: $outputUrl)';
}


}

/// @nodoc
abstract mixin class $PresetSampleRefCopyWith<$Res>  {
  factory $PresetSampleRefCopyWith(PresetSampleRef value, $Res Function(PresetSampleRef) _then) = _$PresetSampleRefCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'input_url') String inputUrl,@JsonKey(name: 'output_url') String outputUrl
});




}
/// @nodoc
class _$PresetSampleRefCopyWithImpl<$Res>
    implements $PresetSampleRefCopyWith<$Res> {
  _$PresetSampleRefCopyWithImpl(this._self, this._then);

  final PresetSampleRef _self;
  final $Res Function(PresetSampleRef) _then;

/// Create a copy of PresetSampleRef
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? inputUrl = null,Object? outputUrl = null,}) {
  return _then(_self.copyWith(
inputUrl: null == inputUrl ? _self.inputUrl : inputUrl // ignore: cast_nullable_to_non_nullable
as String,outputUrl: null == outputUrl ? _self.outputUrl : outputUrl // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [PresetSampleRef].
extension PresetSampleRefPatterns on PresetSampleRef {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PresetSampleRef value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PresetSampleRef() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PresetSampleRef value)  $default,){
final _that = this;
switch (_that) {
case _PresetSampleRef():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PresetSampleRef value)?  $default,){
final _that = this;
switch (_that) {
case _PresetSampleRef() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'input_url')  String inputUrl, @JsonKey(name: 'output_url')  String outputUrl)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PresetSampleRef() when $default != null:
return $default(_that.inputUrl,_that.outputUrl);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'input_url')  String inputUrl, @JsonKey(name: 'output_url')  String outputUrl)  $default,) {final _that = this;
switch (_that) {
case _PresetSampleRef():
return $default(_that.inputUrl,_that.outputUrl);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'input_url')  String inputUrl, @JsonKey(name: 'output_url')  String outputUrl)?  $default,) {final _that = this;
switch (_that) {
case _PresetSampleRef() when $default != null:
return $default(_that.inputUrl,_that.outputUrl);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PresetSampleRef implements PresetSampleRef {
  const _PresetSampleRef({@JsonKey(name: 'input_url') required this.inputUrl, @JsonKey(name: 'output_url') required this.outputUrl});
  factory _PresetSampleRef.fromJson(Map<String, dynamic> json) => _$PresetSampleRefFromJson(json);

/// URL path (relative to the API root) to fetch the sample input bytes.
@override@JsonKey(name: 'input_url') final  String inputUrl;
/// URL path (relative to the API root) to fetch the reference output JSON.
@override@JsonKey(name: 'output_url') final  String outputUrl;

/// Create a copy of PresetSampleRef
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PresetSampleRefCopyWith<_PresetSampleRef> get copyWith => __$PresetSampleRefCopyWithImpl<_PresetSampleRef>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PresetSampleRefToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PresetSampleRef&&(identical(other.inputUrl, inputUrl) || other.inputUrl == inputUrl)&&(identical(other.outputUrl, outputUrl) || other.outputUrl == outputUrl));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,inputUrl,outputUrl);

@override
String toString() {
  return 'PresetSampleRef(inputUrl: $inputUrl, outputUrl: $outputUrl)';
}


}

/// @nodoc
abstract mixin class _$PresetSampleRefCopyWith<$Res> implements $PresetSampleRefCopyWith<$Res> {
  factory _$PresetSampleRefCopyWith(_PresetSampleRef value, $Res Function(_PresetSampleRef) _then) = __$PresetSampleRefCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'input_url') String inputUrl,@JsonKey(name: 'output_url') String outputUrl
});




}
/// @nodoc
class __$PresetSampleRefCopyWithImpl<$Res>
    implements _$PresetSampleRefCopyWith<$Res> {
  __$PresetSampleRefCopyWithImpl(this._self, this._then);

  final _PresetSampleRef _self;
  final $Res Function(_PresetSampleRef) _then;

/// Create a copy of PresetSampleRef
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? inputUrl = null,Object? outputUrl = null,}) {
  return _then(_PresetSampleRef(
inputUrl: null == inputUrl ? _self.inputUrl : inputUrl // ignore: cast_nullable_to_non_nullable
as String,outputUrl: null == outputUrl ? _self.outputUrl : outputUrl // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
