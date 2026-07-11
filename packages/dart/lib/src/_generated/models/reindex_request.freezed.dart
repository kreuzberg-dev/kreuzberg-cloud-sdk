// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'reindex_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ReindexRequest {

/// If true, re-extract from source object via xberg before re-chunking
@JsonKey(name: 're_extract') bool? get reExtract;/// Optional webhook for reindex completion/failure delivery.
 WebhookConfig? get webhook;
/// Create a copy of ReindexRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ReindexRequestCopyWith<ReindexRequest> get copyWith => _$ReindexRequestCopyWithImpl<ReindexRequest>(this as ReindexRequest, _$identity);

  /// Serializes this ReindexRequest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ReindexRequest&&(identical(other.reExtract, reExtract) || other.reExtract == reExtract)&&(identical(other.webhook, webhook) || other.webhook == webhook));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,reExtract,webhook);

@override
String toString() {
  return 'ReindexRequest(reExtract: $reExtract, webhook: $webhook)';
}


}

/// @nodoc
abstract mixin class $ReindexRequestCopyWith<$Res>  {
  factory $ReindexRequestCopyWith(ReindexRequest value, $Res Function(ReindexRequest) _then) = _$ReindexRequestCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 're_extract') bool? reExtract, WebhookConfig? webhook
});


$WebhookConfigCopyWith<$Res>? get webhook;

}
/// @nodoc
class _$ReindexRequestCopyWithImpl<$Res>
    implements $ReindexRequestCopyWith<$Res> {
  _$ReindexRequestCopyWithImpl(this._self, this._then);

  final ReindexRequest _self;
  final $Res Function(ReindexRequest) _then;

/// Create a copy of ReindexRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? reExtract = freezed,Object? webhook = freezed,}) {
  return _then(_self.copyWith(
reExtract: freezed == reExtract ? _self.reExtract : reExtract // ignore: cast_nullable_to_non_nullable
as bool?,webhook: freezed == webhook ? _self.webhook : webhook // ignore: cast_nullable_to_non_nullable
as WebhookConfig?,
  ));
}
/// Create a copy of ReindexRequest
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


/// Adds pattern-matching-related methods to [ReindexRequest].
extension ReindexRequestPatterns on ReindexRequest {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ReindexRequest value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ReindexRequest() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ReindexRequest value)  $default,){
final _that = this;
switch (_that) {
case _ReindexRequest():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ReindexRequest value)?  $default,){
final _that = this;
switch (_that) {
case _ReindexRequest() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 're_extract')  bool? reExtract,  WebhookConfig? webhook)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ReindexRequest() when $default != null:
return $default(_that.reExtract,_that.webhook);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 're_extract')  bool? reExtract,  WebhookConfig? webhook)  $default,) {final _that = this;
switch (_that) {
case _ReindexRequest():
return $default(_that.reExtract,_that.webhook);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 're_extract')  bool? reExtract,  WebhookConfig? webhook)?  $default,) {final _that = this;
switch (_that) {
case _ReindexRequest() when $default != null:
return $default(_that.reExtract,_that.webhook);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ReindexRequest implements ReindexRequest {
  const _ReindexRequest({@JsonKey(name: 're_extract') this.reExtract, this.webhook});
  factory _ReindexRequest.fromJson(Map<String, dynamic> json) => _$ReindexRequestFromJson(json);

/// If true, re-extract from source object via xberg before re-chunking
@override@JsonKey(name: 're_extract') final  bool? reExtract;
/// Optional webhook for reindex completion/failure delivery.
@override final  WebhookConfig? webhook;

/// Create a copy of ReindexRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ReindexRequestCopyWith<_ReindexRequest> get copyWith => __$ReindexRequestCopyWithImpl<_ReindexRequest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ReindexRequestToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ReindexRequest&&(identical(other.reExtract, reExtract) || other.reExtract == reExtract)&&(identical(other.webhook, webhook) || other.webhook == webhook));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,reExtract,webhook);

@override
String toString() {
  return 'ReindexRequest(reExtract: $reExtract, webhook: $webhook)';
}


}

/// @nodoc
abstract mixin class _$ReindexRequestCopyWith<$Res> implements $ReindexRequestCopyWith<$Res> {
  factory _$ReindexRequestCopyWith(_ReindexRequest value, $Res Function(_ReindexRequest) _then) = __$ReindexRequestCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 're_extract') bool? reExtract, WebhookConfig? webhook
});


@override $WebhookConfigCopyWith<$Res>? get webhook;

}
/// @nodoc
class __$ReindexRequestCopyWithImpl<$Res>
    implements _$ReindexRequestCopyWith<$Res> {
  __$ReindexRequestCopyWithImpl(this._self, this._then);

  final _ReindexRequest _self;
  final $Res Function(_ReindexRequest) _then;

/// Create a copy of ReindexRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? reExtract = freezed,Object? webhook = freezed,}) {
  return _then(_ReindexRequest(
reExtract: freezed == reExtract ? _self.reExtract : reExtract // ignore: cast_nullable_to_non_nullable
as bool?,webhook: freezed == webhook ? _self.webhook : webhook // ignore: cast_nullable_to_non_nullable
as WebhookConfig?,
  ));
}

/// Create a copy of ReindexRequest
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
