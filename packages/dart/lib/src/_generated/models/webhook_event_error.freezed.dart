// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'webhook_event_error.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$WebhookEventError {

/// Error code string carried from the job's `ErrorInfo` (e.g. "2001").
 String get code;/// Human-readable error message.
 String get message;
/// Create a copy of WebhookEventError
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WebhookEventErrorCopyWith<WebhookEventError> get copyWith => _$WebhookEventErrorCopyWithImpl<WebhookEventError>(this as WebhookEventError, _$identity);

  /// Serializes this WebhookEventError to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WebhookEventError&&(identical(other.code, code) || other.code == code)&&(identical(other.message, message) || other.message == message));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,code,message);

@override
String toString() {
  return 'WebhookEventError(code: $code, message: $message)';
}


}

/// @nodoc
abstract mixin class $WebhookEventErrorCopyWith<$Res>  {
  factory $WebhookEventErrorCopyWith(WebhookEventError value, $Res Function(WebhookEventError) _then) = _$WebhookEventErrorCopyWithImpl;
@useResult
$Res call({
 String code, String message
});




}
/// @nodoc
class _$WebhookEventErrorCopyWithImpl<$Res>
    implements $WebhookEventErrorCopyWith<$Res> {
  _$WebhookEventErrorCopyWithImpl(this._self, this._then);

  final WebhookEventError _self;
  final $Res Function(WebhookEventError) _then;

/// Create a copy of WebhookEventError
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? code = null,Object? message = null,}) {
  return _then(_self.copyWith(
code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [WebhookEventError].
extension WebhookEventErrorPatterns on WebhookEventError {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _WebhookEventError value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _WebhookEventError() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _WebhookEventError value)  $default,){
final _that = this;
switch (_that) {
case _WebhookEventError():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _WebhookEventError value)?  $default,){
final _that = this;
switch (_that) {
case _WebhookEventError() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String code,  String message)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _WebhookEventError() when $default != null:
return $default(_that.code,_that.message);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String code,  String message)  $default,) {final _that = this;
switch (_that) {
case _WebhookEventError():
return $default(_that.code,_that.message);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String code,  String message)?  $default,) {final _that = this;
switch (_that) {
case _WebhookEventError() when $default != null:
return $default(_that.code,_that.message);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _WebhookEventError implements WebhookEventError {
  const _WebhookEventError({required this.code, required this.message});
  factory _WebhookEventError.fromJson(Map<String, dynamic> json) => _$WebhookEventErrorFromJson(json);

/// Error code string carried from the job's `ErrorInfo` (e.g. "2001").
@override final  String code;
/// Human-readable error message.
@override final  String message;

/// Create a copy of WebhookEventError
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WebhookEventErrorCopyWith<_WebhookEventError> get copyWith => __$WebhookEventErrorCopyWithImpl<_WebhookEventError>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$WebhookEventErrorToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _WebhookEventError&&(identical(other.code, code) || other.code == code)&&(identical(other.message, message) || other.message == message));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,code,message);

@override
String toString() {
  return 'WebhookEventError(code: $code, message: $message)';
}


}

/// @nodoc
abstract mixin class _$WebhookEventErrorCopyWith<$Res> implements $WebhookEventErrorCopyWith<$Res> {
  factory _$WebhookEventErrorCopyWith(_WebhookEventError value, $Res Function(_WebhookEventError) _then) = __$WebhookEventErrorCopyWithImpl;
@override @useResult
$Res call({
 String code, String message
});




}
/// @nodoc
class __$WebhookEventErrorCopyWithImpl<$Res>
    implements _$WebhookEventErrorCopyWith<$Res> {
  __$WebhookEventErrorCopyWithImpl(this._self, this._then);

  final _WebhookEventError _self;
  final $Res Function(_WebhookEventError) _then;

/// Create a copy of WebhookEventError
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? code = null,Object? message = null,}) {
  return _then(_WebhookEventError(
code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
