// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'classification_label.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ClassificationLabel {

/// Label name as configured in `PageClassificationConfig::labels`.
 String get label;/// Backend-reported confidence in `[0.0, 1.0]`. `None` when the backend (e.g. an LLM.
/// prompt without explicit confidence schema) did not report one.
 double? get confidence;
/// Create a copy of ClassificationLabel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ClassificationLabelCopyWith<ClassificationLabel> get copyWith => _$ClassificationLabelCopyWithImpl<ClassificationLabel>(this as ClassificationLabel, _$identity);

  /// Serializes this ClassificationLabel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ClassificationLabel&&(identical(other.label, label) || other.label == label)&&(identical(other.confidence, confidence) || other.confidence == confidence));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,label,confidence);

@override
String toString() {
  return 'ClassificationLabel(label: $label, confidence: $confidence)';
}


}

/// @nodoc
abstract mixin class $ClassificationLabelCopyWith<$Res>  {
  factory $ClassificationLabelCopyWith(ClassificationLabel value, $Res Function(ClassificationLabel) _then) = _$ClassificationLabelCopyWithImpl;
@useResult
$Res call({
 String label, double? confidence
});




}
/// @nodoc
class _$ClassificationLabelCopyWithImpl<$Res>
    implements $ClassificationLabelCopyWith<$Res> {
  _$ClassificationLabelCopyWithImpl(this._self, this._then);

  final ClassificationLabel _self;
  final $Res Function(ClassificationLabel) _then;

/// Create a copy of ClassificationLabel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? label = null,Object? confidence = freezed,}) {
  return _then(_self.copyWith(
label: null == label ? _self.label : label // ignore: cast_nullable_to_non_nullable
as String,confidence: freezed == confidence ? _self.confidence : confidence // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}

}


/// Adds pattern-matching-related methods to [ClassificationLabel].
extension ClassificationLabelPatterns on ClassificationLabel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ClassificationLabel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ClassificationLabel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ClassificationLabel value)  $default,){
final _that = this;
switch (_that) {
case _ClassificationLabel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ClassificationLabel value)?  $default,){
final _that = this;
switch (_that) {
case _ClassificationLabel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String label,  double? confidence)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ClassificationLabel() when $default != null:
return $default(_that.label,_that.confidence);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String label,  double? confidence)  $default,) {final _that = this;
switch (_that) {
case _ClassificationLabel():
return $default(_that.label,_that.confidence);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String label,  double? confidence)?  $default,) {final _that = this;
switch (_that) {
case _ClassificationLabel() when $default != null:
return $default(_that.label,_that.confidence);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ClassificationLabel implements ClassificationLabel {
  const _ClassificationLabel({required this.label, this.confidence});
  factory _ClassificationLabel.fromJson(Map<String, dynamic> json) => _$ClassificationLabelFromJson(json);

/// Label name as configured in `PageClassificationConfig::labels`.
@override final  String label;
/// Backend-reported confidence in `[0.0, 1.0]`. `None` when the backend (e.g. an LLM.
/// prompt without explicit confidence schema) did not report one.
@override final  double? confidence;

/// Create a copy of ClassificationLabel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ClassificationLabelCopyWith<_ClassificationLabel> get copyWith => __$ClassificationLabelCopyWithImpl<_ClassificationLabel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ClassificationLabelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ClassificationLabel&&(identical(other.label, label) || other.label == label)&&(identical(other.confidence, confidence) || other.confidence == confidence));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,label,confidence);

@override
String toString() {
  return 'ClassificationLabel(label: $label, confidence: $confidence)';
}


}

/// @nodoc
abstract mixin class _$ClassificationLabelCopyWith<$Res> implements $ClassificationLabelCopyWith<$Res> {
  factory _$ClassificationLabelCopyWith(_ClassificationLabel value, $Res Function(_ClassificationLabel) _then) = __$ClassificationLabelCopyWithImpl;
@override @useResult
$Res call({
 String label, double? confidence
});




}
/// @nodoc
class __$ClassificationLabelCopyWithImpl<$Res>
    implements _$ClassificationLabelCopyWith<$Res> {
  __$ClassificationLabelCopyWithImpl(this._self, this._then);

  final _ClassificationLabel _self;
  final $Res Function(_ClassificationLabel) _then;

/// Create a copy of ClassificationLabel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? label = null,Object? confidence = freezed,}) {
  return _then(_ClassificationLabel(
label: null == label ? _self.label : label // ignore: cast_nullable_to_non_nullable
as String,confidence: freezed == confidence ? _self.confidence : confidence // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}


}

// dart format on
