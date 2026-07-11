// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'retrieved_chunk.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$RetrievedChunk {

/// Chunk-level metadata.
@JsonKey(name: 'chunk_metadata') dynamic get chunkMetadata;/// Parent document ID.
@JsonKey(name: 'document_id') String get documentId;/// Chunk ID.
 String get id;/// Position within document.
 int get ordinal;/// Effective score after rerank (or primary score when rerank off).
 double get score;/// Chunk content. Present iff `include.content`.
 String? get content;/// Parent document summary. Present iff `include.document`.
 dynamic get document;/// Caller-supplied external_id, if any.
@JsonKey(name: 'external_id') String? get externalId;/// Score detail. Present iff `include.score_breakdown`.
@JsonKey(name: 'score_breakdown') ScoreBreakdown? get scoreBreakdown;
/// Create a copy of RetrievedChunk
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RetrievedChunkCopyWith<RetrievedChunk> get copyWith => _$RetrievedChunkCopyWithImpl<RetrievedChunk>(this as RetrievedChunk, _$identity);

  /// Serializes this RetrievedChunk to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RetrievedChunk&&const DeepCollectionEquality().equals(other.chunkMetadata, chunkMetadata)&&(identical(other.documentId, documentId) || other.documentId == documentId)&&(identical(other.id, id) || other.id == id)&&(identical(other.ordinal, ordinal) || other.ordinal == ordinal)&&(identical(other.score, score) || other.score == score)&&(identical(other.content, content) || other.content == content)&&const DeepCollectionEquality().equals(other.document, document)&&(identical(other.externalId, externalId) || other.externalId == externalId)&&(identical(other.scoreBreakdown, scoreBreakdown) || other.scoreBreakdown == scoreBreakdown));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(chunkMetadata),documentId,id,ordinal,score,content,const DeepCollectionEquality().hash(document),externalId,scoreBreakdown);

@override
String toString() {
  return 'RetrievedChunk(chunkMetadata: $chunkMetadata, documentId: $documentId, id: $id, ordinal: $ordinal, score: $score, content: $content, document: $document, externalId: $externalId, scoreBreakdown: $scoreBreakdown)';
}


}

/// @nodoc
abstract mixin class $RetrievedChunkCopyWith<$Res>  {
  factory $RetrievedChunkCopyWith(RetrievedChunk value, $Res Function(RetrievedChunk) _then) = _$RetrievedChunkCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'chunk_metadata') dynamic chunkMetadata,@JsonKey(name: 'document_id') String documentId, String id, int ordinal, double score, String? content, dynamic document,@JsonKey(name: 'external_id') String? externalId,@JsonKey(name: 'score_breakdown') ScoreBreakdown? scoreBreakdown
});


$ScoreBreakdownCopyWith<$Res>? get scoreBreakdown;

}
/// @nodoc
class _$RetrievedChunkCopyWithImpl<$Res>
    implements $RetrievedChunkCopyWith<$Res> {
  _$RetrievedChunkCopyWithImpl(this._self, this._then);

  final RetrievedChunk _self;
  final $Res Function(RetrievedChunk) _then;

/// Create a copy of RetrievedChunk
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? chunkMetadata = freezed,Object? documentId = null,Object? id = null,Object? ordinal = null,Object? score = null,Object? content = freezed,Object? document = freezed,Object? externalId = freezed,Object? scoreBreakdown = freezed,}) {
  return _then(_self.copyWith(
chunkMetadata: freezed == chunkMetadata ? _self.chunkMetadata : chunkMetadata // ignore: cast_nullable_to_non_nullable
as dynamic,documentId: null == documentId ? _self.documentId : documentId // ignore: cast_nullable_to_non_nullable
as String,id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,ordinal: null == ordinal ? _self.ordinal : ordinal // ignore: cast_nullable_to_non_nullable
as int,score: null == score ? _self.score : score // ignore: cast_nullable_to_non_nullable
as double,content: freezed == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as String?,document: freezed == document ? _self.document : document // ignore: cast_nullable_to_non_nullable
as dynamic,externalId: freezed == externalId ? _self.externalId : externalId // ignore: cast_nullable_to_non_nullable
as String?,scoreBreakdown: freezed == scoreBreakdown ? _self.scoreBreakdown : scoreBreakdown // ignore: cast_nullable_to_non_nullable
as ScoreBreakdown?,
  ));
}
/// Create a copy of RetrievedChunk
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ScoreBreakdownCopyWith<$Res>? get scoreBreakdown {
    if (_self.scoreBreakdown == null) {
    return null;
  }

  return $ScoreBreakdownCopyWith<$Res>(_self.scoreBreakdown!, (value) {
    return _then(_self.copyWith(scoreBreakdown: value));
  });
}
}


/// Adds pattern-matching-related methods to [RetrievedChunk].
extension RetrievedChunkPatterns on RetrievedChunk {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RetrievedChunk value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RetrievedChunk() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RetrievedChunk value)  $default,){
final _that = this;
switch (_that) {
case _RetrievedChunk():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RetrievedChunk value)?  $default,){
final _that = this;
switch (_that) {
case _RetrievedChunk() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'chunk_metadata')  dynamic chunkMetadata, @JsonKey(name: 'document_id')  String documentId,  String id,  int ordinal,  double score,  String? content,  dynamic document, @JsonKey(name: 'external_id')  String? externalId, @JsonKey(name: 'score_breakdown')  ScoreBreakdown? scoreBreakdown)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RetrievedChunk() when $default != null:
return $default(_that.chunkMetadata,_that.documentId,_that.id,_that.ordinal,_that.score,_that.content,_that.document,_that.externalId,_that.scoreBreakdown);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'chunk_metadata')  dynamic chunkMetadata, @JsonKey(name: 'document_id')  String documentId,  String id,  int ordinal,  double score,  String? content,  dynamic document, @JsonKey(name: 'external_id')  String? externalId, @JsonKey(name: 'score_breakdown')  ScoreBreakdown? scoreBreakdown)  $default,) {final _that = this;
switch (_that) {
case _RetrievedChunk():
return $default(_that.chunkMetadata,_that.documentId,_that.id,_that.ordinal,_that.score,_that.content,_that.document,_that.externalId,_that.scoreBreakdown);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'chunk_metadata')  dynamic chunkMetadata, @JsonKey(name: 'document_id')  String documentId,  String id,  int ordinal,  double score,  String? content,  dynamic document, @JsonKey(name: 'external_id')  String? externalId, @JsonKey(name: 'score_breakdown')  ScoreBreakdown? scoreBreakdown)?  $default,) {final _that = this;
switch (_that) {
case _RetrievedChunk() when $default != null:
return $default(_that.chunkMetadata,_that.documentId,_that.id,_that.ordinal,_that.score,_that.content,_that.document,_that.externalId,_that.scoreBreakdown);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _RetrievedChunk implements RetrievedChunk {
  const _RetrievedChunk({@JsonKey(name: 'chunk_metadata') required this.chunkMetadata, @JsonKey(name: 'document_id') required this.documentId, required this.id, required this.ordinal, required this.score, this.content, this.document, @JsonKey(name: 'external_id') this.externalId, @JsonKey(name: 'score_breakdown') this.scoreBreakdown});
  factory _RetrievedChunk.fromJson(Map<String, dynamic> json) => _$RetrievedChunkFromJson(json);

/// Chunk-level metadata.
@override@JsonKey(name: 'chunk_metadata') final  dynamic chunkMetadata;
/// Parent document ID.
@override@JsonKey(name: 'document_id') final  String documentId;
/// Chunk ID.
@override final  String id;
/// Position within document.
@override final  int ordinal;
/// Effective score after rerank (or primary score when rerank off).
@override final  double score;
/// Chunk content. Present iff `include.content`.
@override final  String? content;
/// Parent document summary. Present iff `include.document`.
@override final  dynamic document;
/// Caller-supplied external_id, if any.
@override@JsonKey(name: 'external_id') final  String? externalId;
/// Score detail. Present iff `include.score_breakdown`.
@override@JsonKey(name: 'score_breakdown') final  ScoreBreakdown? scoreBreakdown;

/// Create a copy of RetrievedChunk
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RetrievedChunkCopyWith<_RetrievedChunk> get copyWith => __$RetrievedChunkCopyWithImpl<_RetrievedChunk>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RetrievedChunkToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RetrievedChunk&&const DeepCollectionEquality().equals(other.chunkMetadata, chunkMetadata)&&(identical(other.documentId, documentId) || other.documentId == documentId)&&(identical(other.id, id) || other.id == id)&&(identical(other.ordinal, ordinal) || other.ordinal == ordinal)&&(identical(other.score, score) || other.score == score)&&(identical(other.content, content) || other.content == content)&&const DeepCollectionEquality().equals(other.document, document)&&(identical(other.externalId, externalId) || other.externalId == externalId)&&(identical(other.scoreBreakdown, scoreBreakdown) || other.scoreBreakdown == scoreBreakdown));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(chunkMetadata),documentId,id,ordinal,score,content,const DeepCollectionEquality().hash(document),externalId,scoreBreakdown);

@override
String toString() {
  return 'RetrievedChunk(chunkMetadata: $chunkMetadata, documentId: $documentId, id: $id, ordinal: $ordinal, score: $score, content: $content, document: $document, externalId: $externalId, scoreBreakdown: $scoreBreakdown)';
}


}

/// @nodoc
abstract mixin class _$RetrievedChunkCopyWith<$Res> implements $RetrievedChunkCopyWith<$Res> {
  factory _$RetrievedChunkCopyWith(_RetrievedChunk value, $Res Function(_RetrievedChunk) _then) = __$RetrievedChunkCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'chunk_metadata') dynamic chunkMetadata,@JsonKey(name: 'document_id') String documentId, String id, int ordinal, double score, String? content, dynamic document,@JsonKey(name: 'external_id') String? externalId,@JsonKey(name: 'score_breakdown') ScoreBreakdown? scoreBreakdown
});


@override $ScoreBreakdownCopyWith<$Res>? get scoreBreakdown;

}
/// @nodoc
class __$RetrievedChunkCopyWithImpl<$Res>
    implements _$RetrievedChunkCopyWith<$Res> {
  __$RetrievedChunkCopyWithImpl(this._self, this._then);

  final _RetrievedChunk _self;
  final $Res Function(_RetrievedChunk) _then;

/// Create a copy of RetrievedChunk
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? chunkMetadata = freezed,Object? documentId = null,Object? id = null,Object? ordinal = null,Object? score = null,Object? content = freezed,Object? document = freezed,Object? externalId = freezed,Object? scoreBreakdown = freezed,}) {
  return _then(_RetrievedChunk(
chunkMetadata: freezed == chunkMetadata ? _self.chunkMetadata : chunkMetadata // ignore: cast_nullable_to_non_nullable
as dynamic,documentId: null == documentId ? _self.documentId : documentId // ignore: cast_nullable_to_non_nullable
as String,id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,ordinal: null == ordinal ? _self.ordinal : ordinal // ignore: cast_nullable_to_non_nullable
as int,score: null == score ? _self.score : score // ignore: cast_nullable_to_non_nullable
as double,content: freezed == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as String?,document: freezed == document ? _self.document : document // ignore: cast_nullable_to_non_nullable
as dynamic,externalId: freezed == externalId ? _self.externalId : externalId // ignore: cast_nullable_to_non_nullable
as String?,scoreBreakdown: freezed == scoreBreakdown ? _self.scoreBreakdown : scoreBreakdown // ignore: cast_nullable_to_non_nullable
as ScoreBreakdown?,
  ));
}

/// Create a copy of RetrievedChunk
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ScoreBreakdownCopyWith<$Res>? get scoreBreakdown {
    if (_self.scoreBreakdown == null) {
    return null;
  }

  return $ScoreBreakdownCopyWith<$Res>(_self.scoreBreakdown!, (value) {
    return _then(_self.copyWith(scoreBreakdown: value));
  });
}
}

// dart format on
