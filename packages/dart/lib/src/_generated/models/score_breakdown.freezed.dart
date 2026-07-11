// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'score_breakdown.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ScoreBreakdown {

/// Primary-stage score discriminant + value(s).
 PrimaryScore get primary;/// Rank position after reranking (1-indexed). Equal to.
/// `rank_primary` when rerank was off or fell back.
@JsonKey(name: 'rank_final') int get rankFinal;/// Rank position in the primary-stage result set (1-indexed).
@JsonKey(name: 'rank_primary') int get rankPrimary;/// Reranker score when rerank was applied. `None` otherwise.
 double? get rerank;/// Reason rerank was skipped or fell back, if applicable.
/// Values: `"timeout"`.
@JsonKey(name: 'rerank_fallback') String? get rerankFallback;
/// Create a copy of ScoreBreakdown
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ScoreBreakdownCopyWith<ScoreBreakdown> get copyWith => _$ScoreBreakdownCopyWithImpl<ScoreBreakdown>(this as ScoreBreakdown, _$identity);

  /// Serializes this ScoreBreakdown to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ScoreBreakdown&&(identical(other.primary, primary) || other.primary == primary)&&(identical(other.rankFinal, rankFinal) || other.rankFinal == rankFinal)&&(identical(other.rankPrimary, rankPrimary) || other.rankPrimary == rankPrimary)&&(identical(other.rerank, rerank) || other.rerank == rerank)&&(identical(other.rerankFallback, rerankFallback) || other.rerankFallback == rerankFallback));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,primary,rankFinal,rankPrimary,rerank,rerankFallback);

@override
String toString() {
  return 'ScoreBreakdown(primary: $primary, rankFinal: $rankFinal, rankPrimary: $rankPrimary, rerank: $rerank, rerankFallback: $rerankFallback)';
}


}

/// @nodoc
abstract mixin class $ScoreBreakdownCopyWith<$Res>  {
  factory $ScoreBreakdownCopyWith(ScoreBreakdown value, $Res Function(ScoreBreakdown) _then) = _$ScoreBreakdownCopyWithImpl;
@useResult
$Res call({
 PrimaryScore primary,@JsonKey(name: 'rank_final') int rankFinal,@JsonKey(name: 'rank_primary') int rankPrimary, double? rerank,@JsonKey(name: 'rerank_fallback') String? rerankFallback
});


$PrimaryScoreCopyWith<$Res> get primary;

}
/// @nodoc
class _$ScoreBreakdownCopyWithImpl<$Res>
    implements $ScoreBreakdownCopyWith<$Res> {
  _$ScoreBreakdownCopyWithImpl(this._self, this._then);

  final ScoreBreakdown _self;
  final $Res Function(ScoreBreakdown) _then;

/// Create a copy of ScoreBreakdown
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? primary = null,Object? rankFinal = null,Object? rankPrimary = null,Object? rerank = freezed,Object? rerankFallback = freezed,}) {
  return _then(_self.copyWith(
primary: null == primary ? _self.primary : primary // ignore: cast_nullable_to_non_nullable
as PrimaryScore,rankFinal: null == rankFinal ? _self.rankFinal : rankFinal // ignore: cast_nullable_to_non_nullable
as int,rankPrimary: null == rankPrimary ? _self.rankPrimary : rankPrimary // ignore: cast_nullable_to_non_nullable
as int,rerank: freezed == rerank ? _self.rerank : rerank // ignore: cast_nullable_to_non_nullable
as double?,rerankFallback: freezed == rerankFallback ? _self.rerankFallback : rerankFallback // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of ScoreBreakdown
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PrimaryScoreCopyWith<$Res> get primary {

  return $PrimaryScoreCopyWith<$Res>(_self.primary, (value) {
    return _then(_self.copyWith(primary: value));
  });
}
}


/// Adds pattern-matching-related methods to [ScoreBreakdown].
extension ScoreBreakdownPatterns on ScoreBreakdown {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ScoreBreakdown value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ScoreBreakdown() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ScoreBreakdown value)  $default,){
final _that = this;
switch (_that) {
case _ScoreBreakdown():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ScoreBreakdown value)?  $default,){
final _that = this;
switch (_that) {
case _ScoreBreakdown() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( PrimaryScore primary, @JsonKey(name: 'rank_final')  int rankFinal, @JsonKey(name: 'rank_primary')  int rankPrimary,  double? rerank, @JsonKey(name: 'rerank_fallback')  String? rerankFallback)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ScoreBreakdown() when $default != null:
return $default(_that.primary,_that.rankFinal,_that.rankPrimary,_that.rerank,_that.rerankFallback);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( PrimaryScore primary, @JsonKey(name: 'rank_final')  int rankFinal, @JsonKey(name: 'rank_primary')  int rankPrimary,  double? rerank, @JsonKey(name: 'rerank_fallback')  String? rerankFallback)  $default,) {final _that = this;
switch (_that) {
case _ScoreBreakdown():
return $default(_that.primary,_that.rankFinal,_that.rankPrimary,_that.rerank,_that.rerankFallback);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( PrimaryScore primary, @JsonKey(name: 'rank_final')  int rankFinal, @JsonKey(name: 'rank_primary')  int rankPrimary,  double? rerank, @JsonKey(name: 'rerank_fallback')  String? rerankFallback)?  $default,) {final _that = this;
switch (_that) {
case _ScoreBreakdown() when $default != null:
return $default(_that.primary,_that.rankFinal,_that.rankPrimary,_that.rerank,_that.rerankFallback);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ScoreBreakdown implements ScoreBreakdown {
  const _ScoreBreakdown({required this.primary, @JsonKey(name: 'rank_final') required this.rankFinal, @JsonKey(name: 'rank_primary') required this.rankPrimary, this.rerank, @JsonKey(name: 'rerank_fallback') this.rerankFallback});
  factory _ScoreBreakdown.fromJson(Map<String, dynamic> json) => _$ScoreBreakdownFromJson(json);

/// Primary-stage score discriminant + value(s).
@override final  PrimaryScore primary;
/// Rank position after reranking (1-indexed). Equal to.
/// `rank_primary` when rerank was off or fell back.
@override@JsonKey(name: 'rank_final') final  int rankFinal;
/// Rank position in the primary-stage result set (1-indexed).
@override@JsonKey(name: 'rank_primary') final  int rankPrimary;
/// Reranker score when rerank was applied. `None` otherwise.
@override final  double? rerank;
/// Reason rerank was skipped or fell back, if applicable.
/// Values: `"timeout"`.
@override@JsonKey(name: 'rerank_fallback') final  String? rerankFallback;

/// Create a copy of ScoreBreakdown
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ScoreBreakdownCopyWith<_ScoreBreakdown> get copyWith => __$ScoreBreakdownCopyWithImpl<_ScoreBreakdown>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ScoreBreakdownToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ScoreBreakdown&&(identical(other.primary, primary) || other.primary == primary)&&(identical(other.rankFinal, rankFinal) || other.rankFinal == rankFinal)&&(identical(other.rankPrimary, rankPrimary) || other.rankPrimary == rankPrimary)&&(identical(other.rerank, rerank) || other.rerank == rerank)&&(identical(other.rerankFallback, rerankFallback) || other.rerankFallback == rerankFallback));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,primary,rankFinal,rankPrimary,rerank,rerankFallback);

@override
String toString() {
  return 'ScoreBreakdown(primary: $primary, rankFinal: $rankFinal, rankPrimary: $rankPrimary, rerank: $rerank, rerankFallback: $rerankFallback)';
}


}

/// @nodoc
abstract mixin class _$ScoreBreakdownCopyWith<$Res> implements $ScoreBreakdownCopyWith<$Res> {
  factory _$ScoreBreakdownCopyWith(_ScoreBreakdown value, $Res Function(_ScoreBreakdown) _then) = __$ScoreBreakdownCopyWithImpl;
@override @useResult
$Res call({
 PrimaryScore primary,@JsonKey(name: 'rank_final') int rankFinal,@JsonKey(name: 'rank_primary') int rankPrimary, double? rerank,@JsonKey(name: 'rerank_fallback') String? rerankFallback
});


@override $PrimaryScoreCopyWith<$Res> get primary;

}
/// @nodoc
class __$ScoreBreakdownCopyWithImpl<$Res>
    implements _$ScoreBreakdownCopyWith<$Res> {
  __$ScoreBreakdownCopyWithImpl(this._self, this._then);

  final _ScoreBreakdown _self;
  final $Res Function(_ScoreBreakdown) _then;

/// Create a copy of ScoreBreakdown
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? primary = null,Object? rankFinal = null,Object? rankPrimary = null,Object? rerank = freezed,Object? rerankFallback = freezed,}) {
  return _then(_ScoreBreakdown(
primary: null == primary ? _self.primary : primary // ignore: cast_nullable_to_non_nullable
as PrimaryScore,rankFinal: null == rankFinal ? _self.rankFinal : rankFinal // ignore: cast_nullable_to_non_nullable
as int,rankPrimary: null == rankPrimary ? _self.rankPrimary : rankPrimary // ignore: cast_nullable_to_non_nullable
as int,rerank: freezed == rerank ? _self.rerank : rerank // ignore: cast_nullable_to_non_nullable
as double?,rerankFallback: freezed == rerankFallback ? _self.rerankFallback : rerankFallback // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of ScoreBreakdown
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PrimaryScoreCopyWith<$Res> get primary {

  return $PrimaryScoreCopyWith<$Res>(_self.primary, (value) {
    return _then(_self.copyWith(primary: value));
  });
}
}

// dart format on
