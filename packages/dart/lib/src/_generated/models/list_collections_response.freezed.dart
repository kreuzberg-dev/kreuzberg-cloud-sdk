// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'list_collections_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ListCollectionsResponse {

/// List of collections
 List<CollectionResponse> get collections;/// Maximum results per page
 int get limit;/// Number of results skipped
 int get offset;/// Total number of collections for this project
 int get total;
/// Create a copy of ListCollectionsResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ListCollectionsResponseCopyWith<ListCollectionsResponse> get copyWith => _$ListCollectionsResponseCopyWithImpl<ListCollectionsResponse>(this as ListCollectionsResponse, _$identity);

  /// Serializes this ListCollectionsResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ListCollectionsResponse&&const DeepCollectionEquality().equals(other.collections, collections)&&(identical(other.limit, limit) || other.limit == limit)&&(identical(other.offset, offset) || other.offset == offset)&&(identical(other.total, total) || other.total == total));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(collections),limit,offset,total);

@override
String toString() {
  return 'ListCollectionsResponse(collections: $collections, limit: $limit, offset: $offset, total: $total)';
}


}

/// @nodoc
abstract mixin class $ListCollectionsResponseCopyWith<$Res>  {
  factory $ListCollectionsResponseCopyWith(ListCollectionsResponse value, $Res Function(ListCollectionsResponse) _then) = _$ListCollectionsResponseCopyWithImpl;
@useResult
$Res call({
 List<CollectionResponse> collections, int limit, int offset, int total
});




}
/// @nodoc
class _$ListCollectionsResponseCopyWithImpl<$Res>
    implements $ListCollectionsResponseCopyWith<$Res> {
  _$ListCollectionsResponseCopyWithImpl(this._self, this._then);

  final ListCollectionsResponse _self;
  final $Res Function(ListCollectionsResponse) _then;

/// Create a copy of ListCollectionsResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? collections = null,Object? limit = null,Object? offset = null,Object? total = null,}) {
  return _then(_self.copyWith(
collections: null == collections ? _self.collections : collections // ignore: cast_nullable_to_non_nullable
as List<CollectionResponse>,limit: null == limit ? _self.limit : limit // ignore: cast_nullable_to_non_nullable
as int,offset: null == offset ? _self.offset : offset // ignore: cast_nullable_to_non_nullable
as int,total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [ListCollectionsResponse].
extension ListCollectionsResponsePatterns on ListCollectionsResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ListCollectionsResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ListCollectionsResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ListCollectionsResponse value)  $default,){
final _that = this;
switch (_that) {
case _ListCollectionsResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ListCollectionsResponse value)?  $default,){
final _that = this;
switch (_that) {
case _ListCollectionsResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<CollectionResponse> collections,  int limit,  int offset,  int total)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ListCollectionsResponse() when $default != null:
return $default(_that.collections,_that.limit,_that.offset,_that.total);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<CollectionResponse> collections,  int limit,  int offset,  int total)  $default,) {final _that = this;
switch (_that) {
case _ListCollectionsResponse():
return $default(_that.collections,_that.limit,_that.offset,_that.total);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<CollectionResponse> collections,  int limit,  int offset,  int total)?  $default,) {final _that = this;
switch (_that) {
case _ListCollectionsResponse() when $default != null:
return $default(_that.collections,_that.limit,_that.offset,_that.total);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ListCollectionsResponse implements ListCollectionsResponse {
  const _ListCollectionsResponse({required final  List<CollectionResponse> collections, required this.limit, required this.offset, required this.total}): _collections = collections;
  factory _ListCollectionsResponse.fromJson(Map<String, dynamic> json) => _$ListCollectionsResponseFromJson(json);

/// List of collections
 final  List<CollectionResponse> _collections;
/// List of collections
@override List<CollectionResponse> get collections {
  if (_collections is EqualUnmodifiableListView) return _collections;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_collections);
}

/// Maximum results per page
@override final  int limit;
/// Number of results skipped
@override final  int offset;
/// Total number of collections for this project
@override final  int total;

/// Create a copy of ListCollectionsResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ListCollectionsResponseCopyWith<_ListCollectionsResponse> get copyWith => __$ListCollectionsResponseCopyWithImpl<_ListCollectionsResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ListCollectionsResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ListCollectionsResponse&&const DeepCollectionEquality().equals(other._collections, _collections)&&(identical(other.limit, limit) || other.limit == limit)&&(identical(other.offset, offset) || other.offset == offset)&&(identical(other.total, total) || other.total == total));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_collections),limit,offset,total);

@override
String toString() {
  return 'ListCollectionsResponse(collections: $collections, limit: $limit, offset: $offset, total: $total)';
}


}

/// @nodoc
abstract mixin class _$ListCollectionsResponseCopyWith<$Res> implements $ListCollectionsResponseCopyWith<$Res> {
  factory _$ListCollectionsResponseCopyWith(_ListCollectionsResponse value, $Res Function(_ListCollectionsResponse) _then) = __$ListCollectionsResponseCopyWithImpl;
@override @useResult
$Res call({
 List<CollectionResponse> collections, int limit, int offset, int total
});




}
/// @nodoc
class __$ListCollectionsResponseCopyWithImpl<$Res>
    implements _$ListCollectionsResponseCopyWith<$Res> {
  __$ListCollectionsResponseCopyWithImpl(this._self, this._then);

  final _ListCollectionsResponse _self;
  final $Res Function(_ListCollectionsResponse) _then;

/// Create a copy of ListCollectionsResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? collections = null,Object? limit = null,Object? offset = null,Object? total = null,}) {
  return _then(_ListCollectionsResponse(
collections: null == collections ? _self._collections : collections // ignore: cast_nullable_to_non_nullable
as List<CollectionResponse>,limit: null == limit ? _self.limit : limit // ignore: cast_nullable_to_non_nullable
as int,offset: null == offset ? _self.offset : offset // ignore: cast_nullable_to_non_nullable
as int,total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
