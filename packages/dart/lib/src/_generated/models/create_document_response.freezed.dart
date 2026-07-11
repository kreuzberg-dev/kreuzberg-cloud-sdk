// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_document_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CreateDocumentResponse {

/// Number of chunks created
@JsonKey(name: 'chunk_count') int get chunkCount;/// Collection name
 String get collection;/// Unique document identifier
@JsonKey(name: 'document_id') String get documentId;/// Embedding dimension (from collection spec)
@JsonKey(name: 'embedding_dim') int get embeddingDim;/// Ingestion timestamp (RFC3339)
@JsonKey(name: 'ingested_at') String get ingestedAt;/// Caller-supplied external ID (if provided)
@JsonKey(name: 'external_id') String? get externalId;
/// Create a copy of CreateDocumentResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreateDocumentResponseCopyWith<CreateDocumentResponse> get copyWith => _$CreateDocumentResponseCopyWithImpl<CreateDocumentResponse>(this as CreateDocumentResponse, _$identity);

  /// Serializes this CreateDocumentResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateDocumentResponse&&(identical(other.chunkCount, chunkCount) || other.chunkCount == chunkCount)&&(identical(other.collection, collection) || other.collection == collection)&&(identical(other.documentId, documentId) || other.documentId == documentId)&&(identical(other.embeddingDim, embeddingDim) || other.embeddingDim == embeddingDim)&&(identical(other.ingestedAt, ingestedAt) || other.ingestedAt == ingestedAt)&&(identical(other.externalId, externalId) || other.externalId == externalId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,chunkCount,collection,documentId,embeddingDim,ingestedAt,externalId);

@override
String toString() {
  return 'CreateDocumentResponse(chunkCount: $chunkCount, collection: $collection, documentId: $documentId, embeddingDim: $embeddingDim, ingestedAt: $ingestedAt, externalId: $externalId)';
}


}

/// @nodoc
abstract mixin class $CreateDocumentResponseCopyWith<$Res>  {
  factory $CreateDocumentResponseCopyWith(CreateDocumentResponse value, $Res Function(CreateDocumentResponse) _then) = _$CreateDocumentResponseCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'chunk_count') int chunkCount, String collection,@JsonKey(name: 'document_id') String documentId,@JsonKey(name: 'embedding_dim') int embeddingDim,@JsonKey(name: 'ingested_at') String ingestedAt,@JsonKey(name: 'external_id') String? externalId
});




}
/// @nodoc
class _$CreateDocumentResponseCopyWithImpl<$Res>
    implements $CreateDocumentResponseCopyWith<$Res> {
  _$CreateDocumentResponseCopyWithImpl(this._self, this._then);

  final CreateDocumentResponse _self;
  final $Res Function(CreateDocumentResponse) _then;

/// Create a copy of CreateDocumentResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? chunkCount = null,Object? collection = null,Object? documentId = null,Object? embeddingDim = null,Object? ingestedAt = null,Object? externalId = freezed,}) {
  return _then(_self.copyWith(
chunkCount: null == chunkCount ? _self.chunkCount : chunkCount // ignore: cast_nullable_to_non_nullable
as int,collection: null == collection ? _self.collection : collection // ignore: cast_nullable_to_non_nullable
as String,documentId: null == documentId ? _self.documentId : documentId // ignore: cast_nullable_to_non_nullable
as String,embeddingDim: null == embeddingDim ? _self.embeddingDim : embeddingDim // ignore: cast_nullable_to_non_nullable
as int,ingestedAt: null == ingestedAt ? _self.ingestedAt : ingestedAt // ignore: cast_nullable_to_non_nullable
as String,externalId: freezed == externalId ? _self.externalId : externalId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [CreateDocumentResponse].
extension CreateDocumentResponsePatterns on CreateDocumentResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CreateDocumentResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CreateDocumentResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CreateDocumentResponse value)  $default,){
final _that = this;
switch (_that) {
case _CreateDocumentResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CreateDocumentResponse value)?  $default,){
final _that = this;
switch (_that) {
case _CreateDocumentResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'chunk_count')  int chunkCount,  String collection, @JsonKey(name: 'document_id')  String documentId, @JsonKey(name: 'embedding_dim')  int embeddingDim, @JsonKey(name: 'ingested_at')  String ingestedAt, @JsonKey(name: 'external_id')  String? externalId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CreateDocumentResponse() when $default != null:
return $default(_that.chunkCount,_that.collection,_that.documentId,_that.embeddingDim,_that.ingestedAt,_that.externalId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'chunk_count')  int chunkCount,  String collection, @JsonKey(name: 'document_id')  String documentId, @JsonKey(name: 'embedding_dim')  int embeddingDim, @JsonKey(name: 'ingested_at')  String ingestedAt, @JsonKey(name: 'external_id')  String? externalId)  $default,) {final _that = this;
switch (_that) {
case _CreateDocumentResponse():
return $default(_that.chunkCount,_that.collection,_that.documentId,_that.embeddingDim,_that.ingestedAt,_that.externalId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'chunk_count')  int chunkCount,  String collection, @JsonKey(name: 'document_id')  String documentId, @JsonKey(name: 'embedding_dim')  int embeddingDim, @JsonKey(name: 'ingested_at')  String ingestedAt, @JsonKey(name: 'external_id')  String? externalId)?  $default,) {final _that = this;
switch (_that) {
case _CreateDocumentResponse() when $default != null:
return $default(_that.chunkCount,_that.collection,_that.documentId,_that.embeddingDim,_that.ingestedAt,_that.externalId);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CreateDocumentResponse implements CreateDocumentResponse {
  const _CreateDocumentResponse({@JsonKey(name: 'chunk_count') required this.chunkCount, required this.collection, @JsonKey(name: 'document_id') required this.documentId, @JsonKey(name: 'embedding_dim') required this.embeddingDim, @JsonKey(name: 'ingested_at') required this.ingestedAt, @JsonKey(name: 'external_id') this.externalId});
  factory _CreateDocumentResponse.fromJson(Map<String, dynamic> json) => _$CreateDocumentResponseFromJson(json);

/// Number of chunks created
@override@JsonKey(name: 'chunk_count') final  int chunkCount;
/// Collection name
@override final  String collection;
/// Unique document identifier
@override@JsonKey(name: 'document_id') final  String documentId;
/// Embedding dimension (from collection spec)
@override@JsonKey(name: 'embedding_dim') final  int embeddingDim;
/// Ingestion timestamp (RFC3339)
@override@JsonKey(name: 'ingested_at') final  String ingestedAt;
/// Caller-supplied external ID (if provided)
@override@JsonKey(name: 'external_id') final  String? externalId;

/// Create a copy of CreateDocumentResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreateDocumentResponseCopyWith<_CreateDocumentResponse> get copyWith => __$CreateDocumentResponseCopyWithImpl<_CreateDocumentResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CreateDocumentResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreateDocumentResponse&&(identical(other.chunkCount, chunkCount) || other.chunkCount == chunkCount)&&(identical(other.collection, collection) || other.collection == collection)&&(identical(other.documentId, documentId) || other.documentId == documentId)&&(identical(other.embeddingDim, embeddingDim) || other.embeddingDim == embeddingDim)&&(identical(other.ingestedAt, ingestedAt) || other.ingestedAt == ingestedAt)&&(identical(other.externalId, externalId) || other.externalId == externalId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,chunkCount,collection,documentId,embeddingDim,ingestedAt,externalId);

@override
String toString() {
  return 'CreateDocumentResponse(chunkCount: $chunkCount, collection: $collection, documentId: $documentId, embeddingDim: $embeddingDim, ingestedAt: $ingestedAt, externalId: $externalId)';
}


}

/// @nodoc
abstract mixin class _$CreateDocumentResponseCopyWith<$Res> implements $CreateDocumentResponseCopyWith<$Res> {
  factory _$CreateDocumentResponseCopyWith(_CreateDocumentResponse value, $Res Function(_CreateDocumentResponse) _then) = __$CreateDocumentResponseCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'chunk_count') int chunkCount, String collection,@JsonKey(name: 'document_id') String documentId,@JsonKey(name: 'embedding_dim') int embeddingDim,@JsonKey(name: 'ingested_at') String ingestedAt,@JsonKey(name: 'external_id') String? externalId
});




}
/// @nodoc
class __$CreateDocumentResponseCopyWithImpl<$Res>
    implements _$CreateDocumentResponseCopyWith<$Res> {
  __$CreateDocumentResponseCopyWithImpl(this._self, this._then);

  final _CreateDocumentResponse _self;
  final $Res Function(_CreateDocumentResponse) _then;

/// Create a copy of CreateDocumentResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? chunkCount = null,Object? collection = null,Object? documentId = null,Object? embeddingDim = null,Object? ingestedAt = null,Object? externalId = freezed,}) {
  return _then(_CreateDocumentResponse(
chunkCount: null == chunkCount ? _self.chunkCount : chunkCount // ignore: cast_nullable_to_non_nullable
as int,collection: null == collection ? _self.collection : collection // ignore: cast_nullable_to_non_nullable
as String,documentId: null == documentId ? _self.documentId : documentId // ignore: cast_nullable_to_non_nullable
as String,embeddingDim: null == embeddingDim ? _self.embeddingDim : embeddingDim // ignore: cast_nullable_to_non_nullable
as int,ingestedAt: null == ingestedAt ? _self.ingestedAt : ingestedAt // ignore: cast_nullable_to_non_nullable
as String,externalId: freezed == externalId ? _self.externalId : externalId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
