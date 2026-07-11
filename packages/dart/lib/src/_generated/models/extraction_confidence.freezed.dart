// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'extraction_confidence.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ExtractionConfidence {

/// Weighted blend in `[0, 1]`.  The value compared against the fallback threshold.
 double get combined;/// Whether the merged output validates against the preset schema.
@JsonKey(name: 'schema_compliance') SchemaCompliance get schemaCompliance;/// Fraction of pages with a usable text layer.
@JsonKey(name: 'text_coverage') double get textCoverage;/// Mean OCR per-element recognition confidence when OCR ran; `None` when it did not.
@JsonKey(name: 'ocr_aggregate') double? get ocrAggregate;
/// Create a copy of ExtractionConfidence
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ExtractionConfidenceCopyWith<ExtractionConfidence> get copyWith => _$ExtractionConfidenceCopyWithImpl<ExtractionConfidence>(this as ExtractionConfidence, _$identity);

  /// Serializes this ExtractionConfidence to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ExtractionConfidence&&(identical(other.combined, combined) || other.combined == combined)&&(identical(other.schemaCompliance, schemaCompliance) || other.schemaCompliance == schemaCompliance)&&(identical(other.textCoverage, textCoverage) || other.textCoverage == textCoverage)&&(identical(other.ocrAggregate, ocrAggregate) || other.ocrAggregate == ocrAggregate));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,combined,schemaCompliance,textCoverage,ocrAggregate);

@override
String toString() {
  return 'ExtractionConfidence(combined: $combined, schemaCompliance: $schemaCompliance, textCoverage: $textCoverage, ocrAggregate: $ocrAggregate)';
}


}

/// @nodoc
abstract mixin class $ExtractionConfidenceCopyWith<$Res>  {
  factory $ExtractionConfidenceCopyWith(ExtractionConfidence value, $Res Function(ExtractionConfidence) _then) = _$ExtractionConfidenceCopyWithImpl;
@useResult
$Res call({
 double combined,@JsonKey(name: 'schema_compliance') SchemaCompliance schemaCompliance,@JsonKey(name: 'text_coverage') double textCoverage,@JsonKey(name: 'ocr_aggregate') double? ocrAggregate
});




}
/// @nodoc
class _$ExtractionConfidenceCopyWithImpl<$Res>
    implements $ExtractionConfidenceCopyWith<$Res> {
  _$ExtractionConfidenceCopyWithImpl(this._self, this._then);

  final ExtractionConfidence _self;
  final $Res Function(ExtractionConfidence) _then;

/// Create a copy of ExtractionConfidence
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? combined = null,Object? schemaCompliance = null,Object? textCoverage = null,Object? ocrAggregate = freezed,}) {
  return _then(_self.copyWith(
combined: null == combined ? _self.combined : combined // ignore: cast_nullable_to_non_nullable
as double,schemaCompliance: null == schemaCompliance ? _self.schemaCompliance : schemaCompliance // ignore: cast_nullable_to_non_nullable
as SchemaCompliance,textCoverage: null == textCoverage ? _self.textCoverage : textCoverage // ignore: cast_nullable_to_non_nullable
as double,ocrAggregate: freezed == ocrAggregate ? _self.ocrAggregate : ocrAggregate // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}

}


/// Adds pattern-matching-related methods to [ExtractionConfidence].
extension ExtractionConfidencePatterns on ExtractionConfidence {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ExtractionConfidence value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ExtractionConfidence() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ExtractionConfidence value)  $default,){
final _that = this;
switch (_that) {
case _ExtractionConfidence():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ExtractionConfidence value)?  $default,){
final _that = this;
switch (_that) {
case _ExtractionConfidence() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( double combined, @JsonKey(name: 'schema_compliance')  SchemaCompliance schemaCompliance, @JsonKey(name: 'text_coverage')  double textCoverage, @JsonKey(name: 'ocr_aggregate')  double? ocrAggregate)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ExtractionConfidence() when $default != null:
return $default(_that.combined,_that.schemaCompliance,_that.textCoverage,_that.ocrAggregate);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( double combined, @JsonKey(name: 'schema_compliance')  SchemaCompliance schemaCompliance, @JsonKey(name: 'text_coverage')  double textCoverage, @JsonKey(name: 'ocr_aggregate')  double? ocrAggregate)  $default,) {final _that = this;
switch (_that) {
case _ExtractionConfidence():
return $default(_that.combined,_that.schemaCompliance,_that.textCoverage,_that.ocrAggregate);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( double combined, @JsonKey(name: 'schema_compliance')  SchemaCompliance schemaCompliance, @JsonKey(name: 'text_coverage')  double textCoverage, @JsonKey(name: 'ocr_aggregate')  double? ocrAggregate)?  $default,) {final _that = this;
switch (_that) {
case _ExtractionConfidence() when $default != null:
return $default(_that.combined,_that.schemaCompliance,_that.textCoverage,_that.ocrAggregate);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ExtractionConfidence implements ExtractionConfidence {
  const _ExtractionConfidence({required this.combined, @JsonKey(name: 'schema_compliance') required this.schemaCompliance, @JsonKey(name: 'text_coverage') required this.textCoverage, @JsonKey(name: 'ocr_aggregate') this.ocrAggregate});
  factory _ExtractionConfidence.fromJson(Map<String, dynamic> json) => _$ExtractionConfidenceFromJson(json);

/// Weighted blend in `[0, 1]`.  The value compared against the fallback threshold.
@override final  double combined;
/// Whether the merged output validates against the preset schema.
@override@JsonKey(name: 'schema_compliance') final  SchemaCompliance schemaCompliance;
/// Fraction of pages with a usable text layer.
@override@JsonKey(name: 'text_coverage') final  double textCoverage;
/// Mean OCR per-element recognition confidence when OCR ran; `None` when it did not.
@override@JsonKey(name: 'ocr_aggregate') final  double? ocrAggregate;

/// Create a copy of ExtractionConfidence
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ExtractionConfidenceCopyWith<_ExtractionConfidence> get copyWith => __$ExtractionConfidenceCopyWithImpl<_ExtractionConfidence>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ExtractionConfidenceToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ExtractionConfidence&&(identical(other.combined, combined) || other.combined == combined)&&(identical(other.schemaCompliance, schemaCompliance) || other.schemaCompliance == schemaCompliance)&&(identical(other.textCoverage, textCoverage) || other.textCoverage == textCoverage)&&(identical(other.ocrAggregate, ocrAggregate) || other.ocrAggregate == ocrAggregate));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,combined,schemaCompliance,textCoverage,ocrAggregate);

@override
String toString() {
  return 'ExtractionConfidence(combined: $combined, schemaCompliance: $schemaCompliance, textCoverage: $textCoverage, ocrAggregate: $ocrAggregate)';
}


}

/// @nodoc
abstract mixin class _$ExtractionConfidenceCopyWith<$Res> implements $ExtractionConfidenceCopyWith<$Res> {
  factory _$ExtractionConfidenceCopyWith(_ExtractionConfidence value, $Res Function(_ExtractionConfidence) _then) = __$ExtractionConfidenceCopyWithImpl;
@override @useResult
$Res call({
 double combined,@JsonKey(name: 'schema_compliance') SchemaCompliance schemaCompliance,@JsonKey(name: 'text_coverage') double textCoverage,@JsonKey(name: 'ocr_aggregate') double? ocrAggregate
});




}
/// @nodoc
class __$ExtractionConfidenceCopyWithImpl<$Res>
    implements _$ExtractionConfidenceCopyWith<$Res> {
  __$ExtractionConfidenceCopyWithImpl(this._self, this._then);

  final _ExtractionConfidence _self;
  final $Res Function(_ExtractionConfidence) _then;

/// Create a copy of ExtractionConfidence
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? combined = null,Object? schemaCompliance = null,Object? textCoverage = null,Object? ocrAggregate = freezed,}) {
  return _then(_ExtractionConfidence(
combined: null == combined ? _self.combined : combined // ignore: cast_nullable_to_non_nullable
as double,schemaCompliance: null == schemaCompliance ? _self.schemaCompliance : schemaCompliance // ignore: cast_nullable_to_non_nullable
as SchemaCompliance,textCoverage: null == textCoverage ? _self.textCoverage : textCoverage // ignore: cast_nullable_to_non_nullable
as double,ocrAggregate: freezed == ocrAggregate ? _self.ocrAggregate : ocrAggregate // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}


}

// dart format on
