// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'migrate_embeddings_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$MigrateEmbeddingsResponse {

/// Collection being migrated.
@JsonKey(name: 'collection_id') String get collectionId;/// Current embedding source.
@JsonKey(name: 'from_source') String get fromSource;/// Current embedding version.
@JsonKey(name: 'from_version') int get fromVersion;/// Job ID for polling progress.
@JsonKey(name: 'job_id') String get jobId;/// Poll endpoint: `/v1/rag/collections/{name}/migrate-embeddings/{job_id}`.
 String get poll;/// Current migration status.
 MigrateStatus get status;/// Target embedding source.
@JsonKey(name: 'to_source') String get toSource;/// Target embedding version.
@JsonKey(name: 'to_version') int get toVersion;
/// Create a copy of MigrateEmbeddingsResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MigrateEmbeddingsResponseCopyWith<MigrateEmbeddingsResponse> get copyWith => _$MigrateEmbeddingsResponseCopyWithImpl<MigrateEmbeddingsResponse>(this as MigrateEmbeddingsResponse, _$identity);

  /// Serializes this MigrateEmbeddingsResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MigrateEmbeddingsResponse&&(identical(other.collectionId, collectionId) || other.collectionId == collectionId)&&(identical(other.fromSource, fromSource) || other.fromSource == fromSource)&&(identical(other.fromVersion, fromVersion) || other.fromVersion == fromVersion)&&(identical(other.jobId, jobId) || other.jobId == jobId)&&(identical(other.poll, poll) || other.poll == poll)&&(identical(other.status, status) || other.status == status)&&(identical(other.toSource, toSource) || other.toSource == toSource)&&(identical(other.toVersion, toVersion) || other.toVersion == toVersion));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,collectionId,fromSource,fromVersion,jobId,poll,status,toSource,toVersion);

@override
String toString() {
  return 'MigrateEmbeddingsResponse(collectionId: $collectionId, fromSource: $fromSource, fromVersion: $fromVersion, jobId: $jobId, poll: $poll, status: $status, toSource: $toSource, toVersion: $toVersion)';
}


}

/// @nodoc
abstract mixin class $MigrateEmbeddingsResponseCopyWith<$Res>  {
  factory $MigrateEmbeddingsResponseCopyWith(MigrateEmbeddingsResponse value, $Res Function(MigrateEmbeddingsResponse) _then) = _$MigrateEmbeddingsResponseCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'collection_id') String collectionId,@JsonKey(name: 'from_source') String fromSource,@JsonKey(name: 'from_version') int fromVersion,@JsonKey(name: 'job_id') String jobId, String poll, MigrateStatus status,@JsonKey(name: 'to_source') String toSource,@JsonKey(name: 'to_version') int toVersion
});




}
/// @nodoc
class _$MigrateEmbeddingsResponseCopyWithImpl<$Res>
    implements $MigrateEmbeddingsResponseCopyWith<$Res> {
  _$MigrateEmbeddingsResponseCopyWithImpl(this._self, this._then);

  final MigrateEmbeddingsResponse _self;
  final $Res Function(MigrateEmbeddingsResponse) _then;

/// Create a copy of MigrateEmbeddingsResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? collectionId = null,Object? fromSource = null,Object? fromVersion = null,Object? jobId = null,Object? poll = null,Object? status = null,Object? toSource = null,Object? toVersion = null,}) {
  return _then(_self.copyWith(
collectionId: null == collectionId ? _self.collectionId : collectionId // ignore: cast_nullable_to_non_nullable
as String,fromSource: null == fromSource ? _self.fromSource : fromSource // ignore: cast_nullable_to_non_nullable
as String,fromVersion: null == fromVersion ? _self.fromVersion : fromVersion // ignore: cast_nullable_to_non_nullable
as int,jobId: null == jobId ? _self.jobId : jobId // ignore: cast_nullable_to_non_nullable
as String,poll: null == poll ? _self.poll : poll // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as MigrateStatus,toSource: null == toSource ? _self.toSource : toSource // ignore: cast_nullable_to_non_nullable
as String,toVersion: null == toVersion ? _self.toVersion : toVersion // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [MigrateEmbeddingsResponse].
extension MigrateEmbeddingsResponsePatterns on MigrateEmbeddingsResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MigrateEmbeddingsResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MigrateEmbeddingsResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MigrateEmbeddingsResponse value)  $default,){
final _that = this;
switch (_that) {
case _MigrateEmbeddingsResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MigrateEmbeddingsResponse value)?  $default,){
final _that = this;
switch (_that) {
case _MigrateEmbeddingsResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'collection_id')  String collectionId, @JsonKey(name: 'from_source')  String fromSource, @JsonKey(name: 'from_version')  int fromVersion, @JsonKey(name: 'job_id')  String jobId,  String poll,  MigrateStatus status, @JsonKey(name: 'to_source')  String toSource, @JsonKey(name: 'to_version')  int toVersion)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MigrateEmbeddingsResponse() when $default != null:
return $default(_that.collectionId,_that.fromSource,_that.fromVersion,_that.jobId,_that.poll,_that.status,_that.toSource,_that.toVersion);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'collection_id')  String collectionId, @JsonKey(name: 'from_source')  String fromSource, @JsonKey(name: 'from_version')  int fromVersion, @JsonKey(name: 'job_id')  String jobId,  String poll,  MigrateStatus status, @JsonKey(name: 'to_source')  String toSource, @JsonKey(name: 'to_version')  int toVersion)  $default,) {final _that = this;
switch (_that) {
case _MigrateEmbeddingsResponse():
return $default(_that.collectionId,_that.fromSource,_that.fromVersion,_that.jobId,_that.poll,_that.status,_that.toSource,_that.toVersion);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'collection_id')  String collectionId, @JsonKey(name: 'from_source')  String fromSource, @JsonKey(name: 'from_version')  int fromVersion, @JsonKey(name: 'job_id')  String jobId,  String poll,  MigrateStatus status, @JsonKey(name: 'to_source')  String toSource, @JsonKey(name: 'to_version')  int toVersion)?  $default,) {final _that = this;
switch (_that) {
case _MigrateEmbeddingsResponse() when $default != null:
return $default(_that.collectionId,_that.fromSource,_that.fromVersion,_that.jobId,_that.poll,_that.status,_that.toSource,_that.toVersion);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MigrateEmbeddingsResponse implements MigrateEmbeddingsResponse {
  const _MigrateEmbeddingsResponse({@JsonKey(name: 'collection_id') required this.collectionId, @JsonKey(name: 'from_source') required this.fromSource, @JsonKey(name: 'from_version') required this.fromVersion, @JsonKey(name: 'job_id') required this.jobId, required this.poll, required this.status, @JsonKey(name: 'to_source') required this.toSource, @JsonKey(name: 'to_version') required this.toVersion});
  factory _MigrateEmbeddingsResponse.fromJson(Map<String, dynamic> json) => _$MigrateEmbeddingsResponseFromJson(json);

/// Collection being migrated.
@override@JsonKey(name: 'collection_id') final  String collectionId;
/// Current embedding source.
@override@JsonKey(name: 'from_source') final  String fromSource;
/// Current embedding version.
@override@JsonKey(name: 'from_version') final  int fromVersion;
/// Job ID for polling progress.
@override@JsonKey(name: 'job_id') final  String jobId;
/// Poll endpoint: `/v1/rag/collections/{name}/migrate-embeddings/{job_id}`.
@override final  String poll;
/// Current migration status.
@override final  MigrateStatus status;
/// Target embedding source.
@override@JsonKey(name: 'to_source') final  String toSource;
/// Target embedding version.
@override@JsonKey(name: 'to_version') final  int toVersion;

/// Create a copy of MigrateEmbeddingsResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MigrateEmbeddingsResponseCopyWith<_MigrateEmbeddingsResponse> get copyWith => __$MigrateEmbeddingsResponseCopyWithImpl<_MigrateEmbeddingsResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MigrateEmbeddingsResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MigrateEmbeddingsResponse&&(identical(other.collectionId, collectionId) || other.collectionId == collectionId)&&(identical(other.fromSource, fromSource) || other.fromSource == fromSource)&&(identical(other.fromVersion, fromVersion) || other.fromVersion == fromVersion)&&(identical(other.jobId, jobId) || other.jobId == jobId)&&(identical(other.poll, poll) || other.poll == poll)&&(identical(other.status, status) || other.status == status)&&(identical(other.toSource, toSource) || other.toSource == toSource)&&(identical(other.toVersion, toVersion) || other.toVersion == toVersion));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,collectionId,fromSource,fromVersion,jobId,poll,status,toSource,toVersion);

@override
String toString() {
  return 'MigrateEmbeddingsResponse(collectionId: $collectionId, fromSource: $fromSource, fromVersion: $fromVersion, jobId: $jobId, poll: $poll, status: $status, toSource: $toSource, toVersion: $toVersion)';
}


}

/// @nodoc
abstract mixin class _$MigrateEmbeddingsResponseCopyWith<$Res> implements $MigrateEmbeddingsResponseCopyWith<$Res> {
  factory _$MigrateEmbeddingsResponseCopyWith(_MigrateEmbeddingsResponse value, $Res Function(_MigrateEmbeddingsResponse) _then) = __$MigrateEmbeddingsResponseCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'collection_id') String collectionId,@JsonKey(name: 'from_source') String fromSource,@JsonKey(name: 'from_version') int fromVersion,@JsonKey(name: 'job_id') String jobId, String poll, MigrateStatus status,@JsonKey(name: 'to_source') String toSource,@JsonKey(name: 'to_version') int toVersion
});




}
/// @nodoc
class __$MigrateEmbeddingsResponseCopyWithImpl<$Res>
    implements _$MigrateEmbeddingsResponseCopyWith<$Res> {
  __$MigrateEmbeddingsResponseCopyWithImpl(this._self, this._then);

  final _MigrateEmbeddingsResponse _self;
  final $Res Function(_MigrateEmbeddingsResponse) _then;

/// Create a copy of MigrateEmbeddingsResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? collectionId = null,Object? fromSource = null,Object? fromVersion = null,Object? jobId = null,Object? poll = null,Object? status = null,Object? toSource = null,Object? toVersion = null,}) {
  return _then(_MigrateEmbeddingsResponse(
collectionId: null == collectionId ? _self.collectionId : collectionId // ignore: cast_nullable_to_non_nullable
as String,fromSource: null == fromSource ? _self.fromSource : fromSource // ignore: cast_nullable_to_non_nullable
as String,fromVersion: null == fromVersion ? _self.fromVersion : fromVersion // ignore: cast_nullable_to_non_nullable
as int,jobId: null == jobId ? _self.jobId : jobId // ignore: cast_nullable_to_non_nullable
as String,poll: null == poll ? _self.poll : poll // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as MigrateStatus,toSource: null == toSource ? _self.toSource : toSource // ignore: cast_nullable_to_non_nullable
as String,toVersion: null == toVersion ? _self.toVersion : toVersion // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
