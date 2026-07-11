// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'fiction_book_metadata.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$FictionBookMetadata {

/// Short annotation / summary from the FB2 `<annotation>` element.
 String? get annotation;/// Genre tags as declared in the FB2 `<genre>` elements.
 List<String>? get genres;/// Book series (sequence) names, if any.
 List<String>? get sequences;
/// Create a copy of FictionBookMetadata
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FictionBookMetadataCopyWith<FictionBookMetadata> get copyWith => _$FictionBookMetadataCopyWithImpl<FictionBookMetadata>(this as FictionBookMetadata, _$identity);

  /// Serializes this FictionBookMetadata to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FictionBookMetadata&&(identical(other.annotation, annotation) || other.annotation == annotation)&&const DeepCollectionEquality().equals(other.genres, genres)&&const DeepCollectionEquality().equals(other.sequences, sequences));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,annotation,const DeepCollectionEquality().hash(genres),const DeepCollectionEquality().hash(sequences));

@override
String toString() {
  return 'FictionBookMetadata(annotation: $annotation, genres: $genres, sequences: $sequences)';
}


}

/// @nodoc
abstract mixin class $FictionBookMetadataCopyWith<$Res>  {
  factory $FictionBookMetadataCopyWith(FictionBookMetadata value, $Res Function(FictionBookMetadata) _then) = _$FictionBookMetadataCopyWithImpl;
@useResult
$Res call({
 String? annotation, List<String>? genres, List<String>? sequences
});




}
/// @nodoc
class _$FictionBookMetadataCopyWithImpl<$Res>
    implements $FictionBookMetadataCopyWith<$Res> {
  _$FictionBookMetadataCopyWithImpl(this._self, this._then);

  final FictionBookMetadata _self;
  final $Res Function(FictionBookMetadata) _then;

/// Create a copy of FictionBookMetadata
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? annotation = freezed,Object? genres = freezed,Object? sequences = freezed,}) {
  return _then(_self.copyWith(
annotation: freezed == annotation ? _self.annotation : annotation // ignore: cast_nullable_to_non_nullable
as String?,genres: freezed == genres ? _self.genres : genres // ignore: cast_nullable_to_non_nullable
as List<String>?,sequences: freezed == sequences ? _self.sequences : sequences // ignore: cast_nullable_to_non_nullable
as List<String>?,
  ));
}

}


/// Adds pattern-matching-related methods to [FictionBookMetadata].
extension FictionBookMetadataPatterns on FictionBookMetadata {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FictionBookMetadata value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FictionBookMetadata() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FictionBookMetadata value)  $default,){
final _that = this;
switch (_that) {
case _FictionBookMetadata():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FictionBookMetadata value)?  $default,){
final _that = this;
switch (_that) {
case _FictionBookMetadata() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? annotation,  List<String>? genres,  List<String>? sequences)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FictionBookMetadata() when $default != null:
return $default(_that.annotation,_that.genres,_that.sequences);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? annotation,  List<String>? genres,  List<String>? sequences)  $default,) {final _that = this;
switch (_that) {
case _FictionBookMetadata():
return $default(_that.annotation,_that.genres,_that.sequences);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? annotation,  List<String>? genres,  List<String>? sequences)?  $default,) {final _that = this;
switch (_that) {
case _FictionBookMetadata() when $default != null:
return $default(_that.annotation,_that.genres,_that.sequences);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FictionBookMetadata implements FictionBookMetadata {
  const _FictionBookMetadata({this.annotation, final  List<String>? genres, final  List<String>? sequences}): _genres = genres,_sequences = sequences;
  factory _FictionBookMetadata.fromJson(Map<String, dynamic> json) => _$FictionBookMetadataFromJson(json);

/// Short annotation / summary from the FB2 `<annotation>` element.
@override final  String? annotation;
/// Genre tags as declared in the FB2 `<genre>` elements.
 final  List<String>? _genres;
/// Genre tags as declared in the FB2 `<genre>` elements.
@override List<String>? get genres {
  final value = _genres;
  if (value == null) return null;
  if (_genres is EqualUnmodifiableListView) return _genres;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

/// Book series (sequence) names, if any.
 final  List<String>? _sequences;
/// Book series (sequence) names, if any.
@override List<String>? get sequences {
  final value = _sequences;
  if (value == null) return null;
  if (_sequences is EqualUnmodifiableListView) return _sequences;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of FictionBookMetadata
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FictionBookMetadataCopyWith<_FictionBookMetadata> get copyWith => __$FictionBookMetadataCopyWithImpl<_FictionBookMetadata>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FictionBookMetadataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FictionBookMetadata&&(identical(other.annotation, annotation) || other.annotation == annotation)&&const DeepCollectionEquality().equals(other._genres, _genres)&&const DeepCollectionEquality().equals(other._sequences, _sequences));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,annotation,const DeepCollectionEquality().hash(_genres),const DeepCollectionEquality().hash(_sequences));

@override
String toString() {
  return 'FictionBookMetadata(annotation: $annotation, genres: $genres, sequences: $sequences)';
}


}

/// @nodoc
abstract mixin class _$FictionBookMetadataCopyWith<$Res> implements $FictionBookMetadataCopyWith<$Res> {
  factory _$FictionBookMetadataCopyWith(_FictionBookMetadata value, $Res Function(_FictionBookMetadata) _then) = __$FictionBookMetadataCopyWithImpl;
@override @useResult
$Res call({
 String? annotation, List<String>? genres, List<String>? sequences
});




}
/// @nodoc
class __$FictionBookMetadataCopyWithImpl<$Res>
    implements _$FictionBookMetadataCopyWith<$Res> {
  __$FictionBookMetadataCopyWithImpl(this._self, this._then);

  final _FictionBookMetadata _self;
  final $Res Function(_FictionBookMetadata) _then;

/// Create a copy of FictionBookMetadata
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? annotation = freezed,Object? genres = freezed,Object? sequences = freezed,}) {
  return _then(_FictionBookMetadata(
annotation: freezed == annotation ? _self.annotation : annotation // ignore: cast_nullable_to_non_nullable
as String?,genres: freezed == genres ? _self._genres : genres // ignore: cast_nullable_to_non_nullable
as List<String>?,sequences: freezed == sequences ? _self._sequences : sequences // ignore: cast_nullable_to_non_nullable
as List<String>?,
  ));
}


}

// dart format on
