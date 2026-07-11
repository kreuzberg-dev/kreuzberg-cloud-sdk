// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_document_async_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CreateDocumentAsyncResponse {

/// The pending document ID (for reference)
@JsonKey(name: 'document_id') String get documentId;/// Job identifier for polling
@JsonKey(name: 'job_id') String get jobId;/// Polling endpoint
 String get poll;/// Lifecycle status
 String get status;
/// Create a copy of CreateDocumentAsyncResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreateDocumentAsyncResponseCopyWith<CreateDocumentAsyncResponse> get copyWith => _$CreateDocumentAsyncResponseCopyWithImpl<CreateDocumentAsyncResponse>(this as CreateDocumentAsyncResponse, _$identity);

  /// Serializes this CreateDocumentAsyncResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateDocumentAsyncResponse&&(identical(other.documentId, documentId) || other.documentId == documentId)&&(identical(other.jobId, jobId) || other.jobId == jobId)&&(identical(other.poll, poll) || other.poll == poll)&&(identical(other.status, status) || other.status == status));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,documentId,jobId,poll,status);

@override
String toString() {
  return 'CreateDocumentAsyncResponse(documentId: $documentId, jobId: $jobId, poll: $poll, status: $status)';
}


}

/// @nodoc
abstract mixin class $CreateDocumentAsyncResponseCopyWith<$Res>  {
  factory $CreateDocumentAsyncResponseCopyWith(CreateDocumentAsyncResponse value, $Res Function(CreateDocumentAsyncResponse) _then) = _$CreateDocumentAsyncResponseCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'document_id') String documentId,@JsonKey(name: 'job_id') String jobId, String poll, String status
});




}
/// @nodoc
class _$CreateDocumentAsyncResponseCopyWithImpl<$Res>
    implements $CreateDocumentAsyncResponseCopyWith<$Res> {
  _$CreateDocumentAsyncResponseCopyWithImpl(this._self, this._then);

  final CreateDocumentAsyncResponse _self;
  final $Res Function(CreateDocumentAsyncResponse) _then;

/// Create a copy of CreateDocumentAsyncResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? documentId = null,Object? jobId = null,Object? poll = null,Object? status = null,}) {
  return _then(_self.copyWith(
documentId: null == documentId ? _self.documentId : documentId // ignore: cast_nullable_to_non_nullable
as String,jobId: null == jobId ? _self.jobId : jobId // ignore: cast_nullable_to_non_nullable
as String,poll: null == poll ? _self.poll : poll // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [CreateDocumentAsyncResponse].
extension CreateDocumentAsyncResponsePatterns on CreateDocumentAsyncResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CreateDocumentAsyncResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CreateDocumentAsyncResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CreateDocumentAsyncResponse value)  $default,){
final _that = this;
switch (_that) {
case _CreateDocumentAsyncResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CreateDocumentAsyncResponse value)?  $default,){
final _that = this;
switch (_that) {
case _CreateDocumentAsyncResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'document_id')  String documentId, @JsonKey(name: 'job_id')  String jobId,  String poll,  String status)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CreateDocumentAsyncResponse() when $default != null:
return $default(_that.documentId,_that.jobId,_that.poll,_that.status);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'document_id')  String documentId, @JsonKey(name: 'job_id')  String jobId,  String poll,  String status)  $default,) {final _that = this;
switch (_that) {
case _CreateDocumentAsyncResponse():
return $default(_that.documentId,_that.jobId,_that.poll,_that.status);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'document_id')  String documentId, @JsonKey(name: 'job_id')  String jobId,  String poll,  String status)?  $default,) {final _that = this;
switch (_that) {
case _CreateDocumentAsyncResponse() when $default != null:
return $default(_that.documentId,_that.jobId,_that.poll,_that.status);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CreateDocumentAsyncResponse implements CreateDocumentAsyncResponse {
  const _CreateDocumentAsyncResponse({@JsonKey(name: 'document_id') required this.documentId, @JsonKey(name: 'job_id') required this.jobId, required this.poll, required this.status});
  factory _CreateDocumentAsyncResponse.fromJson(Map<String, dynamic> json) => _$CreateDocumentAsyncResponseFromJson(json);

/// The pending document ID (for reference)
@override@JsonKey(name: 'document_id') final  String documentId;
/// Job identifier for polling
@override@JsonKey(name: 'job_id') final  String jobId;
/// Polling endpoint
@override final  String poll;
/// Lifecycle status
@override final  String status;

/// Create a copy of CreateDocumentAsyncResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreateDocumentAsyncResponseCopyWith<_CreateDocumentAsyncResponse> get copyWith => __$CreateDocumentAsyncResponseCopyWithImpl<_CreateDocumentAsyncResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CreateDocumentAsyncResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreateDocumentAsyncResponse&&(identical(other.documentId, documentId) || other.documentId == documentId)&&(identical(other.jobId, jobId) || other.jobId == jobId)&&(identical(other.poll, poll) || other.poll == poll)&&(identical(other.status, status) || other.status == status));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,documentId,jobId,poll,status);

@override
String toString() {
  return 'CreateDocumentAsyncResponse(documentId: $documentId, jobId: $jobId, poll: $poll, status: $status)';
}


}

/// @nodoc
abstract mixin class _$CreateDocumentAsyncResponseCopyWith<$Res> implements $CreateDocumentAsyncResponseCopyWith<$Res> {
  factory _$CreateDocumentAsyncResponseCopyWith(_CreateDocumentAsyncResponse value, $Res Function(_CreateDocumentAsyncResponse) _then) = __$CreateDocumentAsyncResponseCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'document_id') String documentId,@JsonKey(name: 'job_id') String jobId, String poll, String status
});




}
/// @nodoc
class __$CreateDocumentAsyncResponseCopyWithImpl<$Res>
    implements _$CreateDocumentAsyncResponseCopyWith<$Res> {
  __$CreateDocumentAsyncResponseCopyWithImpl(this._self, this._then);

  final _CreateDocumentAsyncResponse _self;
  final $Res Function(_CreateDocumentAsyncResponse) _then;

/// Create a copy of CreateDocumentAsyncResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? documentId = null,Object? jobId = null,Object? poll = null,Object? status = null,}) {
  return _then(_CreateDocumentAsyncResponse(
documentId: null == documentId ? _self.documentId : documentId // ignore: cast_nullable_to_non_nullable
as String,jobId: null == jobId ? _self.jobId : jobId // ignore: cast_nullable_to_non_nullable
as String,poll: null == poll ? _self.poll : poll // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
