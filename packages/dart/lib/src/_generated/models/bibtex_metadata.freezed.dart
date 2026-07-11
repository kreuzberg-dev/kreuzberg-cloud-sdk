// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bibtex_metadata.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$BibtexMetadata {

/// Number of entries in the bibliography.
@JsonKey(name: 'entry_count') int get entryCount;/// Author names collected across all bibliography entries.
 List<String>? get authors;/// BibTeX citation keys (e.g. `"knuth1984"`) for all entries.
@JsonKey(name: 'citation_keys') List<String>? get citationKeys;/// Count of entries grouped by BibTeX entry type (e.g. `"article"` → 5).
@JsonKey(name: 'entry_types') Map<String, int>? get entryTypes;/// Earliest and latest publication years found in the bibliography.
@JsonKey(name: 'year_range') YearRange? get yearRange;
/// Create a copy of BibtexMetadata
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BibtexMetadataCopyWith<BibtexMetadata> get copyWith => _$BibtexMetadataCopyWithImpl<BibtexMetadata>(this as BibtexMetadata, _$identity);

  /// Serializes this BibtexMetadata to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BibtexMetadata&&(identical(other.entryCount, entryCount) || other.entryCount == entryCount)&&const DeepCollectionEquality().equals(other.authors, authors)&&const DeepCollectionEquality().equals(other.citationKeys, citationKeys)&&const DeepCollectionEquality().equals(other.entryTypes, entryTypes)&&(identical(other.yearRange, yearRange) || other.yearRange == yearRange));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,entryCount,const DeepCollectionEquality().hash(authors),const DeepCollectionEquality().hash(citationKeys),const DeepCollectionEquality().hash(entryTypes),yearRange);

@override
String toString() {
  return 'BibtexMetadata(entryCount: $entryCount, authors: $authors, citationKeys: $citationKeys, entryTypes: $entryTypes, yearRange: $yearRange)';
}


}

/// @nodoc
abstract mixin class $BibtexMetadataCopyWith<$Res>  {
  factory $BibtexMetadataCopyWith(BibtexMetadata value, $Res Function(BibtexMetadata) _then) = _$BibtexMetadataCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'entry_count') int entryCount, List<String>? authors,@JsonKey(name: 'citation_keys') List<String>? citationKeys,@JsonKey(name: 'entry_types') Map<String, int>? entryTypes,@JsonKey(name: 'year_range') YearRange? yearRange
});


$YearRangeCopyWith<$Res>? get yearRange;

}
/// @nodoc
class _$BibtexMetadataCopyWithImpl<$Res>
    implements $BibtexMetadataCopyWith<$Res> {
  _$BibtexMetadataCopyWithImpl(this._self, this._then);

  final BibtexMetadata _self;
  final $Res Function(BibtexMetadata) _then;

/// Create a copy of BibtexMetadata
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? entryCount = null,Object? authors = freezed,Object? citationKeys = freezed,Object? entryTypes = freezed,Object? yearRange = freezed,}) {
  return _then(_self.copyWith(
entryCount: null == entryCount ? _self.entryCount : entryCount // ignore: cast_nullable_to_non_nullable
as int,authors: freezed == authors ? _self.authors : authors // ignore: cast_nullable_to_non_nullable
as List<String>?,citationKeys: freezed == citationKeys ? _self.citationKeys : citationKeys // ignore: cast_nullable_to_non_nullable
as List<String>?,entryTypes: freezed == entryTypes ? _self.entryTypes : entryTypes // ignore: cast_nullable_to_non_nullable
as Map<String, int>?,yearRange: freezed == yearRange ? _self.yearRange : yearRange // ignore: cast_nullable_to_non_nullable
as YearRange?,
  ));
}
/// Create a copy of BibtexMetadata
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


/// Adds pattern-matching-related methods to [BibtexMetadata].
extension BibtexMetadataPatterns on BibtexMetadata {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BibtexMetadata value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BibtexMetadata() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BibtexMetadata value)  $default,){
final _that = this;
switch (_that) {
case _BibtexMetadata():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BibtexMetadata value)?  $default,){
final _that = this;
switch (_that) {
case _BibtexMetadata() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'entry_count')  int entryCount,  List<String>? authors, @JsonKey(name: 'citation_keys')  List<String>? citationKeys, @JsonKey(name: 'entry_types')  Map<String, int>? entryTypes, @JsonKey(name: 'year_range')  YearRange? yearRange)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BibtexMetadata() when $default != null:
return $default(_that.entryCount,_that.authors,_that.citationKeys,_that.entryTypes,_that.yearRange);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'entry_count')  int entryCount,  List<String>? authors, @JsonKey(name: 'citation_keys')  List<String>? citationKeys, @JsonKey(name: 'entry_types')  Map<String, int>? entryTypes, @JsonKey(name: 'year_range')  YearRange? yearRange)  $default,) {final _that = this;
switch (_that) {
case _BibtexMetadata():
return $default(_that.entryCount,_that.authors,_that.citationKeys,_that.entryTypes,_that.yearRange);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'entry_count')  int entryCount,  List<String>? authors, @JsonKey(name: 'citation_keys')  List<String>? citationKeys, @JsonKey(name: 'entry_types')  Map<String, int>? entryTypes, @JsonKey(name: 'year_range')  YearRange? yearRange)?  $default,) {final _that = this;
switch (_that) {
case _BibtexMetadata() when $default != null:
return $default(_that.entryCount,_that.authors,_that.citationKeys,_that.entryTypes,_that.yearRange);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _BibtexMetadata implements BibtexMetadata {
  const _BibtexMetadata({@JsonKey(name: 'entry_count') required this.entryCount, final  List<String>? authors, @JsonKey(name: 'citation_keys') final  List<String>? citationKeys, @JsonKey(name: 'entry_types') final  Map<String, int>? entryTypes, @JsonKey(name: 'year_range') this.yearRange}): _authors = authors,_citationKeys = citationKeys,_entryTypes = entryTypes;
  factory _BibtexMetadata.fromJson(Map<String, dynamic> json) => _$BibtexMetadataFromJson(json);

/// Number of entries in the bibliography.
@override@JsonKey(name: 'entry_count') final  int entryCount;
/// Author names collected across all bibliography entries.
 final  List<String>? _authors;
/// Author names collected across all bibliography entries.
@override List<String>? get authors {
  final value = _authors;
  if (value == null) return null;
  if (_authors is EqualUnmodifiableListView) return _authors;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

/// BibTeX citation keys (e.g. `"knuth1984"`) for all entries.
 final  List<String>? _citationKeys;
/// BibTeX citation keys (e.g. `"knuth1984"`) for all entries.
@override@JsonKey(name: 'citation_keys') List<String>? get citationKeys {
  final value = _citationKeys;
  if (value == null) return null;
  if (_citationKeys is EqualUnmodifiableListView) return _citationKeys;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

/// Count of entries grouped by BibTeX entry type (e.g. `"article"` → 5).
 final  Map<String, int>? _entryTypes;
/// Count of entries grouped by BibTeX entry type (e.g. `"article"` → 5).
@override@JsonKey(name: 'entry_types') Map<String, int>? get entryTypes {
  final value = _entryTypes;
  if (value == null) return null;
  if (_entryTypes is EqualUnmodifiableMapView) return _entryTypes;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}

/// Earliest and latest publication years found in the bibliography.
@override@JsonKey(name: 'year_range') final  YearRange? yearRange;

/// Create a copy of BibtexMetadata
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BibtexMetadataCopyWith<_BibtexMetadata> get copyWith => __$BibtexMetadataCopyWithImpl<_BibtexMetadata>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BibtexMetadataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BibtexMetadata&&(identical(other.entryCount, entryCount) || other.entryCount == entryCount)&&const DeepCollectionEquality().equals(other._authors, _authors)&&const DeepCollectionEquality().equals(other._citationKeys, _citationKeys)&&const DeepCollectionEquality().equals(other._entryTypes, _entryTypes)&&(identical(other.yearRange, yearRange) || other.yearRange == yearRange));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,entryCount,const DeepCollectionEquality().hash(_authors),const DeepCollectionEquality().hash(_citationKeys),const DeepCollectionEquality().hash(_entryTypes),yearRange);

@override
String toString() {
  return 'BibtexMetadata(entryCount: $entryCount, authors: $authors, citationKeys: $citationKeys, entryTypes: $entryTypes, yearRange: $yearRange)';
}


}

/// @nodoc
abstract mixin class _$BibtexMetadataCopyWith<$Res> implements $BibtexMetadataCopyWith<$Res> {
  factory _$BibtexMetadataCopyWith(_BibtexMetadata value, $Res Function(_BibtexMetadata) _then) = __$BibtexMetadataCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'entry_count') int entryCount, List<String>? authors,@JsonKey(name: 'citation_keys') List<String>? citationKeys,@JsonKey(name: 'entry_types') Map<String, int>? entryTypes,@JsonKey(name: 'year_range') YearRange? yearRange
});


@override $YearRangeCopyWith<$Res>? get yearRange;

}
/// @nodoc
class __$BibtexMetadataCopyWithImpl<$Res>
    implements _$BibtexMetadataCopyWith<$Res> {
  __$BibtexMetadataCopyWithImpl(this._self, this._then);

  final _BibtexMetadata _self;
  final $Res Function(_BibtexMetadata) _then;

/// Create a copy of BibtexMetadata
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? entryCount = null,Object? authors = freezed,Object? citationKeys = freezed,Object? entryTypes = freezed,Object? yearRange = freezed,}) {
  return _then(_BibtexMetadata(
entryCount: null == entryCount ? _self.entryCount : entryCount // ignore: cast_nullable_to_non_nullable
as int,authors: freezed == authors ? _self._authors : authors // ignore: cast_nullable_to_non_nullable
as List<String>?,citationKeys: freezed == citationKeys ? _self._citationKeys : citationKeys // ignore: cast_nullable_to_non_nullable
as List<String>?,entryTypes: freezed == entryTypes ? _self._entryTypes : entryTypes // ignore: cast_nullable_to_non_nullable
as Map<String, int>?,yearRange: freezed == yearRange ? _self.yearRange : yearRange // ignore: cast_nullable_to_non_nullable
as YearRange?,
  ));
}

/// Create a copy of BibtexMetadata
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
