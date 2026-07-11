// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'epub_metadata.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$EpubMetadata {

/// Path or identifier of the cover image within the EPUB container.
@JsonKey(name: 'cover_image') String? get coverImage;/// Dublin Core `coverage` field (geographic or temporal scope).
 String? get coverage;/// Dublin Core `format` field (media type of the resource).
@JsonKey(name: 'dc_format') String? get dcFormat;/// Dublin Core `type` field (nature or genre of the resource).
@JsonKey(name: 'dc_type') String? get dcType;/// Dublin Core `relation` field (related resource identifier).
 String? get relation;/// Dublin Core `source` field (origin resource identifier).
 String? get source;
/// Create a copy of EpubMetadata
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EpubMetadataCopyWith<EpubMetadata> get copyWith => _$EpubMetadataCopyWithImpl<EpubMetadata>(this as EpubMetadata, _$identity);

  /// Serializes this EpubMetadata to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EpubMetadata&&(identical(other.coverImage, coverImage) || other.coverImage == coverImage)&&(identical(other.coverage, coverage) || other.coverage == coverage)&&(identical(other.dcFormat, dcFormat) || other.dcFormat == dcFormat)&&(identical(other.dcType, dcType) || other.dcType == dcType)&&(identical(other.relation, relation) || other.relation == relation)&&(identical(other.source, source) || other.source == source));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,coverImage,coverage,dcFormat,dcType,relation,source);

@override
String toString() {
  return 'EpubMetadata(coverImage: $coverImage, coverage: $coverage, dcFormat: $dcFormat, dcType: $dcType, relation: $relation, source: $source)';
}


}

/// @nodoc
abstract mixin class $EpubMetadataCopyWith<$Res>  {
  factory $EpubMetadataCopyWith(EpubMetadata value, $Res Function(EpubMetadata) _then) = _$EpubMetadataCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'cover_image') String? coverImage, String? coverage,@JsonKey(name: 'dc_format') String? dcFormat,@JsonKey(name: 'dc_type') String? dcType, String? relation, String? source
});




}
/// @nodoc
class _$EpubMetadataCopyWithImpl<$Res>
    implements $EpubMetadataCopyWith<$Res> {
  _$EpubMetadataCopyWithImpl(this._self, this._then);

  final EpubMetadata _self;
  final $Res Function(EpubMetadata) _then;

/// Create a copy of EpubMetadata
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? coverImage = freezed,Object? coverage = freezed,Object? dcFormat = freezed,Object? dcType = freezed,Object? relation = freezed,Object? source = freezed,}) {
  return _then(_self.copyWith(
coverImage: freezed == coverImage ? _self.coverImage : coverImage // ignore: cast_nullable_to_non_nullable
as String?,coverage: freezed == coverage ? _self.coverage : coverage // ignore: cast_nullable_to_non_nullable
as String?,dcFormat: freezed == dcFormat ? _self.dcFormat : dcFormat // ignore: cast_nullable_to_non_nullable
as String?,dcType: freezed == dcType ? _self.dcType : dcType // ignore: cast_nullable_to_non_nullable
as String?,relation: freezed == relation ? _self.relation : relation // ignore: cast_nullable_to_non_nullable
as String?,source: freezed == source ? _self.source : source // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [EpubMetadata].
extension EpubMetadataPatterns on EpubMetadata {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _EpubMetadata value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _EpubMetadata() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _EpubMetadata value)  $default,){
final _that = this;
switch (_that) {
case _EpubMetadata():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _EpubMetadata value)?  $default,){
final _that = this;
switch (_that) {
case _EpubMetadata() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'cover_image')  String? coverImage,  String? coverage, @JsonKey(name: 'dc_format')  String? dcFormat, @JsonKey(name: 'dc_type')  String? dcType,  String? relation,  String? source)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _EpubMetadata() when $default != null:
return $default(_that.coverImage,_that.coverage,_that.dcFormat,_that.dcType,_that.relation,_that.source);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'cover_image')  String? coverImage,  String? coverage, @JsonKey(name: 'dc_format')  String? dcFormat, @JsonKey(name: 'dc_type')  String? dcType,  String? relation,  String? source)  $default,) {final _that = this;
switch (_that) {
case _EpubMetadata():
return $default(_that.coverImage,_that.coverage,_that.dcFormat,_that.dcType,_that.relation,_that.source);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'cover_image')  String? coverImage,  String? coverage, @JsonKey(name: 'dc_format')  String? dcFormat, @JsonKey(name: 'dc_type')  String? dcType,  String? relation,  String? source)?  $default,) {final _that = this;
switch (_that) {
case _EpubMetadata() when $default != null:
return $default(_that.coverImage,_that.coverage,_that.dcFormat,_that.dcType,_that.relation,_that.source);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _EpubMetadata implements EpubMetadata {
  const _EpubMetadata({@JsonKey(name: 'cover_image') this.coverImage, this.coverage, @JsonKey(name: 'dc_format') this.dcFormat, @JsonKey(name: 'dc_type') this.dcType, this.relation, this.source});
  factory _EpubMetadata.fromJson(Map<String, dynamic> json) => _$EpubMetadataFromJson(json);

/// Path or identifier of the cover image within the EPUB container.
@override@JsonKey(name: 'cover_image') final  String? coverImage;
/// Dublin Core `coverage` field (geographic or temporal scope).
@override final  String? coverage;
/// Dublin Core `format` field (media type of the resource).
@override@JsonKey(name: 'dc_format') final  String? dcFormat;
/// Dublin Core `type` field (nature or genre of the resource).
@override@JsonKey(name: 'dc_type') final  String? dcType;
/// Dublin Core `relation` field (related resource identifier).
@override final  String? relation;
/// Dublin Core `source` field (origin resource identifier).
@override final  String? source;

/// Create a copy of EpubMetadata
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EpubMetadataCopyWith<_EpubMetadata> get copyWith => __$EpubMetadataCopyWithImpl<_EpubMetadata>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$EpubMetadataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EpubMetadata&&(identical(other.coverImage, coverImage) || other.coverImage == coverImage)&&(identical(other.coverage, coverage) || other.coverage == coverage)&&(identical(other.dcFormat, dcFormat) || other.dcFormat == dcFormat)&&(identical(other.dcType, dcType) || other.dcType == dcType)&&(identical(other.relation, relation) || other.relation == relation)&&(identical(other.source, source) || other.source == source));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,coverImage,coverage,dcFormat,dcType,relation,source);

@override
String toString() {
  return 'EpubMetadata(coverImage: $coverImage, coverage: $coverage, dcFormat: $dcFormat, dcType: $dcType, relation: $relation, source: $source)';
}


}

/// @nodoc
abstract mixin class _$EpubMetadataCopyWith<$Res> implements $EpubMetadataCopyWith<$Res> {
  factory _$EpubMetadataCopyWith(_EpubMetadata value, $Res Function(_EpubMetadata) _then) = __$EpubMetadataCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'cover_image') String? coverImage, String? coverage,@JsonKey(name: 'dc_format') String? dcFormat,@JsonKey(name: 'dc_type') String? dcType, String? relation, String? source
});




}
/// @nodoc
class __$EpubMetadataCopyWithImpl<$Res>
    implements _$EpubMetadataCopyWith<$Res> {
  __$EpubMetadataCopyWithImpl(this._self, this._then);

  final _EpubMetadata _self;
  final $Res Function(_EpubMetadata) _then;

/// Create a copy of EpubMetadata
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? coverImage = freezed,Object? coverage = freezed,Object? dcFormat = freezed,Object? dcType = freezed,Object? relation = freezed,Object? source = freezed,}) {
  return _then(_EpubMetadata(
coverImage: freezed == coverImage ? _self.coverImage : coverImage // ignore: cast_nullable_to_non_nullable
as String?,coverage: freezed == coverage ? _self.coverage : coverage // ignore: cast_nullable_to_non_nullable
as String?,dcFormat: freezed == dcFormat ? _self.dcFormat : dcFormat // ignore: cast_nullable_to_non_nullable
as String?,dcType: freezed == dcType ? _self.dcType : dcType // ignore: cast_nullable_to_non_nullable
as String?,relation: freezed == relation ? _self.relation : relation // ignore: cast_nullable_to_non_nullable
as String?,source: freezed == source ? _self.source : source // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
