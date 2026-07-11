// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'rag_job_status_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$RagJobStatusResponse {

/// Timestamp when job was submitted (RFC3339)
@JsonKey(name: 'created_at') String get createdAt;/// Job identifier (ULID) for this async operation
@JsonKey(name: 'job_id') String get jobId;/// Operation type: "ingest", "reindex", or "migrate"
 RagJobKind get kind;/// Current job state
 RagJobState get state;/// Associated collection ID (for migrate only; absent for ingest/reindex)
@JsonKey(name: 'collection_id') String? get collectionId;/// Associated document ID (for ingest/reindex only; absent for migrate)
@JsonKey(name: 'document_id') String? get documentId;/// Error message if state = failed
 String? get error;/// Progress details (only for migrate operations; null for ingest/reindex)
 RagJobProgress? get progress;
/// Create a copy of RagJobStatusResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RagJobStatusResponseCopyWith<RagJobStatusResponse> get copyWith => _$RagJobStatusResponseCopyWithImpl<RagJobStatusResponse>(this as RagJobStatusResponse, _$identity);

  /// Serializes this RagJobStatusResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RagJobStatusResponse&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.jobId, jobId) || other.jobId == jobId)&&(identical(other.kind, kind) || other.kind == kind)&&(identical(other.state, state) || other.state == state)&&(identical(other.collectionId, collectionId) || other.collectionId == collectionId)&&(identical(other.documentId, documentId) || other.documentId == documentId)&&(identical(other.error, error) || other.error == error)&&(identical(other.progress, progress) || other.progress == progress));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,createdAt,jobId,kind,state,collectionId,documentId,error,progress);

@override
String toString() {
  return 'RagJobStatusResponse(createdAt: $createdAt, jobId: $jobId, kind: $kind, state: $state, collectionId: $collectionId, documentId: $documentId, error: $error, progress: $progress)';
}


}

/// @nodoc
abstract mixin class $RagJobStatusResponseCopyWith<$Res>  {
  factory $RagJobStatusResponseCopyWith(RagJobStatusResponse value, $Res Function(RagJobStatusResponse) _then) = _$RagJobStatusResponseCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'created_at') String createdAt,@JsonKey(name: 'job_id') String jobId, RagJobKind kind, RagJobState state,@JsonKey(name: 'collection_id') String? collectionId,@JsonKey(name: 'document_id') String? documentId, String? error, RagJobProgress? progress
});


$RagJobProgressCopyWith<$Res>? get progress;

}
/// @nodoc
class _$RagJobStatusResponseCopyWithImpl<$Res>
    implements $RagJobStatusResponseCopyWith<$Res> {
  _$RagJobStatusResponseCopyWithImpl(this._self, this._then);

  final RagJobStatusResponse _self;
  final $Res Function(RagJobStatusResponse) _then;

/// Create a copy of RagJobStatusResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? createdAt = null,Object? jobId = null,Object? kind = null,Object? state = null,Object? collectionId = freezed,Object? documentId = freezed,Object? error = freezed,Object? progress = freezed,}) {
  return _then(_self.copyWith(
createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,jobId: null == jobId ? _self.jobId : jobId // ignore: cast_nullable_to_non_nullable
as String,kind: null == kind ? _self.kind : kind // ignore: cast_nullable_to_non_nullable
as RagJobKind,state: null == state ? _self.state : state // ignore: cast_nullable_to_non_nullable
as RagJobState,collectionId: freezed == collectionId ? _self.collectionId : collectionId // ignore: cast_nullable_to_non_nullable
as String?,documentId: freezed == documentId ? _self.documentId : documentId // ignore: cast_nullable_to_non_nullable
as String?,error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String?,progress: freezed == progress ? _self.progress : progress // ignore: cast_nullable_to_non_nullable
as RagJobProgress?,
  ));
}
/// Create a copy of RagJobStatusResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RagJobProgressCopyWith<$Res>? get progress {
    if (_self.progress == null) {
    return null;
  }

  return $RagJobProgressCopyWith<$Res>(_self.progress!, (value) {
    return _then(_self.copyWith(progress: value));
  });
}
}


/// Adds pattern-matching-related methods to [RagJobStatusResponse].
extension RagJobStatusResponsePatterns on RagJobStatusResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RagJobStatusResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RagJobStatusResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RagJobStatusResponse value)  $default,){
final _that = this;
switch (_that) {
case _RagJobStatusResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RagJobStatusResponse value)?  $default,){
final _that = this;
switch (_that) {
case _RagJobStatusResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'created_at')  String createdAt, @JsonKey(name: 'job_id')  String jobId,  RagJobKind kind,  RagJobState state, @JsonKey(name: 'collection_id')  String? collectionId, @JsonKey(name: 'document_id')  String? documentId,  String? error,  RagJobProgress? progress)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RagJobStatusResponse() when $default != null:
return $default(_that.createdAt,_that.jobId,_that.kind,_that.state,_that.collectionId,_that.documentId,_that.error,_that.progress);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'created_at')  String createdAt, @JsonKey(name: 'job_id')  String jobId,  RagJobKind kind,  RagJobState state, @JsonKey(name: 'collection_id')  String? collectionId, @JsonKey(name: 'document_id')  String? documentId,  String? error,  RagJobProgress? progress)  $default,) {final _that = this;
switch (_that) {
case _RagJobStatusResponse():
return $default(_that.createdAt,_that.jobId,_that.kind,_that.state,_that.collectionId,_that.documentId,_that.error,_that.progress);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'created_at')  String createdAt, @JsonKey(name: 'job_id')  String jobId,  RagJobKind kind,  RagJobState state, @JsonKey(name: 'collection_id')  String? collectionId, @JsonKey(name: 'document_id')  String? documentId,  String? error,  RagJobProgress? progress)?  $default,) {final _that = this;
switch (_that) {
case _RagJobStatusResponse() when $default != null:
return $default(_that.createdAt,_that.jobId,_that.kind,_that.state,_that.collectionId,_that.documentId,_that.error,_that.progress);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _RagJobStatusResponse implements RagJobStatusResponse {
  const _RagJobStatusResponse({@JsonKey(name: 'created_at') required this.createdAt, @JsonKey(name: 'job_id') required this.jobId, required this.kind, required this.state, @JsonKey(name: 'collection_id') this.collectionId, @JsonKey(name: 'document_id') this.documentId, this.error, this.progress});
  factory _RagJobStatusResponse.fromJson(Map<String, dynamic> json) => _$RagJobStatusResponseFromJson(json);

/// Timestamp when job was submitted (RFC3339)
@override@JsonKey(name: 'created_at') final  String createdAt;
/// Job identifier (ULID) for this async operation
@override@JsonKey(name: 'job_id') final  String jobId;
/// Operation type: "ingest", "reindex", or "migrate"
@override final  RagJobKind kind;
/// Current job state
@override final  RagJobState state;
/// Associated collection ID (for migrate only; absent for ingest/reindex)
@override@JsonKey(name: 'collection_id') final  String? collectionId;
/// Associated document ID (for ingest/reindex only; absent for migrate)
@override@JsonKey(name: 'document_id') final  String? documentId;
/// Error message if state = failed
@override final  String? error;
/// Progress details (only for migrate operations; null for ingest/reindex)
@override final  RagJobProgress? progress;

/// Create a copy of RagJobStatusResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RagJobStatusResponseCopyWith<_RagJobStatusResponse> get copyWith => __$RagJobStatusResponseCopyWithImpl<_RagJobStatusResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RagJobStatusResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RagJobStatusResponse&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.jobId, jobId) || other.jobId == jobId)&&(identical(other.kind, kind) || other.kind == kind)&&(identical(other.state, state) || other.state == state)&&(identical(other.collectionId, collectionId) || other.collectionId == collectionId)&&(identical(other.documentId, documentId) || other.documentId == documentId)&&(identical(other.error, error) || other.error == error)&&(identical(other.progress, progress) || other.progress == progress));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,createdAt,jobId,kind,state,collectionId,documentId,error,progress);

@override
String toString() {
  return 'RagJobStatusResponse(createdAt: $createdAt, jobId: $jobId, kind: $kind, state: $state, collectionId: $collectionId, documentId: $documentId, error: $error, progress: $progress)';
}


}

/// @nodoc
abstract mixin class _$RagJobStatusResponseCopyWith<$Res> implements $RagJobStatusResponseCopyWith<$Res> {
  factory _$RagJobStatusResponseCopyWith(_RagJobStatusResponse value, $Res Function(_RagJobStatusResponse) _then) = __$RagJobStatusResponseCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'created_at') String createdAt,@JsonKey(name: 'job_id') String jobId, RagJobKind kind, RagJobState state,@JsonKey(name: 'collection_id') String? collectionId,@JsonKey(name: 'document_id') String? documentId, String? error, RagJobProgress? progress
});


@override $RagJobProgressCopyWith<$Res>? get progress;

}
/// @nodoc
class __$RagJobStatusResponseCopyWithImpl<$Res>
    implements _$RagJobStatusResponseCopyWith<$Res> {
  __$RagJobStatusResponseCopyWithImpl(this._self, this._then);

  final _RagJobStatusResponse _self;
  final $Res Function(_RagJobStatusResponse) _then;

/// Create a copy of RagJobStatusResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? createdAt = null,Object? jobId = null,Object? kind = null,Object? state = null,Object? collectionId = freezed,Object? documentId = freezed,Object? error = freezed,Object? progress = freezed,}) {
  return _then(_RagJobStatusResponse(
createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,jobId: null == jobId ? _self.jobId : jobId // ignore: cast_nullable_to_non_nullable
as String,kind: null == kind ? _self.kind : kind // ignore: cast_nullable_to_non_nullable
as RagJobKind,state: null == state ? _self.state : state // ignore: cast_nullable_to_non_nullable
as RagJobState,collectionId: freezed == collectionId ? _self.collectionId : collectionId // ignore: cast_nullable_to_non_nullable
as String?,documentId: freezed == documentId ? _self.documentId : documentId // ignore: cast_nullable_to_non_nullable
as String?,error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String?,progress: freezed == progress ? _self.progress : progress // ignore: cast_nullable_to_non_nullable
as RagJobProgress?,
  ));
}

/// Create a copy of RagJobStatusResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RagJobProgressCopyWith<$Res>? get progress {
    if (_self.progress == null) {
    return null;
  }

  return $RagJobProgressCopyWith<$Res>(_self.progress!, (value) {
    return _then(_self.copyWith(progress: value));
  });
}
}

// dart format on
