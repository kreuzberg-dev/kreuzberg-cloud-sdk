// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'rag_job_progress.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$RagJobProgress {

/// Current processing phase (for migrate: "dual_write"|"index_build"|"swap"|"cleanup")
@JsonKey(name: 'current_phase') String get currentPhase;/// Documents successfully processed
@JsonKey(name: 'documents_processed') int get documentsProcessed;/// Total documents to process
@JsonKey(name: 'documents_total') int get documentsTotal;
/// Create a copy of RagJobProgress
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RagJobProgressCopyWith<RagJobProgress> get copyWith => _$RagJobProgressCopyWithImpl<RagJobProgress>(this as RagJobProgress, _$identity);

  /// Serializes this RagJobProgress to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RagJobProgress&&(identical(other.currentPhase, currentPhase) || other.currentPhase == currentPhase)&&(identical(other.documentsProcessed, documentsProcessed) || other.documentsProcessed == documentsProcessed)&&(identical(other.documentsTotal, documentsTotal) || other.documentsTotal == documentsTotal));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,currentPhase,documentsProcessed,documentsTotal);

@override
String toString() {
  return 'RagJobProgress(currentPhase: $currentPhase, documentsProcessed: $documentsProcessed, documentsTotal: $documentsTotal)';
}


}

/// @nodoc
abstract mixin class $RagJobProgressCopyWith<$Res>  {
  factory $RagJobProgressCopyWith(RagJobProgress value, $Res Function(RagJobProgress) _then) = _$RagJobProgressCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'current_phase') String currentPhase,@JsonKey(name: 'documents_processed') int documentsProcessed,@JsonKey(name: 'documents_total') int documentsTotal
});




}
/// @nodoc
class _$RagJobProgressCopyWithImpl<$Res>
    implements $RagJobProgressCopyWith<$Res> {
  _$RagJobProgressCopyWithImpl(this._self, this._then);

  final RagJobProgress _self;
  final $Res Function(RagJobProgress) _then;

/// Create a copy of RagJobProgress
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? currentPhase = null,Object? documentsProcessed = null,Object? documentsTotal = null,}) {
  return _then(_self.copyWith(
currentPhase: null == currentPhase ? _self.currentPhase : currentPhase // ignore: cast_nullable_to_non_nullable
as String,documentsProcessed: null == documentsProcessed ? _self.documentsProcessed : documentsProcessed // ignore: cast_nullable_to_non_nullable
as int,documentsTotal: null == documentsTotal ? _self.documentsTotal : documentsTotal // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [RagJobProgress].
extension RagJobProgressPatterns on RagJobProgress {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RagJobProgress value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RagJobProgress() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RagJobProgress value)  $default,){
final _that = this;
switch (_that) {
case _RagJobProgress():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RagJobProgress value)?  $default,){
final _that = this;
switch (_that) {
case _RagJobProgress() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'current_phase')  String currentPhase, @JsonKey(name: 'documents_processed')  int documentsProcessed, @JsonKey(name: 'documents_total')  int documentsTotal)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RagJobProgress() when $default != null:
return $default(_that.currentPhase,_that.documentsProcessed,_that.documentsTotal);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'current_phase')  String currentPhase, @JsonKey(name: 'documents_processed')  int documentsProcessed, @JsonKey(name: 'documents_total')  int documentsTotal)  $default,) {final _that = this;
switch (_that) {
case _RagJobProgress():
return $default(_that.currentPhase,_that.documentsProcessed,_that.documentsTotal);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'current_phase')  String currentPhase, @JsonKey(name: 'documents_processed')  int documentsProcessed, @JsonKey(name: 'documents_total')  int documentsTotal)?  $default,) {final _that = this;
switch (_that) {
case _RagJobProgress() when $default != null:
return $default(_that.currentPhase,_that.documentsProcessed,_that.documentsTotal);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _RagJobProgress implements RagJobProgress {
  const _RagJobProgress({@JsonKey(name: 'current_phase') required this.currentPhase, @JsonKey(name: 'documents_processed') required this.documentsProcessed, @JsonKey(name: 'documents_total') required this.documentsTotal});
  factory _RagJobProgress.fromJson(Map<String, dynamic> json) => _$RagJobProgressFromJson(json);

/// Current processing phase (for migrate: "dual_write"|"index_build"|"swap"|"cleanup")
@override@JsonKey(name: 'current_phase') final  String currentPhase;
/// Documents successfully processed
@override@JsonKey(name: 'documents_processed') final  int documentsProcessed;
/// Total documents to process
@override@JsonKey(name: 'documents_total') final  int documentsTotal;

/// Create a copy of RagJobProgress
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RagJobProgressCopyWith<_RagJobProgress> get copyWith => __$RagJobProgressCopyWithImpl<_RagJobProgress>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RagJobProgressToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RagJobProgress&&(identical(other.currentPhase, currentPhase) || other.currentPhase == currentPhase)&&(identical(other.documentsProcessed, documentsProcessed) || other.documentsProcessed == documentsProcessed)&&(identical(other.documentsTotal, documentsTotal) || other.documentsTotal == documentsTotal));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,currentPhase,documentsProcessed,documentsTotal);

@override
String toString() {
  return 'RagJobProgress(currentPhase: $currentPhase, documentsProcessed: $documentsProcessed, documentsTotal: $documentsTotal)';
}


}

/// @nodoc
abstract mixin class _$RagJobProgressCopyWith<$Res> implements $RagJobProgressCopyWith<$Res> {
  factory _$RagJobProgressCopyWith(_RagJobProgress value, $Res Function(_RagJobProgress) _then) = __$RagJobProgressCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'current_phase') String currentPhase,@JsonKey(name: 'documents_processed') int documentsProcessed,@JsonKey(name: 'documents_total') int documentsTotal
});




}
/// @nodoc
class __$RagJobProgressCopyWithImpl<$Res>
    implements _$RagJobProgressCopyWith<$Res> {
  __$RagJobProgressCopyWithImpl(this._self, this._then);

  final _RagJobProgress _self;
  final $Res Function(_RagJobProgress) _then;

/// Create a copy of RagJobProgress
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? currentPhase = null,Object? documentsProcessed = null,Object? documentsTotal = null,}) {
  return _then(_RagJobProgress(
currentPhase: null == currentPhase ? _self.currentPhase : currentPhase // ignore: cast_nullable_to_non_nullable
as String,documentsProcessed: null == documentsProcessed ? _self.documentsProcessed : documentsProcessed // ignore: cast_nullable_to_non_nullable
as int,documentsTotal: null == documentsTotal ? _self.documentsTotal : documentsTotal // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
