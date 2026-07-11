// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'migrate_status_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$MigrateStatusResponse {

/// Job ID.
@JsonKey(name: 'job_id') String get jobId;/// Current status.
 MigrateStatus get status;/// Error message (only when failed).
 String? get error;/// Progress details (only available when running or completed).
 MigrateProgress? get progress;
/// Create a copy of MigrateStatusResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MigrateStatusResponseCopyWith<MigrateStatusResponse> get copyWith => _$MigrateStatusResponseCopyWithImpl<MigrateStatusResponse>(this as MigrateStatusResponse, _$identity);

  /// Serializes this MigrateStatusResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MigrateStatusResponse&&(identical(other.jobId, jobId) || other.jobId == jobId)&&(identical(other.status, status) || other.status == status)&&(identical(other.error, error) || other.error == error)&&(identical(other.progress, progress) || other.progress == progress));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,jobId,status,error,progress);

@override
String toString() {
  return 'MigrateStatusResponse(jobId: $jobId, status: $status, error: $error, progress: $progress)';
}


}

/// @nodoc
abstract mixin class $MigrateStatusResponseCopyWith<$Res>  {
  factory $MigrateStatusResponseCopyWith(MigrateStatusResponse value, $Res Function(MigrateStatusResponse) _then) = _$MigrateStatusResponseCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'job_id') String jobId, MigrateStatus status, String? error, MigrateProgress? progress
});


$MigrateProgressCopyWith<$Res>? get progress;

}
/// @nodoc
class _$MigrateStatusResponseCopyWithImpl<$Res>
    implements $MigrateStatusResponseCopyWith<$Res> {
  _$MigrateStatusResponseCopyWithImpl(this._self, this._then);

  final MigrateStatusResponse _self;
  final $Res Function(MigrateStatusResponse) _then;

/// Create a copy of MigrateStatusResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? jobId = null,Object? status = null,Object? error = freezed,Object? progress = freezed,}) {
  return _then(_self.copyWith(
jobId: null == jobId ? _self.jobId : jobId // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as MigrateStatus,error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String?,progress: freezed == progress ? _self.progress : progress // ignore: cast_nullable_to_non_nullable
as MigrateProgress?,
  ));
}
/// Create a copy of MigrateStatusResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MigrateProgressCopyWith<$Res>? get progress {
    if (_self.progress == null) {
    return null;
  }

  return $MigrateProgressCopyWith<$Res>(_self.progress!, (value) {
    return _then(_self.copyWith(progress: value));
  });
}
}


/// Adds pattern-matching-related methods to [MigrateStatusResponse].
extension MigrateStatusResponsePatterns on MigrateStatusResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MigrateStatusResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MigrateStatusResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MigrateStatusResponse value)  $default,){
final _that = this;
switch (_that) {
case _MigrateStatusResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MigrateStatusResponse value)?  $default,){
final _that = this;
switch (_that) {
case _MigrateStatusResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'job_id')  String jobId,  MigrateStatus status,  String? error,  MigrateProgress? progress)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MigrateStatusResponse() when $default != null:
return $default(_that.jobId,_that.status,_that.error,_that.progress);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'job_id')  String jobId,  MigrateStatus status,  String? error,  MigrateProgress? progress)  $default,) {final _that = this;
switch (_that) {
case _MigrateStatusResponse():
return $default(_that.jobId,_that.status,_that.error,_that.progress);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'job_id')  String jobId,  MigrateStatus status,  String? error,  MigrateProgress? progress)?  $default,) {final _that = this;
switch (_that) {
case _MigrateStatusResponse() when $default != null:
return $default(_that.jobId,_that.status,_that.error,_that.progress);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MigrateStatusResponse implements MigrateStatusResponse {
  const _MigrateStatusResponse({@JsonKey(name: 'job_id') required this.jobId, required this.status, this.error, this.progress});
  factory _MigrateStatusResponse.fromJson(Map<String, dynamic> json) => _$MigrateStatusResponseFromJson(json);

/// Job ID.
@override@JsonKey(name: 'job_id') final  String jobId;
/// Current status.
@override final  MigrateStatus status;
/// Error message (only when failed).
@override final  String? error;
/// Progress details (only available when running or completed).
@override final  MigrateProgress? progress;

/// Create a copy of MigrateStatusResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MigrateStatusResponseCopyWith<_MigrateStatusResponse> get copyWith => __$MigrateStatusResponseCopyWithImpl<_MigrateStatusResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MigrateStatusResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MigrateStatusResponse&&(identical(other.jobId, jobId) || other.jobId == jobId)&&(identical(other.status, status) || other.status == status)&&(identical(other.error, error) || other.error == error)&&(identical(other.progress, progress) || other.progress == progress));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,jobId,status,error,progress);

@override
String toString() {
  return 'MigrateStatusResponse(jobId: $jobId, status: $status, error: $error, progress: $progress)';
}


}

/// @nodoc
abstract mixin class _$MigrateStatusResponseCopyWith<$Res> implements $MigrateStatusResponseCopyWith<$Res> {
  factory _$MigrateStatusResponseCopyWith(_MigrateStatusResponse value, $Res Function(_MigrateStatusResponse) _then) = __$MigrateStatusResponseCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'job_id') String jobId, MigrateStatus status, String? error, MigrateProgress? progress
});


@override $MigrateProgressCopyWith<$Res>? get progress;

}
/// @nodoc
class __$MigrateStatusResponseCopyWithImpl<$Res>
    implements _$MigrateStatusResponseCopyWith<$Res> {
  __$MigrateStatusResponseCopyWithImpl(this._self, this._then);

  final _MigrateStatusResponse _self;
  final $Res Function(_MigrateStatusResponse) _then;

/// Create a copy of MigrateStatusResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? jobId = null,Object? status = null,Object? error = freezed,Object? progress = freezed,}) {
  return _then(_MigrateStatusResponse(
jobId: null == jobId ? _self.jobId : jobId // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as MigrateStatus,error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String?,progress: freezed == progress ? _self.progress : progress // ignore: cast_nullable_to_non_nullable
as MigrateProgress?,
  ));
}

/// Create a copy of MigrateStatusResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MigrateProgressCopyWith<$Res>? get progress {
    if (_self.progress == null) {
    return null;
  }

  return $MigrateProgressCopyWith<$Res>(_self.progress!, (value) {
    return _then(_self.copyWith(progress: value));
  });
}
}

// dart format on
