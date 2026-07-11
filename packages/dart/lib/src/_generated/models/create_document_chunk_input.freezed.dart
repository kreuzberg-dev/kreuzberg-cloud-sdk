// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_document_chunk_input.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CreateDocumentChunkInput {

/// Chunk content (text)
 String get content;/// Caller-supplied embedding vector. When present on every chunk in the.
/// request, triggers synchronous write (200). When absent on any chunk,.
/// the entire request goes async and the worker embeds all chunks.
 List<double>? get embedding;/// External identifier for this chunk (optional)
@JsonKey(name: 'external_id') String? get externalId;/// Metadata attached to this chunk
 dynamic get metadata;/// Position in the document (0-indexed)
 int? get ordinal;
/// Create a copy of CreateDocumentChunkInput
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreateDocumentChunkInputCopyWith<CreateDocumentChunkInput> get copyWith => _$CreateDocumentChunkInputCopyWithImpl<CreateDocumentChunkInput>(this as CreateDocumentChunkInput, _$identity);

  /// Serializes this CreateDocumentChunkInput to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateDocumentChunkInput&&(identical(other.content, content) || other.content == content)&&const DeepCollectionEquality().equals(other.embedding, embedding)&&(identical(other.externalId, externalId) || other.externalId == externalId)&&const DeepCollectionEquality().equals(other.metadata, metadata)&&(identical(other.ordinal, ordinal) || other.ordinal == ordinal));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,content,const DeepCollectionEquality().hash(embedding),externalId,const DeepCollectionEquality().hash(metadata),ordinal);

@override
String toString() {
  return 'CreateDocumentChunkInput(content: $content, embedding: $embedding, externalId: $externalId, metadata: $metadata, ordinal: $ordinal)';
}


}

/// @nodoc
abstract mixin class $CreateDocumentChunkInputCopyWith<$Res>  {
  factory $CreateDocumentChunkInputCopyWith(CreateDocumentChunkInput value, $Res Function(CreateDocumentChunkInput) _then) = _$CreateDocumentChunkInputCopyWithImpl;
@useResult
$Res call({
 String content, List<double>? embedding,@JsonKey(name: 'external_id') String? externalId, dynamic metadata, int? ordinal
});




}
/// @nodoc
class _$CreateDocumentChunkInputCopyWithImpl<$Res>
    implements $CreateDocumentChunkInputCopyWith<$Res> {
  _$CreateDocumentChunkInputCopyWithImpl(this._self, this._then);

  final CreateDocumentChunkInput _self;
  final $Res Function(CreateDocumentChunkInput) _then;

/// Create a copy of CreateDocumentChunkInput
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? content = null,Object? embedding = freezed,Object? externalId = freezed,Object? metadata = freezed,Object? ordinal = freezed,}) {
  return _then(_self.copyWith(
content: null == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as String,embedding: freezed == embedding ? _self.embedding : embedding // ignore: cast_nullable_to_non_nullable
as List<double>?,externalId: freezed == externalId ? _self.externalId : externalId // ignore: cast_nullable_to_non_nullable
as String?,metadata: freezed == metadata ? _self.metadata : metadata // ignore: cast_nullable_to_non_nullable
as dynamic,ordinal: freezed == ordinal ? _self.ordinal : ordinal // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [CreateDocumentChunkInput].
extension CreateDocumentChunkInputPatterns on CreateDocumentChunkInput {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CreateDocumentChunkInput value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CreateDocumentChunkInput() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CreateDocumentChunkInput value)  $default,){
final _that = this;
switch (_that) {
case _CreateDocumentChunkInput():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CreateDocumentChunkInput value)?  $default,){
final _that = this;
switch (_that) {
case _CreateDocumentChunkInput() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String content,  List<double>? embedding, @JsonKey(name: 'external_id')  String? externalId,  dynamic metadata,  int? ordinal)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CreateDocumentChunkInput() when $default != null:
return $default(_that.content,_that.embedding,_that.externalId,_that.metadata,_that.ordinal);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String content,  List<double>? embedding, @JsonKey(name: 'external_id')  String? externalId,  dynamic metadata,  int? ordinal)  $default,) {final _that = this;
switch (_that) {
case _CreateDocumentChunkInput():
return $default(_that.content,_that.embedding,_that.externalId,_that.metadata,_that.ordinal);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String content,  List<double>? embedding, @JsonKey(name: 'external_id')  String? externalId,  dynamic metadata,  int? ordinal)?  $default,) {final _that = this;
switch (_that) {
case _CreateDocumentChunkInput() when $default != null:
return $default(_that.content,_that.embedding,_that.externalId,_that.metadata,_that.ordinal);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CreateDocumentChunkInput implements CreateDocumentChunkInput {
  const _CreateDocumentChunkInput({required this.content, final  List<double>? embedding, @JsonKey(name: 'external_id') this.externalId, this.metadata, this.ordinal}): _embedding = embedding;
  factory _CreateDocumentChunkInput.fromJson(Map<String, dynamic> json) => _$CreateDocumentChunkInputFromJson(json);

/// Chunk content (text)
@override final  String content;
/// Caller-supplied embedding vector. When present on every chunk in the.
/// request, triggers synchronous write (200). When absent on any chunk,.
/// the entire request goes async and the worker embeds all chunks.
 final  List<double>? _embedding;
/// Caller-supplied embedding vector. When present on every chunk in the.
/// request, triggers synchronous write (200). When absent on any chunk,.
/// the entire request goes async and the worker embeds all chunks.
@override List<double>? get embedding {
  final value = _embedding;
  if (value == null) return null;
  if (_embedding is EqualUnmodifiableListView) return _embedding;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

/// External identifier for this chunk (optional)
@override@JsonKey(name: 'external_id') final  String? externalId;
/// Metadata attached to this chunk
@override final  dynamic metadata;
/// Position in the document (0-indexed)
@override final  int? ordinal;

/// Create a copy of CreateDocumentChunkInput
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreateDocumentChunkInputCopyWith<_CreateDocumentChunkInput> get copyWith => __$CreateDocumentChunkInputCopyWithImpl<_CreateDocumentChunkInput>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CreateDocumentChunkInputToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreateDocumentChunkInput&&(identical(other.content, content) || other.content == content)&&const DeepCollectionEquality().equals(other._embedding, _embedding)&&(identical(other.externalId, externalId) || other.externalId == externalId)&&const DeepCollectionEquality().equals(other.metadata, metadata)&&(identical(other.ordinal, ordinal) || other.ordinal == ordinal));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,content,const DeepCollectionEquality().hash(_embedding),externalId,const DeepCollectionEquality().hash(metadata),ordinal);

@override
String toString() {
  return 'CreateDocumentChunkInput(content: $content, embedding: $embedding, externalId: $externalId, metadata: $metadata, ordinal: $ordinal)';
}


}

/// @nodoc
abstract mixin class _$CreateDocumentChunkInputCopyWith<$Res> implements $CreateDocumentChunkInputCopyWith<$Res> {
  factory _$CreateDocumentChunkInputCopyWith(_CreateDocumentChunkInput value, $Res Function(_CreateDocumentChunkInput) _then) = __$CreateDocumentChunkInputCopyWithImpl;
@override @useResult
$Res call({
 String content, List<double>? embedding,@JsonKey(name: 'external_id') String? externalId, dynamic metadata, int? ordinal
});




}
/// @nodoc
class __$CreateDocumentChunkInputCopyWithImpl<$Res>
    implements _$CreateDocumentChunkInputCopyWith<$Res> {
  __$CreateDocumentChunkInputCopyWithImpl(this._self, this._then);

  final _CreateDocumentChunkInput _self;
  final $Res Function(_CreateDocumentChunkInput) _then;

/// Create a copy of CreateDocumentChunkInput
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? content = null,Object? embedding = freezed,Object? externalId = freezed,Object? metadata = freezed,Object? ordinal = freezed,}) {
  return _then(_CreateDocumentChunkInput(
content: null == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as String,embedding: freezed == embedding ? _self._embedding : embedding // ignore: cast_nullable_to_non_nullable
as List<double>?,externalId: freezed == externalId ? _self.externalId : externalId // ignore: cast_nullable_to_non_nullable
as String?,metadata: freezed == metadata ? _self.metadata : metadata // ignore: cast_nullable_to_non_nullable
as dynamic,ordinal: freezed == ordinal ? _self.ordinal : ordinal // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

// dart format on
