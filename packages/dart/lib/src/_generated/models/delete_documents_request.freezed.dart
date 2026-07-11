// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'delete_documents_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DeleteDocumentsRequest {

/// Vectorstore filter expression.
 dynamic get filter;/// List of document UUIDs to delete.
 List<String>? get ids;
/// Create a copy of DeleteDocumentsRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DeleteDocumentsRequestCopyWith<DeleteDocumentsRequest> get copyWith => _$DeleteDocumentsRequestCopyWithImpl<DeleteDocumentsRequest>(this as DeleteDocumentsRequest, _$identity);

  /// Serializes this DeleteDocumentsRequest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DeleteDocumentsRequest&&const DeepCollectionEquality().equals(other.filter, filter)&&const DeepCollectionEquality().equals(other.ids, ids));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(filter),const DeepCollectionEquality().hash(ids));

@override
String toString() {
  return 'DeleteDocumentsRequest(filter: $filter, ids: $ids)';
}


}

/// @nodoc
abstract mixin class $DeleteDocumentsRequestCopyWith<$Res>  {
  factory $DeleteDocumentsRequestCopyWith(DeleteDocumentsRequest value, $Res Function(DeleteDocumentsRequest) _then) = _$DeleteDocumentsRequestCopyWithImpl;
@useResult
$Res call({
 dynamic filter, List<String>? ids
});




}
/// @nodoc
class _$DeleteDocumentsRequestCopyWithImpl<$Res>
    implements $DeleteDocumentsRequestCopyWith<$Res> {
  _$DeleteDocumentsRequestCopyWithImpl(this._self, this._then);

  final DeleteDocumentsRequest _self;
  final $Res Function(DeleteDocumentsRequest) _then;

/// Create a copy of DeleteDocumentsRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? filter = freezed,Object? ids = freezed,}) {
  return _then(_self.copyWith(
filter: freezed == filter ? _self.filter : filter // ignore: cast_nullable_to_non_nullable
as dynamic,ids: freezed == ids ? _self.ids : ids // ignore: cast_nullable_to_non_nullable
as List<String>?,
  ));
}

}


/// Adds pattern-matching-related methods to [DeleteDocumentsRequest].
extension DeleteDocumentsRequestPatterns on DeleteDocumentsRequest {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DeleteDocumentsRequest value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DeleteDocumentsRequest() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DeleteDocumentsRequest value)  $default,){
final _that = this;
switch (_that) {
case _DeleteDocumentsRequest():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DeleteDocumentsRequest value)?  $default,){
final _that = this;
switch (_that) {
case _DeleteDocumentsRequest() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( dynamic filter,  List<String>? ids)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DeleteDocumentsRequest() when $default != null:
return $default(_that.filter,_that.ids);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( dynamic filter,  List<String>? ids)  $default,) {final _that = this;
switch (_that) {
case _DeleteDocumentsRequest():
return $default(_that.filter,_that.ids);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( dynamic filter,  List<String>? ids)?  $default,) {final _that = this;
switch (_that) {
case _DeleteDocumentsRequest() when $default != null:
return $default(_that.filter,_that.ids);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DeleteDocumentsRequest implements DeleteDocumentsRequest {
  const _DeleteDocumentsRequest({this.filter, final  List<String>? ids}): _ids = ids;
  factory _DeleteDocumentsRequest.fromJson(Map<String, dynamic> json) => _$DeleteDocumentsRequestFromJson(json);

/// Vectorstore filter expression.
@override final  dynamic filter;
/// List of document UUIDs to delete.
 final  List<String>? _ids;
/// List of document UUIDs to delete.
@override List<String>? get ids {
  final value = _ids;
  if (value == null) return null;
  if (_ids is EqualUnmodifiableListView) return _ids;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of DeleteDocumentsRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DeleteDocumentsRequestCopyWith<_DeleteDocumentsRequest> get copyWith => __$DeleteDocumentsRequestCopyWithImpl<_DeleteDocumentsRequest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DeleteDocumentsRequestToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DeleteDocumentsRequest&&const DeepCollectionEquality().equals(other.filter, filter)&&const DeepCollectionEquality().equals(other._ids, _ids));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(filter),const DeepCollectionEquality().hash(_ids));

@override
String toString() {
  return 'DeleteDocumentsRequest(filter: $filter, ids: $ids)';
}


}

/// @nodoc
abstract mixin class _$DeleteDocumentsRequestCopyWith<$Res> implements $DeleteDocumentsRequestCopyWith<$Res> {
  factory _$DeleteDocumentsRequestCopyWith(_DeleteDocumentsRequest value, $Res Function(_DeleteDocumentsRequest) _then) = __$DeleteDocumentsRequestCopyWithImpl;
@override @useResult
$Res call({
 dynamic filter, List<String>? ids
});




}
/// @nodoc
class __$DeleteDocumentsRequestCopyWithImpl<$Res>
    implements _$DeleteDocumentsRequestCopyWith<$Res> {
  __$DeleteDocumentsRequestCopyWithImpl(this._self, this._then);

  final _DeleteDocumentsRequest _self;
  final $Res Function(_DeleteDocumentsRequest) _then;

/// Create a copy of DeleteDocumentsRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? filter = freezed,Object? ids = freezed,}) {
  return _then(_DeleteDocumentsRequest(
filter: freezed == filter ? _self.filter : filter // ignore: cast_nullable_to_non_nullable
as dynamic,ids: freezed == ids ? _self._ids : ids // ignore: cast_nullable_to_non_nullable
as List<String>?,
  ));
}


}

// dart format on
