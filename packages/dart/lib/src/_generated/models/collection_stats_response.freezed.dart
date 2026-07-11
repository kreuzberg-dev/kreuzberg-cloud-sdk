// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'collection_stats_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CollectionStatsResponse {

/// Total chunks across all documents
@JsonKey(name: 'chunk_count') int get chunkCount;/// Total documents in collection
@JsonKey(name: 'document_count') int get documentCount;/// Last ingestion timestamp (RFC3339)
@JsonKey(name: 'last_ingested_at') String? get lastIngestedAt;
/// Create a copy of CollectionStatsResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CollectionStatsResponseCopyWith<CollectionStatsResponse> get copyWith => _$CollectionStatsResponseCopyWithImpl<CollectionStatsResponse>(this as CollectionStatsResponse, _$identity);

  /// Serializes this CollectionStatsResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CollectionStatsResponse&&(identical(other.chunkCount, chunkCount) || other.chunkCount == chunkCount)&&(identical(other.documentCount, documentCount) || other.documentCount == documentCount)&&(identical(other.lastIngestedAt, lastIngestedAt) || other.lastIngestedAt == lastIngestedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,chunkCount,documentCount,lastIngestedAt);

@override
String toString() {
  return 'CollectionStatsResponse(chunkCount: $chunkCount, documentCount: $documentCount, lastIngestedAt: $lastIngestedAt)';
}


}

/// @nodoc
abstract mixin class $CollectionStatsResponseCopyWith<$Res>  {
  factory $CollectionStatsResponseCopyWith(CollectionStatsResponse value, $Res Function(CollectionStatsResponse) _then) = _$CollectionStatsResponseCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'chunk_count') int chunkCount,@JsonKey(name: 'document_count') int documentCount,@JsonKey(name: 'last_ingested_at') String? lastIngestedAt
});




}
/// @nodoc
class _$CollectionStatsResponseCopyWithImpl<$Res>
    implements $CollectionStatsResponseCopyWith<$Res> {
  _$CollectionStatsResponseCopyWithImpl(this._self, this._then);

  final CollectionStatsResponse _self;
  final $Res Function(CollectionStatsResponse) _then;

/// Create a copy of CollectionStatsResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? chunkCount = null,Object? documentCount = null,Object? lastIngestedAt = freezed,}) {
  return _then(_self.copyWith(
chunkCount: null == chunkCount ? _self.chunkCount : chunkCount // ignore: cast_nullable_to_non_nullable
as int,documentCount: null == documentCount ? _self.documentCount : documentCount // ignore: cast_nullable_to_non_nullable
as int,lastIngestedAt: freezed == lastIngestedAt ? _self.lastIngestedAt : lastIngestedAt // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [CollectionStatsResponse].
extension CollectionStatsResponsePatterns on CollectionStatsResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CollectionStatsResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CollectionStatsResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CollectionStatsResponse value)  $default,){
final _that = this;
switch (_that) {
case _CollectionStatsResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CollectionStatsResponse value)?  $default,){
final _that = this;
switch (_that) {
case _CollectionStatsResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'chunk_count')  int chunkCount, @JsonKey(name: 'document_count')  int documentCount, @JsonKey(name: 'last_ingested_at')  String? lastIngestedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CollectionStatsResponse() when $default != null:
return $default(_that.chunkCount,_that.documentCount,_that.lastIngestedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'chunk_count')  int chunkCount, @JsonKey(name: 'document_count')  int documentCount, @JsonKey(name: 'last_ingested_at')  String? lastIngestedAt)  $default,) {final _that = this;
switch (_that) {
case _CollectionStatsResponse():
return $default(_that.chunkCount,_that.documentCount,_that.lastIngestedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'chunk_count')  int chunkCount, @JsonKey(name: 'document_count')  int documentCount, @JsonKey(name: 'last_ingested_at')  String? lastIngestedAt)?  $default,) {final _that = this;
switch (_that) {
case _CollectionStatsResponse() when $default != null:
return $default(_that.chunkCount,_that.documentCount,_that.lastIngestedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CollectionStatsResponse implements CollectionStatsResponse {
  const _CollectionStatsResponse({@JsonKey(name: 'chunk_count') required this.chunkCount, @JsonKey(name: 'document_count') required this.documentCount, @JsonKey(name: 'last_ingested_at') this.lastIngestedAt});
  factory _CollectionStatsResponse.fromJson(Map<String, dynamic> json) => _$CollectionStatsResponseFromJson(json);

/// Total chunks across all documents
@override@JsonKey(name: 'chunk_count') final  int chunkCount;
/// Total documents in collection
@override@JsonKey(name: 'document_count') final  int documentCount;
/// Last ingestion timestamp (RFC3339)
@override@JsonKey(name: 'last_ingested_at') final  String? lastIngestedAt;

/// Create a copy of CollectionStatsResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CollectionStatsResponseCopyWith<_CollectionStatsResponse> get copyWith => __$CollectionStatsResponseCopyWithImpl<_CollectionStatsResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CollectionStatsResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CollectionStatsResponse&&(identical(other.chunkCount, chunkCount) || other.chunkCount == chunkCount)&&(identical(other.documentCount, documentCount) || other.documentCount == documentCount)&&(identical(other.lastIngestedAt, lastIngestedAt) || other.lastIngestedAt == lastIngestedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,chunkCount,documentCount,lastIngestedAt);

@override
String toString() {
  return 'CollectionStatsResponse(chunkCount: $chunkCount, documentCount: $documentCount, lastIngestedAt: $lastIngestedAt)';
}


}

/// @nodoc
abstract mixin class _$CollectionStatsResponseCopyWith<$Res> implements $CollectionStatsResponseCopyWith<$Res> {
  factory _$CollectionStatsResponseCopyWith(_CollectionStatsResponse value, $Res Function(_CollectionStatsResponse) _then) = __$CollectionStatsResponseCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'chunk_count') int chunkCount,@JsonKey(name: 'document_count') int documentCount,@JsonKey(name: 'last_ingested_at') String? lastIngestedAt
});




}
/// @nodoc
class __$CollectionStatsResponseCopyWithImpl<$Res>
    implements _$CollectionStatsResponseCopyWith<$Res> {
  __$CollectionStatsResponseCopyWithImpl(this._self, this._then);

  final _CollectionStatsResponse _self;
  final $Res Function(_CollectionStatsResponse) _then;

/// Create a copy of CollectionStatsResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? chunkCount = null,Object? documentCount = null,Object? lastIngestedAt = freezed,}) {
  return _then(_CollectionStatsResponse(
chunkCount: null == chunkCount ? _self.chunkCount : chunkCount // ignore: cast_nullable_to_non_nullable
as int,documentCount: null == documentCount ? _self.documentCount : documentCount // ignore: cast_nullable_to_non_nullable
as int,lastIngestedAt: freezed == lastIngestedAt ? _self.lastIngestedAt : lastIngestedAt // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
