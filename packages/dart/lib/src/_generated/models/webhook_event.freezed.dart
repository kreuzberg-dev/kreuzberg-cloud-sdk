// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'webhook_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$WebhookEvent {

/// Event type: "job.completed" or "job.failed".
 String get event;/// The job ID that triggered this webhook.
@JsonKey(name: 'job_id') String get jobId;/// RFC3339-formatted timestamp when the job completed.
 String get timestamp;/// Optional error details (present only if job failed or had partial failure).
 WebhookEventError? get error;/// Optional key-value metadata from the webhook configuration,.
/// echoed back for request correlation.
 Map<String, String>? get metadata;/// Optional extraction results (present only if job succeeded).
/// The shape depends on the extraction config (e.g., structured output,.
/// table detection, OCR results). Consumers should inspect the `event` type.
/// to determine expected fields.
 dynamic get results;
/// Create a copy of WebhookEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WebhookEventCopyWith<WebhookEvent> get copyWith => _$WebhookEventCopyWithImpl<WebhookEvent>(this as WebhookEvent, _$identity);

  /// Serializes this WebhookEvent to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WebhookEvent&&(identical(other.event, event) || other.event == event)&&(identical(other.jobId, jobId) || other.jobId == jobId)&&(identical(other.timestamp, timestamp) || other.timestamp == timestamp)&&(identical(other.error, error) || other.error == error)&&const DeepCollectionEquality().equals(other.metadata, metadata)&&const DeepCollectionEquality().equals(other.results, results));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,event,jobId,timestamp,error,const DeepCollectionEquality().hash(metadata),const DeepCollectionEquality().hash(results));

@override
String toString() {
  return 'WebhookEvent(event: $event, jobId: $jobId, timestamp: $timestamp, error: $error, metadata: $metadata, results: $results)';
}


}

/// @nodoc
abstract mixin class $WebhookEventCopyWith<$Res>  {
  factory $WebhookEventCopyWith(WebhookEvent value, $Res Function(WebhookEvent) _then) = _$WebhookEventCopyWithImpl;
@useResult
$Res call({
 String event,@JsonKey(name: 'job_id') String jobId, String timestamp, WebhookEventError? error, Map<String, String>? metadata, dynamic results
});


$WebhookEventErrorCopyWith<$Res>? get error;

}
/// @nodoc
class _$WebhookEventCopyWithImpl<$Res>
    implements $WebhookEventCopyWith<$Res> {
  _$WebhookEventCopyWithImpl(this._self, this._then);

  final WebhookEvent _self;
  final $Res Function(WebhookEvent) _then;

/// Create a copy of WebhookEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? event = null,Object? jobId = null,Object? timestamp = null,Object? error = freezed,Object? metadata = freezed,Object? results = freezed,}) {
  return _then(_self.copyWith(
event: null == event ? _self.event : event // ignore: cast_nullable_to_non_nullable
as String,jobId: null == jobId ? _self.jobId : jobId // ignore: cast_nullable_to_non_nullable
as String,timestamp: null == timestamp ? _self.timestamp : timestamp // ignore: cast_nullable_to_non_nullable
as String,error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as WebhookEventError?,metadata: freezed == metadata ? _self.metadata : metadata // ignore: cast_nullable_to_non_nullable
as Map<String, String>?,results: freezed == results ? _self.results : results // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}
/// Create a copy of WebhookEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$WebhookEventErrorCopyWith<$Res>? get error {
    if (_self.error == null) {
    return null;
  }

  return $WebhookEventErrorCopyWith<$Res>(_self.error!, (value) {
    return _then(_self.copyWith(error: value));
  });
}
}


/// Adds pattern-matching-related methods to [WebhookEvent].
extension WebhookEventPatterns on WebhookEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _WebhookEvent value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _WebhookEvent() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _WebhookEvent value)  $default,){
final _that = this;
switch (_that) {
case _WebhookEvent():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _WebhookEvent value)?  $default,){
final _that = this;
switch (_that) {
case _WebhookEvent() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String event, @JsonKey(name: 'job_id')  String jobId,  String timestamp,  WebhookEventError? error,  Map<String, String>? metadata,  dynamic results)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _WebhookEvent() when $default != null:
return $default(_that.event,_that.jobId,_that.timestamp,_that.error,_that.metadata,_that.results);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String event, @JsonKey(name: 'job_id')  String jobId,  String timestamp,  WebhookEventError? error,  Map<String, String>? metadata,  dynamic results)  $default,) {final _that = this;
switch (_that) {
case _WebhookEvent():
return $default(_that.event,_that.jobId,_that.timestamp,_that.error,_that.metadata,_that.results);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String event, @JsonKey(name: 'job_id')  String jobId,  String timestamp,  WebhookEventError? error,  Map<String, String>? metadata,  dynamic results)?  $default,) {final _that = this;
switch (_that) {
case _WebhookEvent() when $default != null:
return $default(_that.event,_that.jobId,_that.timestamp,_that.error,_that.metadata,_that.results);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _WebhookEvent implements WebhookEvent {
  const _WebhookEvent({required this.event, @JsonKey(name: 'job_id') required this.jobId, required this.timestamp, this.error, final  Map<String, String>? metadata, this.results}): _metadata = metadata;
  factory _WebhookEvent.fromJson(Map<String, dynamic> json) => _$WebhookEventFromJson(json);

/// Event type: "job.completed" or "job.failed".
@override final  String event;
/// The job ID that triggered this webhook.
@override@JsonKey(name: 'job_id') final  String jobId;
/// RFC3339-formatted timestamp when the job completed.
@override final  String timestamp;
/// Optional error details (present only if job failed or had partial failure).
@override final  WebhookEventError? error;
/// Optional key-value metadata from the webhook configuration,.
/// echoed back for request correlation.
 final  Map<String, String>? _metadata;
/// Optional key-value metadata from the webhook configuration,.
/// echoed back for request correlation.
@override Map<String, String>? get metadata {
  final value = _metadata;
  if (value == null) return null;
  if (_metadata is EqualUnmodifiableMapView) return _metadata;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}

/// Optional extraction results (present only if job succeeded).
/// The shape depends on the extraction config (e.g., structured output,.
/// table detection, OCR results). Consumers should inspect the `event` type.
/// to determine expected fields.
@override final  dynamic results;

/// Create a copy of WebhookEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WebhookEventCopyWith<_WebhookEvent> get copyWith => __$WebhookEventCopyWithImpl<_WebhookEvent>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$WebhookEventToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _WebhookEvent&&(identical(other.event, event) || other.event == event)&&(identical(other.jobId, jobId) || other.jobId == jobId)&&(identical(other.timestamp, timestamp) || other.timestamp == timestamp)&&(identical(other.error, error) || other.error == error)&&const DeepCollectionEquality().equals(other._metadata, _metadata)&&const DeepCollectionEquality().equals(other.results, results));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,event,jobId,timestamp,error,const DeepCollectionEquality().hash(_metadata),const DeepCollectionEquality().hash(results));

@override
String toString() {
  return 'WebhookEvent(event: $event, jobId: $jobId, timestamp: $timestamp, error: $error, metadata: $metadata, results: $results)';
}


}

/// @nodoc
abstract mixin class _$WebhookEventCopyWith<$Res> implements $WebhookEventCopyWith<$Res> {
  factory _$WebhookEventCopyWith(_WebhookEvent value, $Res Function(_WebhookEvent) _then) = __$WebhookEventCopyWithImpl;
@override @useResult
$Res call({
 String event,@JsonKey(name: 'job_id') String jobId, String timestamp, WebhookEventError? error, Map<String, String>? metadata, dynamic results
});


@override $WebhookEventErrorCopyWith<$Res>? get error;

}
/// @nodoc
class __$WebhookEventCopyWithImpl<$Res>
    implements _$WebhookEventCopyWith<$Res> {
  __$WebhookEventCopyWithImpl(this._self, this._then);

  final _WebhookEvent _self;
  final $Res Function(_WebhookEvent) _then;

/// Create a copy of WebhookEvent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? event = null,Object? jobId = null,Object? timestamp = null,Object? error = freezed,Object? metadata = freezed,Object? results = freezed,}) {
  return _then(_WebhookEvent(
event: null == event ? _self.event : event // ignore: cast_nullable_to_non_nullable
as String,jobId: null == jobId ? _self.jobId : jobId // ignore: cast_nullable_to_non_nullable
as String,timestamp: null == timestamp ? _self.timestamp : timestamp // ignore: cast_nullable_to_non_nullable
as String,error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as WebhookEventError?,metadata: freezed == metadata ? _self._metadata : metadata // ignore: cast_nullable_to_non_nullable
as Map<String, String>?,results: freezed == results ? _self.results : results // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}

/// Create a copy of WebhookEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$WebhookEventErrorCopyWith<$Res>? get error {
    if (_self.error == null) {
    return null;
  }

  return $WebhookEventErrorCopyWith<$Res>(_self.error!, (value) {
    return _then(_self.copyWith(error: value));
  });
}
}

// dart format on
