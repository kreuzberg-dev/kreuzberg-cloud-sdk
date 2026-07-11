// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'retrieve_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$RetrieveResponse {

/// Result chunks (relevance-ordered).
 List<RetrievedChunk> get chunks;/// Latency breakdown.
@JsonKey(name: 'latency_breakdown') LatencyBreakdown get latencyBreakdown;/// Mode used.
 RetrieveMode get mode;/// Which reranker (if any) was actually applied. `None` if rerank.
/// was off; also `None` if rerank was active but fell back to the.
/// primary order — in that case `chunks[i].score_breakdown.rerank_fallback`.
/// records the reason.
@JsonKey(name: 'rerank_applied') RerankerKind? get rerankApplied;
/// Create a copy of RetrieveResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RetrieveResponseCopyWith<RetrieveResponse> get copyWith => _$RetrieveResponseCopyWithImpl<RetrieveResponse>(this as RetrieveResponse, _$identity);

  /// Serializes this RetrieveResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RetrieveResponse&&const DeepCollectionEquality().equals(other.chunks, chunks)&&(identical(other.latencyBreakdown, latencyBreakdown) || other.latencyBreakdown == latencyBreakdown)&&(identical(other.mode, mode) || other.mode == mode)&&(identical(other.rerankApplied, rerankApplied) || other.rerankApplied == rerankApplied));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(chunks),latencyBreakdown,mode,rerankApplied);

@override
String toString() {
  return 'RetrieveResponse(chunks: $chunks, latencyBreakdown: $latencyBreakdown, mode: $mode, rerankApplied: $rerankApplied)';
}


}

/// @nodoc
abstract mixin class $RetrieveResponseCopyWith<$Res>  {
  factory $RetrieveResponseCopyWith(RetrieveResponse value, $Res Function(RetrieveResponse) _then) = _$RetrieveResponseCopyWithImpl;
@useResult
$Res call({
 List<RetrievedChunk> chunks,@JsonKey(name: 'latency_breakdown') LatencyBreakdown latencyBreakdown, RetrieveMode mode,@JsonKey(name: 'rerank_applied') RerankerKind? rerankApplied
});


$LatencyBreakdownCopyWith<$Res> get latencyBreakdown;

}
/// @nodoc
class _$RetrieveResponseCopyWithImpl<$Res>
    implements $RetrieveResponseCopyWith<$Res> {
  _$RetrieveResponseCopyWithImpl(this._self, this._then);

  final RetrieveResponse _self;
  final $Res Function(RetrieveResponse) _then;

/// Create a copy of RetrieveResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? chunks = null,Object? latencyBreakdown = null,Object? mode = null,Object? rerankApplied = freezed,}) {
  return _then(_self.copyWith(
chunks: null == chunks ? _self.chunks : chunks // ignore: cast_nullable_to_non_nullable
as List<RetrievedChunk>,latencyBreakdown: null == latencyBreakdown ? _self.latencyBreakdown : latencyBreakdown // ignore: cast_nullable_to_non_nullable
as LatencyBreakdown,mode: null == mode ? _self.mode : mode // ignore: cast_nullable_to_non_nullable
as RetrieveMode,rerankApplied: freezed == rerankApplied ? _self.rerankApplied : rerankApplied // ignore: cast_nullable_to_non_nullable
as RerankerKind?,
  ));
}
/// Create a copy of RetrieveResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LatencyBreakdownCopyWith<$Res> get latencyBreakdown {

  return $LatencyBreakdownCopyWith<$Res>(_self.latencyBreakdown, (value) {
    return _then(_self.copyWith(latencyBreakdown: value));
  });
}
}


/// Adds pattern-matching-related methods to [RetrieveResponse].
extension RetrieveResponsePatterns on RetrieveResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RetrieveResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RetrieveResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RetrieveResponse value)  $default,){
final _that = this;
switch (_that) {
case _RetrieveResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RetrieveResponse value)?  $default,){
final _that = this;
switch (_that) {
case _RetrieveResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<RetrievedChunk> chunks, @JsonKey(name: 'latency_breakdown')  LatencyBreakdown latencyBreakdown,  RetrieveMode mode, @JsonKey(name: 'rerank_applied')  RerankerKind? rerankApplied)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RetrieveResponse() when $default != null:
return $default(_that.chunks,_that.latencyBreakdown,_that.mode,_that.rerankApplied);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<RetrievedChunk> chunks, @JsonKey(name: 'latency_breakdown')  LatencyBreakdown latencyBreakdown,  RetrieveMode mode, @JsonKey(name: 'rerank_applied')  RerankerKind? rerankApplied)  $default,) {final _that = this;
switch (_that) {
case _RetrieveResponse():
return $default(_that.chunks,_that.latencyBreakdown,_that.mode,_that.rerankApplied);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<RetrievedChunk> chunks, @JsonKey(name: 'latency_breakdown')  LatencyBreakdown latencyBreakdown,  RetrieveMode mode, @JsonKey(name: 'rerank_applied')  RerankerKind? rerankApplied)?  $default,) {final _that = this;
switch (_that) {
case _RetrieveResponse() when $default != null:
return $default(_that.chunks,_that.latencyBreakdown,_that.mode,_that.rerankApplied);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _RetrieveResponse implements RetrieveResponse {
  const _RetrieveResponse({required final  List<RetrievedChunk> chunks, @JsonKey(name: 'latency_breakdown') required this.latencyBreakdown, required this.mode, @JsonKey(name: 'rerank_applied') this.rerankApplied}): _chunks = chunks;
  factory _RetrieveResponse.fromJson(Map<String, dynamic> json) => _$RetrieveResponseFromJson(json);

/// Result chunks (relevance-ordered).
 final  List<RetrievedChunk> _chunks;
/// Result chunks (relevance-ordered).
@override List<RetrievedChunk> get chunks {
  if (_chunks is EqualUnmodifiableListView) return _chunks;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_chunks);
}

/// Latency breakdown.
@override@JsonKey(name: 'latency_breakdown') final  LatencyBreakdown latencyBreakdown;
/// Mode used.
@override final  RetrieveMode mode;
/// Which reranker (if any) was actually applied. `None` if rerank.
/// was off; also `None` if rerank was active but fell back to the.
/// primary order — in that case `chunks[i].score_breakdown.rerank_fallback`.
/// records the reason.
@override@JsonKey(name: 'rerank_applied') final  RerankerKind? rerankApplied;

/// Create a copy of RetrieveResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RetrieveResponseCopyWith<_RetrieveResponse> get copyWith => __$RetrieveResponseCopyWithImpl<_RetrieveResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RetrieveResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RetrieveResponse&&const DeepCollectionEquality().equals(other._chunks, _chunks)&&(identical(other.latencyBreakdown, latencyBreakdown) || other.latencyBreakdown == latencyBreakdown)&&(identical(other.mode, mode) || other.mode == mode)&&(identical(other.rerankApplied, rerankApplied) || other.rerankApplied == rerankApplied));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_chunks),latencyBreakdown,mode,rerankApplied);

@override
String toString() {
  return 'RetrieveResponse(chunks: $chunks, latencyBreakdown: $latencyBreakdown, mode: $mode, rerankApplied: $rerankApplied)';
}


}

/// @nodoc
abstract mixin class _$RetrieveResponseCopyWith<$Res> implements $RetrieveResponseCopyWith<$Res> {
  factory _$RetrieveResponseCopyWith(_RetrieveResponse value, $Res Function(_RetrieveResponse) _then) = __$RetrieveResponseCopyWithImpl;
@override @useResult
$Res call({
 List<RetrievedChunk> chunks,@JsonKey(name: 'latency_breakdown') LatencyBreakdown latencyBreakdown, RetrieveMode mode,@JsonKey(name: 'rerank_applied') RerankerKind? rerankApplied
});


@override $LatencyBreakdownCopyWith<$Res> get latencyBreakdown;

}
/// @nodoc
class __$RetrieveResponseCopyWithImpl<$Res>
    implements _$RetrieveResponseCopyWith<$Res> {
  __$RetrieveResponseCopyWithImpl(this._self, this._then);

  final _RetrieveResponse _self;
  final $Res Function(_RetrieveResponse) _then;

/// Create a copy of RetrieveResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? chunks = null,Object? latencyBreakdown = null,Object? mode = null,Object? rerankApplied = freezed,}) {
  return _then(_RetrieveResponse(
chunks: null == chunks ? _self._chunks : chunks // ignore: cast_nullable_to_non_nullable
as List<RetrievedChunk>,latencyBreakdown: null == latencyBreakdown ? _self.latencyBreakdown : latencyBreakdown // ignore: cast_nullable_to_non_nullable
as LatencyBreakdown,mode: null == mode ? _self.mode : mode // ignore: cast_nullable_to_non_nullable
as RetrieveMode,rerankApplied: freezed == rerankApplied ? _self.rerankApplied : rerankApplied // ignore: cast_nullable_to_non_nullable
as RerankerKind?,
  ));
}

/// Create a copy of RetrieveResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LatencyBreakdownCopyWith<$Res> get latencyBreakdown {

  return $LatencyBreakdownCopyWith<$Res>(_self.latencyBreakdown, (value) {
    return _then(_self.copyWith(latencyBreakdown: value));
  });
}
}

// dart format on
