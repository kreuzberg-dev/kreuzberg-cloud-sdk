// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'qr_code.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$QrCode {

/// Decoded payload (text, URL, vCard string, …).
 String get payload;/// Bounding box of the QR code inside the source image, in pixel coordinates.
/// (`x`, `y` of the top-left corner; `width`, `height` of the rectangle).
/// `None` if the decoder did not report a bounding box.
 QrBoundingBox? get bbox;/// Detector-reported confidence in `[0.0, 1.0]`. `None` when the decoder.
/// does not expose confidence (the default `rqrr` backend always reports.
/// `Some` because successful decode implies high confidence).
 double? get confidence;
/// Create a copy of QrCode
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$QrCodeCopyWith<QrCode> get copyWith => _$QrCodeCopyWithImpl<QrCode>(this as QrCode, _$identity);

  /// Serializes this QrCode to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is QrCode&&(identical(other.payload, payload) || other.payload == payload)&&(identical(other.bbox, bbox) || other.bbox == bbox)&&(identical(other.confidence, confidence) || other.confidence == confidence));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,payload,bbox,confidence);

@override
String toString() {
  return 'QrCode(payload: $payload, bbox: $bbox, confidence: $confidence)';
}


}

/// @nodoc
abstract mixin class $QrCodeCopyWith<$Res>  {
  factory $QrCodeCopyWith(QrCode value, $Res Function(QrCode) _then) = _$QrCodeCopyWithImpl;
@useResult
$Res call({
 String payload, QrBoundingBox? bbox, double? confidence
});


$QrBoundingBoxCopyWith<$Res>? get bbox;

}
/// @nodoc
class _$QrCodeCopyWithImpl<$Res>
    implements $QrCodeCopyWith<$Res> {
  _$QrCodeCopyWithImpl(this._self, this._then);

  final QrCode _self;
  final $Res Function(QrCode) _then;

/// Create a copy of QrCode
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? payload = null,Object? bbox = freezed,Object? confidence = freezed,}) {
  return _then(_self.copyWith(
payload: null == payload ? _self.payload : payload // ignore: cast_nullable_to_non_nullable
as String,bbox: freezed == bbox ? _self.bbox : bbox // ignore: cast_nullable_to_non_nullable
as QrBoundingBox?,confidence: freezed == confidence ? _self.confidence : confidence // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}
/// Create a copy of QrCode
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$QrBoundingBoxCopyWith<$Res>? get bbox {
    if (_self.bbox == null) {
    return null;
  }

  return $QrBoundingBoxCopyWith<$Res>(_self.bbox!, (value) {
    return _then(_self.copyWith(bbox: value));
  });
}
}


/// Adds pattern-matching-related methods to [QrCode].
extension QrCodePatterns on QrCode {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _QrCode value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _QrCode() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _QrCode value)  $default,){
final _that = this;
switch (_that) {
case _QrCode():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _QrCode value)?  $default,){
final _that = this;
switch (_that) {
case _QrCode() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String payload,  QrBoundingBox? bbox,  double? confidence)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _QrCode() when $default != null:
return $default(_that.payload,_that.bbox,_that.confidence);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String payload,  QrBoundingBox? bbox,  double? confidence)  $default,) {final _that = this;
switch (_that) {
case _QrCode():
return $default(_that.payload,_that.bbox,_that.confidence);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String payload,  QrBoundingBox? bbox,  double? confidence)?  $default,) {final _that = this;
switch (_that) {
case _QrCode() when $default != null:
return $default(_that.payload,_that.bbox,_that.confidence);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _QrCode implements QrCode {
  const _QrCode({required this.payload, this.bbox, this.confidence});
  factory _QrCode.fromJson(Map<String, dynamic> json) => _$QrCodeFromJson(json);

/// Decoded payload (text, URL, vCard string, …).
@override final  String payload;
/// Bounding box of the QR code inside the source image, in pixel coordinates.
/// (`x`, `y` of the top-left corner; `width`, `height` of the rectangle).
/// `None` if the decoder did not report a bounding box.
@override final  QrBoundingBox? bbox;
/// Detector-reported confidence in `[0.0, 1.0]`. `None` when the decoder.
/// does not expose confidence (the default `rqrr` backend always reports.
/// `Some` because successful decode implies high confidence).
@override final  double? confidence;

/// Create a copy of QrCode
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$QrCodeCopyWith<_QrCode> get copyWith => __$QrCodeCopyWithImpl<_QrCode>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$QrCodeToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _QrCode&&(identical(other.payload, payload) || other.payload == payload)&&(identical(other.bbox, bbox) || other.bbox == bbox)&&(identical(other.confidence, confidence) || other.confidence == confidence));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,payload,bbox,confidence);

@override
String toString() {
  return 'QrCode(payload: $payload, bbox: $bbox, confidence: $confidence)';
}


}

/// @nodoc
abstract mixin class _$QrCodeCopyWith<$Res> implements $QrCodeCopyWith<$Res> {
  factory _$QrCodeCopyWith(_QrCode value, $Res Function(_QrCode) _then) = __$QrCodeCopyWithImpl;
@override @useResult
$Res call({
 String payload, QrBoundingBox? bbox, double? confidence
});


@override $QrBoundingBoxCopyWith<$Res>? get bbox;

}
/// @nodoc
class __$QrCodeCopyWithImpl<$Res>
    implements _$QrCodeCopyWith<$Res> {
  __$QrCodeCopyWithImpl(this._self, this._then);

  final _QrCode _self;
  final $Res Function(_QrCode) _then;

/// Create a copy of QrCode
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? payload = null,Object? bbox = freezed,Object? confidence = freezed,}) {
  return _then(_QrCode(
payload: null == payload ? _self.payload : payload // ignore: cast_nullable_to_non_nullable
as String,bbox: freezed == bbox ? _self.bbox : bbox // ignore: cast_nullable_to_non_nullable
as QrBoundingBox?,confidence: freezed == confidence ? _self.confidence : confidence // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}

/// Create a copy of QrCode
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$QrBoundingBoxCopyWith<$Res>? get bbox {
    if (_self.bbox == null) {
    return null;
  }

  return $QrBoundingBoxCopyWith<$Res>(_self.bbox!, (value) {
    return _then(_self.copyWith(bbox: value));
  });
}
}

// dart format on
