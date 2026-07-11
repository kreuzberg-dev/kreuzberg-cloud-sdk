// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'latency_breakdown.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$LatencyBreakdown {

/// Primary-stage retrieve (vector / fts / hybrid).
@JsonKey(name: 'retrieve_ms') int get retrieveMs;/// End-to-end including response serialization.
@JsonKey(name: 'total_ms') int get totalMs;/// Reranker call (when active). `None` when rerank was off or.
/// fell back to primary order.
@JsonKey(name: 'rerank_ms') int? get rerankMs;
/// Create a copy of LatencyBreakdown
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LatencyBreakdownCopyWith<LatencyBreakdown> get copyWith => _$LatencyBreakdownCopyWithImpl<LatencyBreakdown>(this as LatencyBreakdown, _$identity);

  /// Serializes this LatencyBreakdown to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LatencyBreakdown&&(identical(other.retrieveMs, retrieveMs) || other.retrieveMs == retrieveMs)&&(identical(other.totalMs, totalMs) || other.totalMs == totalMs)&&(identical(other.rerankMs, rerankMs) || other.rerankMs == rerankMs));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,retrieveMs,totalMs,rerankMs);

@override
String toString() {
  return 'LatencyBreakdown(retrieveMs: $retrieveMs, totalMs: $totalMs, rerankMs: $rerankMs)';
}


}

/// @nodoc
abstract mixin class $LatencyBreakdownCopyWith<$Res>  {
  factory $LatencyBreakdownCopyWith(LatencyBreakdown value, $Res Function(LatencyBreakdown) _then) = _$LatencyBreakdownCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'retrieve_ms') int retrieveMs,@JsonKey(name: 'total_ms') int totalMs,@JsonKey(name: 'rerank_ms') int? rerankMs
});




}
/// @nodoc
class _$LatencyBreakdownCopyWithImpl<$Res>
    implements $LatencyBreakdownCopyWith<$Res> {
  _$LatencyBreakdownCopyWithImpl(this._self, this._then);

  final LatencyBreakdown _self;
  final $Res Function(LatencyBreakdown) _then;

/// Create a copy of LatencyBreakdown
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? retrieveMs = null,Object? totalMs = null,Object? rerankMs = freezed,}) {
  return _then(_self.copyWith(
retrieveMs: null == retrieveMs ? _self.retrieveMs : retrieveMs // ignore: cast_nullable_to_non_nullable
as int,totalMs: null == totalMs ? _self.totalMs : totalMs // ignore: cast_nullable_to_non_nullable
as int,rerankMs: freezed == rerankMs ? _self.rerankMs : rerankMs // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [LatencyBreakdown].
extension LatencyBreakdownPatterns on LatencyBreakdown {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LatencyBreakdown value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LatencyBreakdown() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LatencyBreakdown value)  $default,){
final _that = this;
switch (_that) {
case _LatencyBreakdown():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LatencyBreakdown value)?  $default,){
final _that = this;
switch (_that) {
case _LatencyBreakdown() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'retrieve_ms')  int retrieveMs, @JsonKey(name: 'total_ms')  int totalMs, @JsonKey(name: 'rerank_ms')  int? rerankMs)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LatencyBreakdown() when $default != null:
return $default(_that.retrieveMs,_that.totalMs,_that.rerankMs);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'retrieve_ms')  int retrieveMs, @JsonKey(name: 'total_ms')  int totalMs, @JsonKey(name: 'rerank_ms')  int? rerankMs)  $default,) {final _that = this;
switch (_that) {
case _LatencyBreakdown():
return $default(_that.retrieveMs,_that.totalMs,_that.rerankMs);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'retrieve_ms')  int retrieveMs, @JsonKey(name: 'total_ms')  int totalMs, @JsonKey(name: 'rerank_ms')  int? rerankMs)?  $default,) {final _that = this;
switch (_that) {
case _LatencyBreakdown() when $default != null:
return $default(_that.retrieveMs,_that.totalMs,_that.rerankMs);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _LatencyBreakdown implements LatencyBreakdown {
  const _LatencyBreakdown({@JsonKey(name: 'retrieve_ms') required this.retrieveMs, @JsonKey(name: 'total_ms') required this.totalMs, @JsonKey(name: 'rerank_ms') this.rerankMs});
  factory _LatencyBreakdown.fromJson(Map<String, dynamic> json) => _$LatencyBreakdownFromJson(json);

/// Primary-stage retrieve (vector / fts / hybrid).
@override@JsonKey(name: 'retrieve_ms') final  int retrieveMs;
/// End-to-end including response serialization.
@override@JsonKey(name: 'total_ms') final  int totalMs;
/// Reranker call (when active). `None` when rerank was off or.
/// fell back to primary order.
@override@JsonKey(name: 'rerank_ms') final  int? rerankMs;

/// Create a copy of LatencyBreakdown
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LatencyBreakdownCopyWith<_LatencyBreakdown> get copyWith => __$LatencyBreakdownCopyWithImpl<_LatencyBreakdown>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$LatencyBreakdownToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LatencyBreakdown&&(identical(other.retrieveMs, retrieveMs) || other.retrieveMs == retrieveMs)&&(identical(other.totalMs, totalMs) || other.totalMs == totalMs)&&(identical(other.rerankMs, rerankMs) || other.rerankMs == rerankMs));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,retrieveMs,totalMs,rerankMs);

@override
String toString() {
  return 'LatencyBreakdown(retrieveMs: $retrieveMs, totalMs: $totalMs, rerankMs: $rerankMs)';
}


}

/// @nodoc
abstract mixin class _$LatencyBreakdownCopyWith<$Res> implements $LatencyBreakdownCopyWith<$Res> {
  factory _$LatencyBreakdownCopyWith(_LatencyBreakdown value, $Res Function(_LatencyBreakdown) _then) = __$LatencyBreakdownCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'retrieve_ms') int retrieveMs,@JsonKey(name: 'total_ms') int totalMs,@JsonKey(name: 'rerank_ms') int? rerankMs
});




}
/// @nodoc
class __$LatencyBreakdownCopyWithImpl<$Res>
    implements _$LatencyBreakdownCopyWith<$Res> {
  __$LatencyBreakdownCopyWithImpl(this._self, this._then);

  final _LatencyBreakdown _self;
  final $Res Function(_LatencyBreakdown) _then;

/// Create a copy of LatencyBreakdown
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? retrieveMs = null,Object? totalMs = null,Object? rerankMs = freezed,}) {
  return _then(_LatencyBreakdown(
retrieveMs: null == retrieveMs ? _self.retrieveMs : retrieveMs // ignore: cast_nullable_to_non_nullable
as int,totalMs: null == totalMs ? _self.totalMs : totalMs // ignore: cast_nullable_to_non_nullable
as int,rerankMs: freezed == rerankMs ? _self.rerankMs : rerankMs // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

// dart format on
