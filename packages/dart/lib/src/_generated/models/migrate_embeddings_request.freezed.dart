// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'migrate_embeddings_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$MigrateEmbeddingsRequest {

/// Target embedding source (e.g. "preset:quality", "preset:fast").
@JsonKey(name: 'target_embedding_source') String get targetEmbeddingSource;/// Target embedding version (must be > collection's current embedding_version).
@JsonKey(name: 'target_embedding_version') int get targetEmbeddingVersion;/// Optional webhook for migration completion/failure delivery.
 WebhookConfig? get webhook;
/// Create a copy of MigrateEmbeddingsRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MigrateEmbeddingsRequestCopyWith<MigrateEmbeddingsRequest> get copyWith => _$MigrateEmbeddingsRequestCopyWithImpl<MigrateEmbeddingsRequest>(this as MigrateEmbeddingsRequest, _$identity);

  /// Serializes this MigrateEmbeddingsRequest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MigrateEmbeddingsRequest&&(identical(other.targetEmbeddingSource, targetEmbeddingSource) || other.targetEmbeddingSource == targetEmbeddingSource)&&(identical(other.targetEmbeddingVersion, targetEmbeddingVersion) || other.targetEmbeddingVersion == targetEmbeddingVersion)&&(identical(other.webhook, webhook) || other.webhook == webhook));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,targetEmbeddingSource,targetEmbeddingVersion,webhook);

@override
String toString() {
  return 'MigrateEmbeddingsRequest(targetEmbeddingSource: $targetEmbeddingSource, targetEmbeddingVersion: $targetEmbeddingVersion, webhook: $webhook)';
}


}

/// @nodoc
abstract mixin class $MigrateEmbeddingsRequestCopyWith<$Res>  {
  factory $MigrateEmbeddingsRequestCopyWith(MigrateEmbeddingsRequest value, $Res Function(MigrateEmbeddingsRequest) _then) = _$MigrateEmbeddingsRequestCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'target_embedding_source') String targetEmbeddingSource,@JsonKey(name: 'target_embedding_version') int targetEmbeddingVersion, WebhookConfig? webhook
});


$WebhookConfigCopyWith<$Res>? get webhook;

}
/// @nodoc
class _$MigrateEmbeddingsRequestCopyWithImpl<$Res>
    implements $MigrateEmbeddingsRequestCopyWith<$Res> {
  _$MigrateEmbeddingsRequestCopyWithImpl(this._self, this._then);

  final MigrateEmbeddingsRequest _self;
  final $Res Function(MigrateEmbeddingsRequest) _then;

/// Create a copy of MigrateEmbeddingsRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? targetEmbeddingSource = null,Object? targetEmbeddingVersion = null,Object? webhook = freezed,}) {
  return _then(_self.copyWith(
targetEmbeddingSource: null == targetEmbeddingSource ? _self.targetEmbeddingSource : targetEmbeddingSource // ignore: cast_nullable_to_non_nullable
as String,targetEmbeddingVersion: null == targetEmbeddingVersion ? _self.targetEmbeddingVersion : targetEmbeddingVersion // ignore: cast_nullable_to_non_nullable
as int,webhook: freezed == webhook ? _self.webhook : webhook // ignore: cast_nullable_to_non_nullable
as WebhookConfig?,
  ));
}
/// Create a copy of MigrateEmbeddingsRequest
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


/// Adds pattern-matching-related methods to [MigrateEmbeddingsRequest].
extension MigrateEmbeddingsRequestPatterns on MigrateEmbeddingsRequest {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MigrateEmbeddingsRequest value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MigrateEmbeddingsRequest() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MigrateEmbeddingsRequest value)  $default,){
final _that = this;
switch (_that) {
case _MigrateEmbeddingsRequest():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MigrateEmbeddingsRequest value)?  $default,){
final _that = this;
switch (_that) {
case _MigrateEmbeddingsRequest() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'target_embedding_source')  String targetEmbeddingSource, @JsonKey(name: 'target_embedding_version')  int targetEmbeddingVersion,  WebhookConfig? webhook)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MigrateEmbeddingsRequest() when $default != null:
return $default(_that.targetEmbeddingSource,_that.targetEmbeddingVersion,_that.webhook);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'target_embedding_source')  String targetEmbeddingSource, @JsonKey(name: 'target_embedding_version')  int targetEmbeddingVersion,  WebhookConfig? webhook)  $default,) {final _that = this;
switch (_that) {
case _MigrateEmbeddingsRequest():
return $default(_that.targetEmbeddingSource,_that.targetEmbeddingVersion,_that.webhook);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'target_embedding_source')  String targetEmbeddingSource, @JsonKey(name: 'target_embedding_version')  int targetEmbeddingVersion,  WebhookConfig? webhook)?  $default,) {final _that = this;
switch (_that) {
case _MigrateEmbeddingsRequest() when $default != null:
return $default(_that.targetEmbeddingSource,_that.targetEmbeddingVersion,_that.webhook);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MigrateEmbeddingsRequest implements MigrateEmbeddingsRequest {
  const _MigrateEmbeddingsRequest({@JsonKey(name: 'target_embedding_source') required this.targetEmbeddingSource, @JsonKey(name: 'target_embedding_version') required this.targetEmbeddingVersion, this.webhook});
  factory _MigrateEmbeddingsRequest.fromJson(Map<String, dynamic> json) => _$MigrateEmbeddingsRequestFromJson(json);

/// Target embedding source (e.g. "preset:quality", "preset:fast").
@override@JsonKey(name: 'target_embedding_source') final  String targetEmbeddingSource;
/// Target embedding version (must be > collection's current embedding_version).
@override@JsonKey(name: 'target_embedding_version') final  int targetEmbeddingVersion;
/// Optional webhook for migration completion/failure delivery.
@override final  WebhookConfig? webhook;

/// Create a copy of MigrateEmbeddingsRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MigrateEmbeddingsRequestCopyWith<_MigrateEmbeddingsRequest> get copyWith => __$MigrateEmbeddingsRequestCopyWithImpl<_MigrateEmbeddingsRequest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MigrateEmbeddingsRequestToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MigrateEmbeddingsRequest&&(identical(other.targetEmbeddingSource, targetEmbeddingSource) || other.targetEmbeddingSource == targetEmbeddingSource)&&(identical(other.targetEmbeddingVersion, targetEmbeddingVersion) || other.targetEmbeddingVersion == targetEmbeddingVersion)&&(identical(other.webhook, webhook) || other.webhook == webhook));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,targetEmbeddingSource,targetEmbeddingVersion,webhook);

@override
String toString() {
  return 'MigrateEmbeddingsRequest(targetEmbeddingSource: $targetEmbeddingSource, targetEmbeddingVersion: $targetEmbeddingVersion, webhook: $webhook)';
}


}

/// @nodoc
abstract mixin class _$MigrateEmbeddingsRequestCopyWith<$Res> implements $MigrateEmbeddingsRequestCopyWith<$Res> {
  factory _$MigrateEmbeddingsRequestCopyWith(_MigrateEmbeddingsRequest value, $Res Function(_MigrateEmbeddingsRequest) _then) = __$MigrateEmbeddingsRequestCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'target_embedding_source') String targetEmbeddingSource,@JsonKey(name: 'target_embedding_version') int targetEmbeddingVersion, WebhookConfig? webhook
});


@override $WebhookConfigCopyWith<$Res>? get webhook;

}
/// @nodoc
class __$MigrateEmbeddingsRequestCopyWithImpl<$Res>
    implements _$MigrateEmbeddingsRequestCopyWith<$Res> {
  __$MigrateEmbeddingsRequestCopyWithImpl(this._self, this._then);

  final _MigrateEmbeddingsRequest _self;
  final $Res Function(_MigrateEmbeddingsRequest) _then;

/// Create a copy of MigrateEmbeddingsRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? targetEmbeddingSource = null,Object? targetEmbeddingVersion = null,Object? webhook = freezed,}) {
  return _then(_MigrateEmbeddingsRequest(
targetEmbeddingSource: null == targetEmbeddingSource ? _self.targetEmbeddingSource : targetEmbeddingSource // ignore: cast_nullable_to_non_nullable
as String,targetEmbeddingVersion: null == targetEmbeddingVersion ? _self.targetEmbeddingVersion : targetEmbeddingVersion // ignore: cast_nullable_to_non_nullable
as int,webhook: freezed == webhook ? _self.webhook : webhook // ignore: cast_nullable_to_non_nullable
as WebhookConfig?,
  ));
}

/// Create a copy of MigrateEmbeddingsRequest
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
