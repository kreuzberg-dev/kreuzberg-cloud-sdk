// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_document_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CreateDocumentRequest {

/// Source variant: `"text"` or `"chunks"`
 String get kind;/// Pre-split chunks for `kind: "chunks"`
 List<CreateDocumentChunkInput>? get chunks;/// Pre-computed enrichments to skip the server's pass
@JsonKey(name: 'enrichment_overrides') dynamic get enrichmentOverrides;/// Caller-supplied external identifier for the document
@JsonKey(name: 'external_id') String? get externalId;/// Caller-supplied metadata stored alongside the document
 dynamic get metadata;/// MIME type of the source document for audit purposes
 String? get mime;/// GCS/S3 object key for the source document
@JsonKey(name: 'source_object_key') String? get sourceObjectKey;/// Raw text content for `kind: "text"`
 String? get text;/// Human-readable document title
 String? get title;/// Optional webhook for ingest completion/failure delivery
 WebhookConfig? get webhook;
/// Create a copy of CreateDocumentRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreateDocumentRequestCopyWith<CreateDocumentRequest> get copyWith => _$CreateDocumentRequestCopyWithImpl<CreateDocumentRequest>(this as CreateDocumentRequest, _$identity);

  /// Serializes this CreateDocumentRequest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateDocumentRequest&&(identical(other.kind, kind) || other.kind == kind)&&const DeepCollectionEquality().equals(other.chunks, chunks)&&const DeepCollectionEquality().equals(other.enrichmentOverrides, enrichmentOverrides)&&(identical(other.externalId, externalId) || other.externalId == externalId)&&const DeepCollectionEquality().equals(other.metadata, metadata)&&(identical(other.mime, mime) || other.mime == mime)&&(identical(other.sourceObjectKey, sourceObjectKey) || other.sourceObjectKey == sourceObjectKey)&&(identical(other.text, text) || other.text == text)&&(identical(other.title, title) || other.title == title)&&(identical(other.webhook, webhook) || other.webhook == webhook));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,kind,const DeepCollectionEquality().hash(chunks),const DeepCollectionEquality().hash(enrichmentOverrides),externalId,const DeepCollectionEquality().hash(metadata),mime,sourceObjectKey,text,title,webhook);

@override
String toString() {
  return 'CreateDocumentRequest(kind: $kind, chunks: $chunks, enrichmentOverrides: $enrichmentOverrides, externalId: $externalId, metadata: $metadata, mime: $mime, sourceObjectKey: $sourceObjectKey, text: $text, title: $title, webhook: $webhook)';
}


}

/// @nodoc
abstract mixin class $CreateDocumentRequestCopyWith<$Res>  {
  factory $CreateDocumentRequestCopyWith(CreateDocumentRequest value, $Res Function(CreateDocumentRequest) _then) = _$CreateDocumentRequestCopyWithImpl;
@useResult
$Res call({
 String kind, List<CreateDocumentChunkInput>? chunks,@JsonKey(name: 'enrichment_overrides') dynamic enrichmentOverrides,@JsonKey(name: 'external_id') String? externalId, dynamic metadata, String? mime,@JsonKey(name: 'source_object_key') String? sourceObjectKey, String? text, String? title, WebhookConfig? webhook
});


$WebhookConfigCopyWith<$Res>? get webhook;

}
/// @nodoc
class _$CreateDocumentRequestCopyWithImpl<$Res>
    implements $CreateDocumentRequestCopyWith<$Res> {
  _$CreateDocumentRequestCopyWithImpl(this._self, this._then);

  final CreateDocumentRequest _self;
  final $Res Function(CreateDocumentRequest) _then;

/// Create a copy of CreateDocumentRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? kind = null,Object? chunks = freezed,Object? enrichmentOverrides = freezed,Object? externalId = freezed,Object? metadata = freezed,Object? mime = freezed,Object? sourceObjectKey = freezed,Object? text = freezed,Object? title = freezed,Object? webhook = freezed,}) {
  return _then(_self.copyWith(
kind: null == kind ? _self.kind : kind // ignore: cast_nullable_to_non_nullable
as String,chunks: freezed == chunks ? _self.chunks : chunks // ignore: cast_nullable_to_non_nullable
as List<CreateDocumentChunkInput>?,enrichmentOverrides: freezed == enrichmentOverrides ? _self.enrichmentOverrides : enrichmentOverrides // ignore: cast_nullable_to_non_nullable
as dynamic,externalId: freezed == externalId ? _self.externalId : externalId // ignore: cast_nullable_to_non_nullable
as String?,metadata: freezed == metadata ? _self.metadata : metadata // ignore: cast_nullable_to_non_nullable
as dynamic,mime: freezed == mime ? _self.mime : mime // ignore: cast_nullable_to_non_nullable
as String?,sourceObjectKey: freezed == sourceObjectKey ? _self.sourceObjectKey : sourceObjectKey // ignore: cast_nullable_to_non_nullable
as String?,text: freezed == text ? _self.text : text // ignore: cast_nullable_to_non_nullable
as String?,title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,webhook: freezed == webhook ? _self.webhook : webhook // ignore: cast_nullable_to_non_nullable
as WebhookConfig?,
  ));
}
/// Create a copy of CreateDocumentRequest
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$WebhookConfigCopyWith<$Res>? get webhook {
    if (_self.webhook == null) {
    return null;
  }

  return $WebhookConfigCopyWith<$Res>(_self.webhook!, (value) {
    return _then(_self.copyWith(webhook: value));
  });
}
}


/// Adds pattern-matching-related methods to [CreateDocumentRequest].
extension CreateDocumentRequestPatterns on CreateDocumentRequest {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CreateDocumentRequest value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CreateDocumentRequest() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CreateDocumentRequest value)  $default,){
final _that = this;
switch (_that) {
case _CreateDocumentRequest():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CreateDocumentRequest value)?  $default,){
final _that = this;
switch (_that) {
case _CreateDocumentRequest() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String kind,  List<CreateDocumentChunkInput>? chunks, @JsonKey(name: 'enrichment_overrides')  dynamic enrichmentOverrides, @JsonKey(name: 'external_id')  String? externalId,  dynamic metadata,  String? mime, @JsonKey(name: 'source_object_key')  String? sourceObjectKey,  String? text,  String? title,  WebhookConfig? webhook)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CreateDocumentRequest() when $default != null:
return $default(_that.kind,_that.chunks,_that.enrichmentOverrides,_that.externalId,_that.metadata,_that.mime,_that.sourceObjectKey,_that.text,_that.title,_that.webhook);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String kind,  List<CreateDocumentChunkInput>? chunks, @JsonKey(name: 'enrichment_overrides')  dynamic enrichmentOverrides, @JsonKey(name: 'external_id')  String? externalId,  dynamic metadata,  String? mime, @JsonKey(name: 'source_object_key')  String? sourceObjectKey,  String? text,  String? title,  WebhookConfig? webhook)  $default,) {final _that = this;
switch (_that) {
case _CreateDocumentRequest():
return $default(_that.kind,_that.chunks,_that.enrichmentOverrides,_that.externalId,_that.metadata,_that.mime,_that.sourceObjectKey,_that.text,_that.title,_that.webhook);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String kind,  List<CreateDocumentChunkInput>? chunks, @JsonKey(name: 'enrichment_overrides')  dynamic enrichmentOverrides, @JsonKey(name: 'external_id')  String? externalId,  dynamic metadata,  String? mime, @JsonKey(name: 'source_object_key')  String? sourceObjectKey,  String? text,  String? title,  WebhookConfig? webhook)?  $default,) {final _that = this;
switch (_that) {
case _CreateDocumentRequest() when $default != null:
return $default(_that.kind,_that.chunks,_that.enrichmentOverrides,_that.externalId,_that.metadata,_that.mime,_that.sourceObjectKey,_that.text,_that.title,_that.webhook);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CreateDocumentRequest implements CreateDocumentRequest {
  const _CreateDocumentRequest({required this.kind, final  List<CreateDocumentChunkInput>? chunks, @JsonKey(name: 'enrichment_overrides') this.enrichmentOverrides, @JsonKey(name: 'external_id') this.externalId, this.metadata, this.mime, @JsonKey(name: 'source_object_key') this.sourceObjectKey, this.text, this.title, this.webhook}): _chunks = chunks;
  factory _CreateDocumentRequest.fromJson(Map<String, dynamic> json) => _$CreateDocumentRequestFromJson(json);

/// Source variant: `"text"` or `"chunks"`
@override final  String kind;
/// Pre-split chunks for `kind: "chunks"`
 final  List<CreateDocumentChunkInput>? _chunks;
/// Pre-split chunks for `kind: "chunks"`
@override List<CreateDocumentChunkInput>? get chunks {
  final value = _chunks;
  if (value == null) return null;
  if (_chunks is EqualUnmodifiableListView) return _chunks;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

/// Pre-computed enrichments to skip the server's pass
@override@JsonKey(name: 'enrichment_overrides') final  dynamic enrichmentOverrides;
/// Caller-supplied external identifier for the document
@override@JsonKey(name: 'external_id') final  String? externalId;
/// Caller-supplied metadata stored alongside the document
@override final  dynamic metadata;
/// MIME type of the source document for audit purposes
@override final  String? mime;
/// GCS/S3 object key for the source document
@override@JsonKey(name: 'source_object_key') final  String? sourceObjectKey;
/// Raw text content for `kind: "text"`
@override final  String? text;
/// Human-readable document title
@override final  String? title;
/// Optional webhook for ingest completion/failure delivery
@override final  WebhookConfig? webhook;

/// Create a copy of CreateDocumentRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreateDocumentRequestCopyWith<_CreateDocumentRequest> get copyWith => __$CreateDocumentRequestCopyWithImpl<_CreateDocumentRequest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CreateDocumentRequestToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreateDocumentRequest&&(identical(other.kind, kind) || other.kind == kind)&&const DeepCollectionEquality().equals(other._chunks, _chunks)&&const DeepCollectionEquality().equals(other.enrichmentOverrides, enrichmentOverrides)&&(identical(other.externalId, externalId) || other.externalId == externalId)&&const DeepCollectionEquality().equals(other.metadata, metadata)&&(identical(other.mime, mime) || other.mime == mime)&&(identical(other.sourceObjectKey, sourceObjectKey) || other.sourceObjectKey == sourceObjectKey)&&(identical(other.text, text) || other.text == text)&&(identical(other.title, title) || other.title == title)&&(identical(other.webhook, webhook) || other.webhook == webhook));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,kind,const DeepCollectionEquality().hash(_chunks),const DeepCollectionEquality().hash(enrichmentOverrides),externalId,const DeepCollectionEquality().hash(metadata),mime,sourceObjectKey,text,title,webhook);

@override
String toString() {
  return 'CreateDocumentRequest(kind: $kind, chunks: $chunks, enrichmentOverrides: $enrichmentOverrides, externalId: $externalId, metadata: $metadata, mime: $mime, sourceObjectKey: $sourceObjectKey, text: $text, title: $title, webhook: $webhook)';
}


}

/// @nodoc
abstract mixin class _$CreateDocumentRequestCopyWith<$Res> implements $CreateDocumentRequestCopyWith<$Res> {
  factory _$CreateDocumentRequestCopyWith(_CreateDocumentRequest value, $Res Function(_CreateDocumentRequest) _then) = __$CreateDocumentRequestCopyWithImpl;
@override @useResult
$Res call({
 String kind, List<CreateDocumentChunkInput>? chunks,@JsonKey(name: 'enrichment_overrides') dynamic enrichmentOverrides,@JsonKey(name: 'external_id') String? externalId, dynamic metadata, String? mime,@JsonKey(name: 'source_object_key') String? sourceObjectKey, String? text, String? title, WebhookConfig? webhook
});


@override $WebhookConfigCopyWith<$Res>? get webhook;

}
/// @nodoc
class __$CreateDocumentRequestCopyWithImpl<$Res>
    implements _$CreateDocumentRequestCopyWith<$Res> {
  __$CreateDocumentRequestCopyWithImpl(this._self, this._then);

  final _CreateDocumentRequest _self;
  final $Res Function(_CreateDocumentRequest) _then;

/// Create a copy of CreateDocumentRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? kind = null,Object? chunks = freezed,Object? enrichmentOverrides = freezed,Object? externalId = freezed,Object? metadata = freezed,Object? mime = freezed,Object? sourceObjectKey = freezed,Object? text = freezed,Object? title = freezed,Object? webhook = freezed,}) {
  return _then(_CreateDocumentRequest(
kind: null == kind ? _self.kind : kind // ignore: cast_nullable_to_non_nullable
as String,chunks: freezed == chunks ? _self._chunks : chunks // ignore: cast_nullable_to_non_nullable
as List<CreateDocumentChunkInput>?,enrichmentOverrides: freezed == enrichmentOverrides ? _self.enrichmentOverrides : enrichmentOverrides // ignore: cast_nullable_to_non_nullable
as dynamic,externalId: freezed == externalId ? _self.externalId : externalId // ignore: cast_nullable_to_non_nullable
as String?,metadata: freezed == metadata ? _self.metadata : metadata // ignore: cast_nullable_to_non_nullable
as dynamic,mime: freezed == mime ? _self.mime : mime // ignore: cast_nullable_to_non_nullable
as String?,sourceObjectKey: freezed == sourceObjectKey ? _self.sourceObjectKey : sourceObjectKey // ignore: cast_nullable_to_non_nullable
as String?,text: freezed == text ? _self.text : text // ignore: cast_nullable_to_non_nullable
as String?,title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,webhook: freezed == webhook ? _self.webhook : webhook // ignore: cast_nullable_to_non_nullable
as WebhookConfig?,
  ));
}

/// Create a copy of CreateDocumentRequest
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$WebhookConfigCopyWith<$Res>? get webhook {
    if (_self.webhook == null) {
    return null;
  }

  return $WebhookConfigCopyWith<$Res>(_self.webhook!, (value) {
    return _then(_self.copyWith(webhook: value));
  });
}
}

// dart format on
