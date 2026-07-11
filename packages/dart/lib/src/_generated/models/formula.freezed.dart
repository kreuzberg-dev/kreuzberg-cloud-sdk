// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'formula.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Formula {

/// Bounding box of the formula region on its page, in rendered-image pixel coordinates.
///
/// The coordinates are in the space of the OCR-rendered page image at the OCR DPI.
/// (typically 300 DPI). These coordinates are NOT comparable to bounding boxes from.
/// native PDF text extraction, which use PDF point coordinates.
 BoundingBox get bbox;/// LaTeX source of the recognized formula, without surrounding `$$` delimiters.
///
/// This field contains the raw LaTeX code as produced by the OCR backend.
/// To render the formula in Markdown or other formats, wrap with `$$..$$` delimiters as needed.
 String get latex;/// 1-indexed page number the formula appears on in the document.
///
/// This is set by the extraction pipeline based on which page the formula was found on.
 int get page;
/// Create a copy of Formula
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FormulaCopyWith<Formula> get copyWith => _$FormulaCopyWithImpl<Formula>(this as Formula, _$identity);

  /// Serializes this Formula to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Formula&&(identical(other.bbox, bbox) || other.bbox == bbox)&&(identical(other.latex, latex) || other.latex == latex)&&(identical(other.page, page) || other.page == page));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,bbox,latex,page);

@override
String toString() {
  return 'Formula(bbox: $bbox, latex: $latex, page: $page)';
}


}

/// @nodoc
abstract mixin class $FormulaCopyWith<$Res>  {
  factory $FormulaCopyWith(Formula value, $Res Function(Formula) _then) = _$FormulaCopyWithImpl;
@useResult
$Res call({
 BoundingBox bbox, String latex, int page
});


$BoundingBoxCopyWith<$Res> get bbox;

}
/// @nodoc
class _$FormulaCopyWithImpl<$Res>
    implements $FormulaCopyWith<$Res> {
  _$FormulaCopyWithImpl(this._self, this._then);

  final Formula _self;
  final $Res Function(Formula) _then;

/// Create a copy of Formula
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? bbox = null,Object? latex = null,Object? page = null,}) {
  return _then(_self.copyWith(
bbox: null == bbox ? _self.bbox : bbox // ignore: cast_nullable_to_non_nullable
as BoundingBox,latex: null == latex ? _self.latex : latex // ignore: cast_nullable_to_non_nullable
as String,page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,
  ));
}
/// Create a copy of Formula
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BoundingBoxCopyWith<$Res> get bbox {

  return $BoundingBoxCopyWith<$Res>(_self.bbox, (value) {
    return _then(_self.copyWith(bbox: value));
  });
}
}


/// Adds pattern-matching-related methods to [Formula].
extension FormulaPatterns on Formula {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Formula value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Formula() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Formula value)  $default,){
final _that = this;
switch (_that) {
case _Formula():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Formula value)?  $default,){
final _that = this;
switch (_that) {
case _Formula() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( BoundingBox bbox,  String latex,  int page)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Formula() when $default != null:
return $default(_that.bbox,_that.latex,_that.page);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( BoundingBox bbox,  String latex,  int page)  $default,) {final _that = this;
switch (_that) {
case _Formula():
return $default(_that.bbox,_that.latex,_that.page);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( BoundingBox bbox,  String latex,  int page)?  $default,) {final _that = this;
switch (_that) {
case _Formula() when $default != null:
return $default(_that.bbox,_that.latex,_that.page);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Formula implements Formula {
  const _Formula({required this.bbox, required this.latex, required this.page});
  factory _Formula.fromJson(Map<String, dynamic> json) => _$FormulaFromJson(json);

/// Bounding box of the formula region on its page, in rendered-image pixel coordinates.
///
/// The coordinates are in the space of the OCR-rendered page image at the OCR DPI.
/// (typically 300 DPI). These coordinates are NOT comparable to bounding boxes from.
/// native PDF text extraction, which use PDF point coordinates.
@override final  BoundingBox bbox;
/// LaTeX source of the recognized formula, without surrounding `$$` delimiters.
///
/// This field contains the raw LaTeX code as produced by the OCR backend.
/// To render the formula in Markdown or other formats, wrap with `$$..$$` delimiters as needed.
@override final  String latex;
/// 1-indexed page number the formula appears on in the document.
///
/// This is set by the extraction pipeline based on which page the formula was found on.
@override final  int page;

/// Create a copy of Formula
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FormulaCopyWith<_Formula> get copyWith => __$FormulaCopyWithImpl<_Formula>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FormulaToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Formula&&(identical(other.bbox, bbox) || other.bbox == bbox)&&(identical(other.latex, latex) || other.latex == latex)&&(identical(other.page, page) || other.page == page));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,bbox,latex,page);

@override
String toString() {
  return 'Formula(bbox: $bbox, latex: $latex, page: $page)';
}


}

/// @nodoc
abstract mixin class _$FormulaCopyWith<$Res> implements $FormulaCopyWith<$Res> {
  factory _$FormulaCopyWith(_Formula value, $Res Function(_Formula) _then) = __$FormulaCopyWithImpl;
@override @useResult
$Res call({
 BoundingBox bbox, String latex, int page
});


@override $BoundingBoxCopyWith<$Res> get bbox;

}
/// @nodoc
class __$FormulaCopyWithImpl<$Res>
    implements _$FormulaCopyWith<$Res> {
  __$FormulaCopyWithImpl(this._self, this._then);

  final _Formula _self;
  final $Res Function(_Formula) _then;

/// Create a copy of Formula
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? bbox = null,Object? latex = null,Object? page = null,}) {
  return _then(_Formula(
bbox: null == bbox ? _self.bbox : bbox // ignore: cast_nullable_to_non_nullable
as BoundingBox,latex: null == latex ? _self.latex : latex // ignore: cast_nullable_to_non_nullable
as String,page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

/// Create a copy of Formula
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BoundingBoxCopyWith<$Res> get bbox {

  return $BoundingBoxCopyWith<$Res>(_self.bbox, (value) {
    return _then(_self.copyWith(bbox: value));
  });
}
}

// dart format on
