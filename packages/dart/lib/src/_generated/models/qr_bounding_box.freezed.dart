// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'qr_bounding_box.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$QrBoundingBox {

/// Height of the bounding box in pixels.
 int get height;/// Width of the bounding box in pixels.
 int get width;/// Horizontal pixel offset of the bounding box top-left corner.
 int get x;/// Vertical pixel offset of the bounding box top-left corner.
 int get y;
/// Create a copy of QrBoundingBox
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$QrBoundingBoxCopyWith<QrBoundingBox> get copyWith => _$QrBoundingBoxCopyWithImpl<QrBoundingBox>(this as QrBoundingBox, _$identity);

  /// Serializes this QrBoundingBox to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is QrBoundingBox&&(identical(other.height, height) || other.height == height)&&(identical(other.width, width) || other.width == width)&&(identical(other.x, x) || other.x == x)&&(identical(other.y, y) || other.y == y));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,height,width,x,y);

@override
String toString() {
  return 'QrBoundingBox(height: $height, width: $width, x: $x, y: $y)';
}


}

/// @nodoc
abstract mixin class $QrBoundingBoxCopyWith<$Res>  {
  factory $QrBoundingBoxCopyWith(QrBoundingBox value, $Res Function(QrBoundingBox) _then) = _$QrBoundingBoxCopyWithImpl;
@useResult
$Res call({
 int height, int width, int x, int y
});




}
/// @nodoc
class _$QrBoundingBoxCopyWithImpl<$Res>
    implements $QrBoundingBoxCopyWith<$Res> {
  _$QrBoundingBoxCopyWithImpl(this._self, this._then);

  final QrBoundingBox _self;
  final $Res Function(QrBoundingBox) _then;

/// Create a copy of QrBoundingBox
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? height = null,Object? width = null,Object? x = null,Object? y = null,}) {
  return _then(_self.copyWith(
height: null == height ? _self.height : height // ignore: cast_nullable_to_non_nullable
as int,width: null == width ? _self.width : width // ignore: cast_nullable_to_non_nullable
as int,x: null == x ? _self.x : x // ignore: cast_nullable_to_non_nullable
as int,y: null == y ? _self.y : y // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [QrBoundingBox].
extension QrBoundingBoxPatterns on QrBoundingBox {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _QrBoundingBox value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _QrBoundingBox() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _QrBoundingBox value)  $default,){
final _that = this;
switch (_that) {
case _QrBoundingBox():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _QrBoundingBox value)?  $default,){
final _that = this;
switch (_that) {
case _QrBoundingBox() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int height,  int width,  int x,  int y)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _QrBoundingBox() when $default != null:
return $default(_that.height,_that.width,_that.x,_that.y);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int height,  int width,  int x,  int y)  $default,) {final _that = this;
switch (_that) {
case _QrBoundingBox():
return $default(_that.height,_that.width,_that.x,_that.y);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int height,  int width,  int x,  int y)?  $default,) {final _that = this;
switch (_that) {
case _QrBoundingBox() when $default != null:
return $default(_that.height,_that.width,_that.x,_that.y);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _QrBoundingBox implements QrBoundingBox {
  const _QrBoundingBox({required this.height, required this.width, required this.x, required this.y});
  factory _QrBoundingBox.fromJson(Map<String, dynamic> json) => _$QrBoundingBoxFromJson(json);

/// Height of the bounding box in pixels.
@override final  int height;
/// Width of the bounding box in pixels.
@override final  int width;
/// Horizontal pixel offset of the bounding box top-left corner.
@override final  int x;
/// Vertical pixel offset of the bounding box top-left corner.
@override final  int y;

/// Create a copy of QrBoundingBox
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$QrBoundingBoxCopyWith<_QrBoundingBox> get copyWith => __$QrBoundingBoxCopyWithImpl<_QrBoundingBox>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$QrBoundingBoxToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _QrBoundingBox&&(identical(other.height, height) || other.height == height)&&(identical(other.width, width) || other.width == width)&&(identical(other.x, x) || other.x == x)&&(identical(other.y, y) || other.y == y));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,height,width,x,y);

@override
String toString() {
  return 'QrBoundingBox(height: $height, width: $width, x: $x, y: $y)';
}


}

/// @nodoc
abstract mixin class _$QrBoundingBoxCopyWith<$Res> implements $QrBoundingBoxCopyWith<$Res> {
  factory _$QrBoundingBoxCopyWith(_QrBoundingBox value, $Res Function(_QrBoundingBox) _then) = __$QrBoundingBoxCopyWithImpl;
@override @useResult
$Res call({
 int height, int width, int x, int y
});




}
/// @nodoc
class __$QrBoundingBoxCopyWithImpl<$Res>
    implements _$QrBoundingBoxCopyWith<$Res> {
  __$QrBoundingBoxCopyWithImpl(this._self, this._then);

  final _QrBoundingBox _self;
  final $Res Function(_QrBoundingBox) _then;

/// Create a copy of QrBoundingBox
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? height = null,Object? width = null,Object? x = null,Object? y = null,}) {
  return _then(_QrBoundingBox(
height: null == height ? _self.height : height // ignore: cast_nullable_to_non_nullable
as int,width: null == width ? _self.width : width // ignore: cast_nullable_to_non_nullable
as int,x: null == x ? _self.x : x // ignore: cast_nullable_to_non_nullable
as int,y: null == y ? _self.y : y // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
