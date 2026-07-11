// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'citation_metadata.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CitationMetadata {

/// Total number of citation records in the file.
@JsonKey(name: 'citation_count') int get citationCount;/// Author names collected across all citation records.
 List<String>? get authors;/// DOI identifiers found in the citation records.
 List<String>? get dois;/// Detected citation file format (e.g. `"ris"`, `"pubmed"`, `"endnote"`).
 String? get format;/// Keywords collected from all citation records.
 List<String>? get keywords;/// Earliest and latest publication years found in the file.
@JsonKey(name: 'year_range') YearRange? get yearRange;
/// Create a copy of CitationMetadata
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CitationMetadataCopyWith<CitationMetadata> get copyWith => _$CitationMetadataCopyWithImpl<CitationMetadata>(this as CitationMetadata, _$identity);

  /// Serializes this CitationMetadata to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CitationMetadata&&(identical(other.citationCount, citationCount) || other.citationCount == citationCount)&&const DeepCollectionEquality().equals(other.authors, authors)&&const DeepCollectionEquality().equals(other.dois, dois)&&(identical(other.format, format) || other.format == format)&&const DeepCollectionEquality().equals(other.keywords, keywords)&&(identical(other.yearRange, yearRange) || other.yearRange == yearRange));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,citationCount,const DeepCollectionEquality().hash(authors),const DeepCollectionEquality().hash(dois),format,const DeepCollectionEquality().hash(keywords),yearRange);

@override
String toString() {
  return 'CitationMetadata(citationCount: $citationCount, authors: $authors, dois: $dois, format: $format, keywords: $keywords, yearRange: $yearRange)';
}


}

/// @nodoc
abstract mixin class $CitationMetadataCopyWith<$Res>  {
  factory $CitationMetadataCopyWith(CitationMetadata value, $Res Function(CitationMetadata) _then) = _$CitationMetadataCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'citation_count') int citationCount, List<String>? authors, List<String>? dois, String? format, List<String>? keywords,@JsonKey(name: 'year_range') YearRange? yearRange
});


$YearRangeCopyWith<$Res>? get yearRange;

}
/// @nodoc
class _$CitationMetadataCopyWithImpl<$Res>
    implements $CitationMetadataCopyWith<$Res> {
  _$CitationMetadataCopyWithImpl(this._self, this._then);

  final CitationMetadata _self;
  final $Res Function(CitationMetadata) _then;

/// Create a copy of CitationMetadata
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? citationCount = null,Object? authors = freezed,Object? dois = freezed,Object? format = freezed,Object? keywords = freezed,Object? yearRange = freezed,}) {
  return _then(_self.copyWith(
citationCount: null == citationCount ? _self.citationCount : citationCount // ignore: cast_nullable_to_non_nullable
as int,authors: freezed == authors ? _self.authors : authors // ignore: cast_nullable_to_non_nullable
as List<String>?,dois: freezed == dois ? _self.dois : dois // ignore: cast_nullable_to_non_nullable
as List<String>?,format: freezed == format ? _self.format : format // ignore: cast_nullable_to_non_nullable
as String?,keywords: freezed == keywords ? _self.keywords : keywords // ignore: cast_nullable_to_non_nullable
as List<String>?,yearRange: freezed == yearRange ? _self.yearRange : yearRange // ignore: cast_nullable_to_non_nullable
as YearRange?,
  ));
}
/// Create a copy of CitationMetadata
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$YearRangeCopyWith<$Res>? get yearRange {
    if (_self.yearRange == null) {
    return null;
  }

  return $YearRangeCopyWith<$Res>(_self.yearRange!, (value) {
    return _then(_self.copyWith(yearRange: value));
  });
}
}


/// Adds pattern-matching-related methods to [CitationMetadata].
extension CitationMetadataPatterns on CitationMetadata {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CitationMetadata value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CitationMetadata() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CitationMetadata value)  $default,){
final _that = this;
switch (_that) {
case _CitationMetadata():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CitationMetadata value)?  $default,){
final _that = this;
switch (_that) {
case _CitationMetadata() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'citation_count')  int citationCount,  List<String>? authors,  List<String>? dois,  String? format,  List<String>? keywords, @JsonKey(name: 'year_range')  YearRange? yearRange)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CitationMetadata() when $default != null:
return $default(_that.citationCount,_that.authors,_that.dois,_that.format,_that.keywords,_that.yearRange);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'citation_count')  int citationCount,  List<String>? authors,  List<String>? dois,  String? format,  List<String>? keywords, @JsonKey(name: 'year_range')  YearRange? yearRange)  $default,) {final _that = this;
switch (_that) {
case _CitationMetadata():
return $default(_that.citationCount,_that.authors,_that.dois,_that.format,_that.keywords,_that.yearRange);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'citation_count')  int citationCount,  List<String>? authors,  List<String>? dois,  String? format,  List<String>? keywords, @JsonKey(name: 'year_range')  YearRange? yearRange)?  $default,) {final _that = this;
switch (_that) {
case _CitationMetadata() when $default != null:
return $default(_that.citationCount,_that.authors,_that.dois,_that.format,_that.keywords,_that.yearRange);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CitationMetadata implements CitationMetadata {
  const _CitationMetadata({@JsonKey(name: 'citation_count') required this.citationCount, final  List<String>? authors, final  List<String>? dois, this.format, final  List<String>? keywords, @JsonKey(name: 'year_range') this.yearRange}): _authors = authors,_dois = dois,_keywords = keywords;
  factory _CitationMetadata.fromJson(Map<String, dynamic> json) => _$CitationMetadataFromJson(json);

/// Total number of citation records in the file.
@override@JsonKey(name: 'citation_count') final  int citationCount;
/// Author names collected across all citation records.
 final  List<String>? _authors;
/// Author names collected across all citation records.
@override List<String>? get authors {
  final value = _authors;
  if (value == null) return null;
  if (_authors is EqualUnmodifiableListView) return _authors;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

/// DOI identifiers found in the citation records.
 final  List<String>? _dois;
/// DOI identifiers found in the citation records.
@override List<String>? get dois {
  final value = _dois;
  if (value == null) return null;
  if (_dois is EqualUnmodifiableListView) return _dois;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

/// Detected citation file format (e.g. `"ris"`, `"pubmed"`, `"endnote"`).
@override final  String? format;
/// Keywords collected from all citation records.
 final  List<String>? _keywords;
/// Keywords collected from all citation records.
@override List<String>? get keywords {
  final value = _keywords;
  if (value == null) return null;
  if (_keywords is EqualUnmodifiableListView) return _keywords;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

/// Earliest and latest publication years found in the file.
@override@JsonKey(name: 'year_range') final  YearRange? yearRange;

/// Create a copy of CitationMetadata
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CitationMetadataCopyWith<_CitationMetadata> get copyWith => __$CitationMetadataCopyWithImpl<_CitationMetadata>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CitationMetadataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CitationMetadata&&(identical(other.citationCount, citationCount) || other.citationCount == citationCount)&&const DeepCollectionEquality().equals(other._authors, _authors)&&const DeepCollectionEquality().equals(other._dois, _dois)&&(identical(other.format, format) || other.format == format)&&const DeepCollectionEquality().equals(other._keywords, _keywords)&&(identical(other.yearRange, yearRange) || other.yearRange == yearRange));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,citationCount,const DeepCollectionEquality().hash(_authors),const DeepCollectionEquality().hash(_dois),format,const DeepCollectionEquality().hash(_keywords),yearRange);

@override
String toString() {
  return 'CitationMetadata(citationCount: $citationCount, authors: $authors, dois: $dois, format: $format, keywords: $keywords, yearRange: $yearRange)';
}


}

/// @nodoc
abstract mixin class _$CitationMetadataCopyWith<$Res> implements $CitationMetadataCopyWith<$Res> {
  factory _$CitationMetadataCopyWith(_CitationMetadata value, $Res Function(_CitationMetadata) _then) = __$CitationMetadataCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'citation_count') int citationCount, List<String>? authors, List<String>? dois, String? format, List<String>? keywords,@JsonKey(name: 'year_range') YearRange? yearRange
});


@override $YearRangeCopyWith<$Res>? get yearRange;

}
/// @nodoc
class __$CitationMetadataCopyWithImpl<$Res>
    implements _$CitationMetadataCopyWith<$Res> {
  __$CitationMetadataCopyWithImpl(this._self, this._then);

  final _CitationMetadata _self;
  final $Res Function(_CitationMetadata) _then;

/// Create a copy of CitationMetadata
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? citationCount = null,Object? authors = freezed,Object? dois = freezed,Object? format = freezed,Object? keywords = freezed,Object? yearRange = freezed,}) {
  return _then(_CitationMetadata(
citationCount: null == citationCount ? _self.citationCount : citationCount // ignore: cast_nullable_to_non_nullable
as int,authors: freezed == authors ? _self._authors : authors // ignore: cast_nullable_to_non_nullable
as List<String>?,dois: freezed == dois ? _self._dois : dois // ignore: cast_nullable_to_non_nullable
as List<String>?,format: freezed == format ? _self.format : format // ignore: cast_nullable_to_non_nullable
as String?,keywords: freezed == keywords ? _self._keywords : keywords // ignore: cast_nullable_to_non_nullable
as List<String>?,yearRange: freezed == yearRange ? _self.yearRange : yearRange // ignore: cast_nullable_to_non_nullable
as YearRange?,
  ));
}

/// Create a copy of CitationMetadata
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$YearRangeCopyWith<$Res>? get yearRange {
    if (_self.yearRange == null) {
    return null;
  }

  return $YearRangeCopyWith<$Res>(_self.yearRange!, (value) {
    return _then(_self.copyWith(yearRange: value));
  });
}
}

// dart format on
