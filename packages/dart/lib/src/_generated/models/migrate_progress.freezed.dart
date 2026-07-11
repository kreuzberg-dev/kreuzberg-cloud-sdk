// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'migrate_progress.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$MigrateProgress {

/// Current phase of migration.
@JsonKey(name: 'current_phase') String get currentPhase;/// Documents successfully dual-written to the new version.
@JsonKey(name: 'documents_dual_written') int get documentsDualWritten;/// Total documents to migrate.
@JsonKey(name: 'documents_total') int get documentsTotal;
/// Create a copy of MigrateProgress
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MigrateProgressCopyWith<MigrateProgress> get copyWith => _$MigrateProgressCopyWithImpl<MigrateProgress>(this as MigrateProgress, _$identity);

  /// Serializes this MigrateProgress to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MigrateProgress&&(identical(other.currentPhase, currentPhase) || other.currentPhase == currentPhase)&&(identical(other.documentsDualWritten, documentsDualWritten) || other.documentsDualWritten == documentsDualWritten)&&(identical(other.documentsTotal, documentsTotal) || other.documentsTotal == documentsTotal));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,currentPhase,documentsDualWritten,documentsTotal);

@override
String toString() {
  return 'MigrateProgress(currentPhase: $currentPhase, documentsDualWritten: $documentsDualWritten, documentsTotal: $documentsTotal)';
}


}

/// @nodoc
abstract mixin class $MigrateProgressCopyWith<$Res>  {
  factory $MigrateProgressCopyWith(MigrateProgress value, $Res Function(MigrateProgress) _then) = _$MigrateProgressCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'current_phase') String currentPhase,@JsonKey(name: 'documents_dual_written') int documentsDualWritten,@JsonKey(name: 'documents_total') int documentsTotal
});




}
/// @nodoc
class _$MigrateProgressCopyWithImpl<$Res>
    implements $MigrateProgressCopyWith<$Res> {
  _$MigrateProgressCopyWithImpl(this._self, this._then);

  final MigrateProgress _self;
  final $Res Function(MigrateProgress) _then;

/// Create a copy of MigrateProgress
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? currentPhase = null,Object? documentsDualWritten = null,Object? documentsTotal = null,}) {
  return _then(_self.copyWith(
currentPhase: null == currentPhase ? _self.currentPhase : currentPhase // ignore: cast_nullable_to_non_nullable
as String,documentsDualWritten: null == documentsDualWritten ? _self.documentsDualWritten : documentsDualWritten // ignore: cast_nullable_to_non_nullable
as int,documentsTotal: null == documentsTotal ? _self.documentsTotal : documentsTotal // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [MigrateProgress].
extension MigrateProgressPatterns on MigrateProgress {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MigrateProgress value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MigrateProgress() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MigrateProgress value)  $default,){
final _that = this;
switch (_that) {
case _MigrateProgress():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MigrateProgress value)?  $default,){
final _that = this;
switch (_that) {
case _MigrateProgress() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'current_phase')  String currentPhase, @JsonKey(name: 'documents_dual_written')  int documentsDualWritten, @JsonKey(name: 'documents_total')  int documentsTotal)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MigrateProgress() when $default != null:
return $default(_that.currentPhase,_that.documentsDualWritten,_that.documentsTotal);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'current_phase')  String currentPhase, @JsonKey(name: 'documents_dual_written')  int documentsDualWritten, @JsonKey(name: 'documents_total')  int documentsTotal)  $default,) {final _that = this;
switch (_that) {
case _MigrateProgress():
return $default(_that.currentPhase,_that.documentsDualWritten,_that.documentsTotal);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'current_phase')  String currentPhase, @JsonKey(name: 'documents_dual_written')  int documentsDualWritten, @JsonKey(name: 'documents_total')  int documentsTotal)?  $default,) {final _that = this;
switch (_that) {
case _MigrateProgress() when $default != null:
return $default(_that.currentPhase,_that.documentsDualWritten,_that.documentsTotal);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MigrateProgress implements MigrateProgress {
  const _MigrateProgress({@JsonKey(name: 'current_phase') required this.currentPhase, @JsonKey(name: 'documents_dual_written') required this.documentsDualWritten, @JsonKey(name: 'documents_total') required this.documentsTotal});
  factory _MigrateProgress.fromJson(Map<String, dynamic> json) => _$MigrateProgressFromJson(json);

/// Current phase of migration.
@override@JsonKey(name: 'current_phase') final  String currentPhase;
/// Documents successfully dual-written to the new version.
@override@JsonKey(name: 'documents_dual_written') final  int documentsDualWritten;
/// Total documents to migrate.
@override@JsonKey(name: 'documents_total') final  int documentsTotal;

/// Create a copy of MigrateProgress
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MigrateProgressCopyWith<_MigrateProgress> get copyWith => __$MigrateProgressCopyWithImpl<_MigrateProgress>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MigrateProgressToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MigrateProgress&&(identical(other.currentPhase, currentPhase) || other.currentPhase == currentPhase)&&(identical(other.documentsDualWritten, documentsDualWritten) || other.documentsDualWritten == documentsDualWritten)&&(identical(other.documentsTotal, documentsTotal) || other.documentsTotal == documentsTotal));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,currentPhase,documentsDualWritten,documentsTotal);

@override
String toString() {
  return 'MigrateProgress(currentPhase: $currentPhase, documentsDualWritten: $documentsDualWritten, documentsTotal: $documentsTotal)';
}


}

/// @nodoc
abstract mixin class _$MigrateProgressCopyWith<$Res> implements $MigrateProgressCopyWith<$Res> {
  factory _$MigrateProgressCopyWith(_MigrateProgress value, $Res Function(_MigrateProgress) _then) = __$MigrateProgressCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'current_phase') String currentPhase,@JsonKey(name: 'documents_dual_written') int documentsDualWritten,@JsonKey(name: 'documents_total') int documentsTotal
});




}
/// @nodoc
class __$MigrateProgressCopyWithImpl<$Res>
    implements _$MigrateProgressCopyWith<$Res> {
  __$MigrateProgressCopyWithImpl(this._self, this._then);

  final _MigrateProgress _self;
  final $Res Function(_MigrateProgress) _then;

/// Create a copy of MigrateProgress
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? currentPhase = null,Object? documentsDualWritten = null,Object? documentsTotal = null,}) {
  return _then(_MigrateProgress(
currentPhase: null == currentPhase ? _self.currentPhase : currentPhase // ignore: cast_nullable_to_non_nullable
as String,documentsDualWritten: null == documentsDualWritten ? _self.documentsDualWritten : documentsDualWritten // ignore: cast_nullable_to_non_nullable
as int,documentsTotal: null == documentsTotal ? _self.documentsTotal : documentsTotal // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
