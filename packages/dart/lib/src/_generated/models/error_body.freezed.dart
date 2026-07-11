// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'error_body.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ErrorBody {

/// Stable string error code (e.g., "rag.vector.dim_mismatch", "not_found")
 String get code;/// Human-readable error message
 String get message;/// Optional detailed error information (context-specific)
 dynamic get details;
/// Create a copy of ErrorBody
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ErrorBodyCopyWith<ErrorBody> get copyWith => _$ErrorBodyCopyWithImpl<ErrorBody>(this as ErrorBody, _$identity);

  /// Serializes this ErrorBody to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ErrorBody&&(identical(other.code, code) || other.code == code)&&(identical(other.message, message) || other.message == message)&&const DeepCollectionEquality().equals(other.details, details));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,code,message,const DeepCollectionEquality().hash(details));

@override
String toString() {
  return 'ErrorBody(code: $code, message: $message, details: $details)';
}


}

/// @nodoc
abstract mixin class $ErrorBodyCopyWith<$Res>  {
  factory $ErrorBodyCopyWith(ErrorBody value, $Res Function(ErrorBody) _then) = _$ErrorBodyCopyWithImpl;
@useResult
$Res call({
 String code, String message, dynamic details
});




}
/// @nodoc
class _$ErrorBodyCopyWithImpl<$Res>
    implements $ErrorBodyCopyWith<$Res> {
  _$ErrorBodyCopyWithImpl(this._self, this._then);

  final ErrorBody _self;
  final $Res Function(ErrorBody) _then;

/// Create a copy of ErrorBody
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? code = null,Object? message = null,Object? details = freezed,}) {
  return _then(_self.copyWith(
code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,details: freezed == details ? _self.details : details // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}

}


/// Adds pattern-matching-related methods to [ErrorBody].
extension ErrorBodyPatterns on ErrorBody {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ErrorBody value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ErrorBody() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ErrorBody value)  $default,){
final _that = this;
switch (_that) {
case _ErrorBody():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ErrorBody value)?  $default,){
final _that = this;
switch (_that) {
case _ErrorBody() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String code,  String message,  dynamic details)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ErrorBody() when $default != null:
return $default(_that.code,_that.message,_that.details);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String code,  String message,  dynamic details)  $default,) {final _that = this;
switch (_that) {
case _ErrorBody():
return $default(_that.code,_that.message,_that.details);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String code,  String message,  dynamic details)?  $default,) {final _that = this;
switch (_that) {
case _ErrorBody() when $default != null:
return $default(_that.code,_that.message,_that.details);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ErrorBody implements ErrorBody {
  const _ErrorBody({required this.code, required this.message, this.details});
  factory _ErrorBody.fromJson(Map<String, dynamic> json) => _$ErrorBodyFromJson(json);

/// Stable string error code (e.g., "rag.vector.dim_mismatch", "not_found")
@override final  String code;
/// Human-readable error message
@override final  String message;
/// Optional detailed error information (context-specific)
@override final  dynamic details;

/// Create a copy of ErrorBody
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ErrorBodyCopyWith<_ErrorBody> get copyWith => __$ErrorBodyCopyWithImpl<_ErrorBody>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ErrorBodyToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ErrorBody&&(identical(other.code, code) || other.code == code)&&(identical(other.message, message) || other.message == message)&&const DeepCollectionEquality().equals(other.details, details));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,code,message,const DeepCollectionEquality().hash(details));

@override
String toString() {
  return 'ErrorBody(code: $code, message: $message, details: $details)';
}


}

/// @nodoc
abstract mixin class _$ErrorBodyCopyWith<$Res> implements $ErrorBodyCopyWith<$Res> {
  factory _$ErrorBodyCopyWith(_ErrorBody value, $Res Function(_ErrorBody) _then) = __$ErrorBodyCopyWithImpl;
@override @useResult
$Res call({
 String code, String message, dynamic details
});




}
/// @nodoc
class __$ErrorBodyCopyWithImpl<$Res>
    implements _$ErrorBodyCopyWith<$Res> {
  __$ErrorBodyCopyWithImpl(this._self, this._then);

  final _ErrorBody _self;
  final $Res Function(_ErrorBody) _then;

/// Create a copy of ErrorBody
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? code = null,Object? message = null,Object? details = freezed,}) {
  return _then(_ErrorBody(
code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,details: freezed == details ? _self.details : details // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}


}

// dart format on
