// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'delete_documents_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DeleteDocumentsResponse {

/// Number of documents deleted
@JsonKey(name: 'deleted_count') int get deletedCount;
/// Create a copy of DeleteDocumentsResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DeleteDocumentsResponseCopyWith<DeleteDocumentsResponse> get copyWith => _$DeleteDocumentsResponseCopyWithImpl<DeleteDocumentsResponse>(this as DeleteDocumentsResponse, _$identity);

  /// Serializes this DeleteDocumentsResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DeleteDocumentsResponse&&(identical(other.deletedCount, deletedCount) || other.deletedCount == deletedCount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,deletedCount);

@override
String toString() {
  return 'DeleteDocumentsResponse(deletedCount: $deletedCount)';
}


}

/// @nodoc
abstract mixin class $DeleteDocumentsResponseCopyWith<$Res>  {
  factory $DeleteDocumentsResponseCopyWith(DeleteDocumentsResponse value, $Res Function(DeleteDocumentsResponse) _then) = _$DeleteDocumentsResponseCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'deleted_count') int deletedCount
});




}
/// @nodoc
class _$DeleteDocumentsResponseCopyWithImpl<$Res>
    implements $DeleteDocumentsResponseCopyWith<$Res> {
  _$DeleteDocumentsResponseCopyWithImpl(this._self, this._then);

  final DeleteDocumentsResponse _self;
  final $Res Function(DeleteDocumentsResponse) _then;

/// Create a copy of DeleteDocumentsResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? deletedCount = null,}) {
  return _then(_self.copyWith(
deletedCount: null == deletedCount ? _self.deletedCount : deletedCount // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [DeleteDocumentsResponse].
extension DeleteDocumentsResponsePatterns on DeleteDocumentsResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DeleteDocumentsResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DeleteDocumentsResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DeleteDocumentsResponse value)  $default,){
final _that = this;
switch (_that) {
case _DeleteDocumentsResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DeleteDocumentsResponse value)?  $default,){
final _that = this;
switch (_that) {
case _DeleteDocumentsResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'deleted_count')  int deletedCount)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DeleteDocumentsResponse() when $default != null:
return $default(_that.deletedCount);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'deleted_count')  int deletedCount)  $default,) {final _that = this;
switch (_that) {
case _DeleteDocumentsResponse():
return $default(_that.deletedCount);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'deleted_count')  int deletedCount)?  $default,) {final _that = this;
switch (_that) {
case _DeleteDocumentsResponse() when $default != null:
return $default(_that.deletedCount);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DeleteDocumentsResponse implements DeleteDocumentsResponse {
  const _DeleteDocumentsResponse({@JsonKey(name: 'deleted_count') required this.deletedCount});
  factory _DeleteDocumentsResponse.fromJson(Map<String, dynamic> json) => _$DeleteDocumentsResponseFromJson(json);

/// Number of documents deleted
@override@JsonKey(name: 'deleted_count') final  int deletedCount;

/// Create a copy of DeleteDocumentsResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DeleteDocumentsResponseCopyWith<_DeleteDocumentsResponse> get copyWith => __$DeleteDocumentsResponseCopyWithImpl<_DeleteDocumentsResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DeleteDocumentsResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DeleteDocumentsResponse&&(identical(other.deletedCount, deletedCount) || other.deletedCount == deletedCount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,deletedCount);

@override
String toString() {
  return 'DeleteDocumentsResponse(deletedCount: $deletedCount)';
}


}

/// @nodoc
abstract mixin class _$DeleteDocumentsResponseCopyWith<$Res> implements $DeleteDocumentsResponseCopyWith<$Res> {
  factory _$DeleteDocumentsResponseCopyWith(_DeleteDocumentsResponse value, $Res Function(_DeleteDocumentsResponse) _then) = __$DeleteDocumentsResponseCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'deleted_count') int deletedCount
});




}
/// @nodoc
class __$DeleteDocumentsResponseCopyWithImpl<$Res>
    implements _$DeleteDocumentsResponseCopyWith<$Res> {
  __$DeleteDocumentsResponseCopyWithImpl(this._self, this._then);

  final _DeleteDocumentsResponse _self;
  final $Res Function(_DeleteDocumentsResponse) _then;

/// Create a copy of DeleteDocumentsResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? deletedCount = null,}) {
  return _then(_DeleteDocumentsResponse(
deletedCount: null == deletedCount ? _self.deletedCount : deletedCount // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
