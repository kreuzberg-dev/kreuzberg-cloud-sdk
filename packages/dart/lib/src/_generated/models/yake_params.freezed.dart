// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'yake_params.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$YakeParams {

/// Window size for co-occurrence analysis (default: 2).
///
/// Controls the context window for computing co-occurrence statistics.
@JsonKey(name: 'window_size') int get windowSize;
/// Create a copy of YakeParams
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$YakeParamsCopyWith<YakeParams> get copyWith => _$YakeParamsCopyWithImpl<YakeParams>(this as YakeParams, _$identity);

  /// Serializes this YakeParams to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is YakeParams&&(identical(other.windowSize, windowSize) || other.windowSize == windowSize));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,windowSize);

@override
String toString() {
  return 'YakeParams(windowSize: $windowSize)';
}


}

/// @nodoc
abstract mixin class $YakeParamsCopyWith<$Res>  {
  factory $YakeParamsCopyWith(YakeParams value, $Res Function(YakeParams) _then) = _$YakeParamsCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'window_size') int windowSize
});




}
/// @nodoc
class _$YakeParamsCopyWithImpl<$Res>
    implements $YakeParamsCopyWith<$Res> {
  _$YakeParamsCopyWithImpl(this._self, this._then);

  final YakeParams _self;
  final $Res Function(YakeParams) _then;

/// Create a copy of YakeParams
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? windowSize = null,}) {
  return _then(_self.copyWith(
windowSize: null == windowSize ? _self.windowSize : windowSize // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [YakeParams].
extension YakeParamsPatterns on YakeParams {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _YakeParams value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _YakeParams() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _YakeParams value)  $default,){
final _that = this;
switch (_that) {
case _YakeParams():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _YakeParams value)?  $default,){
final _that = this;
switch (_that) {
case _YakeParams() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'window_size')  int windowSize)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _YakeParams() when $default != null:
return $default(_that.windowSize);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'window_size')  int windowSize)  $default,) {final _that = this;
switch (_that) {
case _YakeParams():
return $default(_that.windowSize);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'window_size')  int windowSize)?  $default,) {final _that = this;
switch (_that) {
case _YakeParams() when $default != null:
return $default(_that.windowSize);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _YakeParams implements YakeParams {
  const _YakeParams({@JsonKey(name: 'window_size') required this.windowSize});
  factory _YakeParams.fromJson(Map<String, dynamic> json) => _$YakeParamsFromJson(json);

/// Window size for co-occurrence analysis (default: 2).
///
/// Controls the context window for computing co-occurrence statistics.
@override@JsonKey(name: 'window_size') final  int windowSize;

/// Create a copy of YakeParams
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$YakeParamsCopyWith<_YakeParams> get copyWith => __$YakeParamsCopyWithImpl<_YakeParams>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$YakeParamsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _YakeParams&&(identical(other.windowSize, windowSize) || other.windowSize == windowSize));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,windowSize);

@override
String toString() {
  return 'YakeParams(windowSize: $windowSize)';
}


}

/// @nodoc
abstract mixin class _$YakeParamsCopyWith<$Res> implements $YakeParamsCopyWith<$Res> {
  factory _$YakeParamsCopyWith(_YakeParams value, $Res Function(_YakeParams) _then) = __$YakeParamsCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'window_size') int windowSize
});




}
/// @nodoc
class __$YakeParamsCopyWithImpl<$Res>
    implements _$YakeParamsCopyWith<$Res> {
  __$YakeParamsCopyWithImpl(this._self, this._then);

  final _YakeParams _self;
  final $Res Function(_YakeParams) _then;

/// Create a copy of YakeParams
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? windowSize = null,}) {
  return _then(_YakeParams(
windowSize: null == windowSize ? _self.windowSize : windowSize // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
