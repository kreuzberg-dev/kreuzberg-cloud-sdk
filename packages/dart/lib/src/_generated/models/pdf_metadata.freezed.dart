// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pdf_metadata.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PdfMetadata {

/// First page height in points (1/72 inch)
 int? get height;/// Whether the PDF is encrypted/password-protected
@JsonKey(name: 'is_encrypted') bool? get isEncrypted;/// Total number of pages in the PDF document
@JsonKey(name: 'page_count') int? get pageCount;/// PDF version (e.g., "1.7", "2.0")
@JsonKey(name: 'pdf_version') String? get pdfVersion;/// PDF producer (application that created the PDF)
 String? get producer;/// First page width in points (1/72 inch)
 int? get width;
/// Create a copy of PdfMetadata
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PdfMetadataCopyWith<PdfMetadata> get copyWith => _$PdfMetadataCopyWithImpl<PdfMetadata>(this as PdfMetadata, _$identity);

  /// Serializes this PdfMetadata to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PdfMetadata&&(identical(other.height, height) || other.height == height)&&(identical(other.isEncrypted, isEncrypted) || other.isEncrypted == isEncrypted)&&(identical(other.pageCount, pageCount) || other.pageCount == pageCount)&&(identical(other.pdfVersion, pdfVersion) || other.pdfVersion == pdfVersion)&&(identical(other.producer, producer) || other.producer == producer)&&(identical(other.width, width) || other.width == width));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,height,isEncrypted,pageCount,pdfVersion,producer,width);

@override
String toString() {
  return 'PdfMetadata(height: $height, isEncrypted: $isEncrypted, pageCount: $pageCount, pdfVersion: $pdfVersion, producer: $producer, width: $width)';
}


}

/// @nodoc
abstract mixin class $PdfMetadataCopyWith<$Res>  {
  factory $PdfMetadataCopyWith(PdfMetadata value, $Res Function(PdfMetadata) _then) = _$PdfMetadataCopyWithImpl;
@useResult
$Res call({
 int? height,@JsonKey(name: 'is_encrypted') bool? isEncrypted,@JsonKey(name: 'page_count') int? pageCount,@JsonKey(name: 'pdf_version') String? pdfVersion, String? producer, int? width
});




}
/// @nodoc
class _$PdfMetadataCopyWithImpl<$Res>
    implements $PdfMetadataCopyWith<$Res> {
  _$PdfMetadataCopyWithImpl(this._self, this._then);

  final PdfMetadata _self;
  final $Res Function(PdfMetadata) _then;

/// Create a copy of PdfMetadata
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? height = freezed,Object? isEncrypted = freezed,Object? pageCount = freezed,Object? pdfVersion = freezed,Object? producer = freezed,Object? width = freezed,}) {
  return _then(_self.copyWith(
height: freezed == height ? _self.height : height // ignore: cast_nullable_to_non_nullable
as int?,isEncrypted: freezed == isEncrypted ? _self.isEncrypted : isEncrypted // ignore: cast_nullable_to_non_nullable
as bool?,pageCount: freezed == pageCount ? _self.pageCount : pageCount // ignore: cast_nullable_to_non_nullable
as int?,pdfVersion: freezed == pdfVersion ? _self.pdfVersion : pdfVersion // ignore: cast_nullable_to_non_nullable
as String?,producer: freezed == producer ? _self.producer : producer // ignore: cast_nullable_to_non_nullable
as String?,width: freezed == width ? _self.width : width // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [PdfMetadata].
extension PdfMetadataPatterns on PdfMetadata {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PdfMetadata value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PdfMetadata() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PdfMetadata value)  $default,){
final _that = this;
switch (_that) {
case _PdfMetadata():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PdfMetadata value)?  $default,){
final _that = this;
switch (_that) {
case _PdfMetadata() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? height, @JsonKey(name: 'is_encrypted')  bool? isEncrypted, @JsonKey(name: 'page_count')  int? pageCount, @JsonKey(name: 'pdf_version')  String? pdfVersion,  String? producer,  int? width)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PdfMetadata() when $default != null:
return $default(_that.height,_that.isEncrypted,_that.pageCount,_that.pdfVersion,_that.producer,_that.width);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? height, @JsonKey(name: 'is_encrypted')  bool? isEncrypted, @JsonKey(name: 'page_count')  int? pageCount, @JsonKey(name: 'pdf_version')  String? pdfVersion,  String? producer,  int? width)  $default,) {final _that = this;
switch (_that) {
case _PdfMetadata():
return $default(_that.height,_that.isEncrypted,_that.pageCount,_that.pdfVersion,_that.producer,_that.width);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? height, @JsonKey(name: 'is_encrypted')  bool? isEncrypted, @JsonKey(name: 'page_count')  int? pageCount, @JsonKey(name: 'pdf_version')  String? pdfVersion,  String? producer,  int? width)?  $default,) {final _that = this;
switch (_that) {
case _PdfMetadata() when $default != null:
return $default(_that.height,_that.isEncrypted,_that.pageCount,_that.pdfVersion,_that.producer,_that.width);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PdfMetadata implements PdfMetadata {
  const _PdfMetadata({this.height, @JsonKey(name: 'is_encrypted') this.isEncrypted, @JsonKey(name: 'page_count') this.pageCount, @JsonKey(name: 'pdf_version') this.pdfVersion, this.producer, this.width});
  factory _PdfMetadata.fromJson(Map<String, dynamic> json) => _$PdfMetadataFromJson(json);

/// First page height in points (1/72 inch)
@override final  int? height;
/// Whether the PDF is encrypted/password-protected
@override@JsonKey(name: 'is_encrypted') final  bool? isEncrypted;
/// Total number of pages in the PDF document
@override@JsonKey(name: 'page_count') final  int? pageCount;
/// PDF version (e.g., "1.7", "2.0")
@override@JsonKey(name: 'pdf_version') final  String? pdfVersion;
/// PDF producer (application that created the PDF)
@override final  String? producer;
/// First page width in points (1/72 inch)
@override final  int? width;

/// Create a copy of PdfMetadata
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PdfMetadataCopyWith<_PdfMetadata> get copyWith => __$PdfMetadataCopyWithImpl<_PdfMetadata>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PdfMetadataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PdfMetadata&&(identical(other.height, height) || other.height == height)&&(identical(other.isEncrypted, isEncrypted) || other.isEncrypted == isEncrypted)&&(identical(other.pageCount, pageCount) || other.pageCount == pageCount)&&(identical(other.pdfVersion, pdfVersion) || other.pdfVersion == pdfVersion)&&(identical(other.producer, producer) || other.producer == producer)&&(identical(other.width, width) || other.width == width));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,height,isEncrypted,pageCount,pdfVersion,producer,width);

@override
String toString() {
  return 'PdfMetadata(height: $height, isEncrypted: $isEncrypted, pageCount: $pageCount, pdfVersion: $pdfVersion, producer: $producer, width: $width)';
}


}

/// @nodoc
abstract mixin class _$PdfMetadataCopyWith<$Res> implements $PdfMetadataCopyWith<$Res> {
  factory _$PdfMetadataCopyWith(_PdfMetadata value, $Res Function(_PdfMetadata) _then) = __$PdfMetadataCopyWithImpl;
@override @useResult
$Res call({
 int? height,@JsonKey(name: 'is_encrypted') bool? isEncrypted,@JsonKey(name: 'page_count') int? pageCount,@JsonKey(name: 'pdf_version') String? pdfVersion, String? producer, int? width
});




}
/// @nodoc
class __$PdfMetadataCopyWithImpl<$Res>
    implements _$PdfMetadataCopyWith<$Res> {
  __$PdfMetadataCopyWithImpl(this._self, this._then);

  final _PdfMetadata _self;
  final $Res Function(_PdfMetadata) _then;

/// Create a copy of PdfMetadata
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? height = freezed,Object? isEncrypted = freezed,Object? pageCount = freezed,Object? pdfVersion = freezed,Object? producer = freezed,Object? width = freezed,}) {
  return _then(_PdfMetadata(
height: freezed == height ? _self.height : height // ignore: cast_nullable_to_non_nullable
as int?,isEncrypted: freezed == isEncrypted ? _self.isEncrypted : isEncrypted // ignore: cast_nullable_to_non_nullable
as bool?,pageCount: freezed == pageCount ? _self.pageCount : pageCount // ignore: cast_nullable_to_non_nullable
as int?,pdfVersion: freezed == pdfVersion ? _self.pdfVersion : pdfVersion // ignore: cast_nullable_to_non_nullable
as String?,producer: freezed == producer ? _self.producer : producer // ignore: cast_nullable_to_non_nullable
as String?,width: freezed == width ? _self.width : width // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

// dart format on
