// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'security_limits.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SecurityLimits {

/// Maximum uncompressed size for archives (500 MB)
@JsonKey(name: 'max_archive_size') int get maxArchiveSize;/// Maximum compression ratio before flagging as potential bomb (100:1)
@JsonKey(name: 'max_compression_ratio') int get maxCompressionRatio;/// Maximum string growth per document (100 MB)
@JsonKey(name: 'max_content_size') int get maxContentSize;/// Maximum length of any single XML entity / attribute / token (1 MiB).
/// This is a per-token cap, NOT a total cap — billion-laughs class.
/// attacks where a single entity expands to hundreds of MB are caught.
/// here, while normal long text content (a paragraph, a CDATA block) is.
/// caught by `max_content_size` instead.
@JsonKey(name: 'max_entity_length') int get maxEntityLength;/// Maximum number of files in archive (10,000)
@JsonKey(name: 'max_files_in_archive') int get maxFilesInArchive;/// Maximum iterations per operation
@JsonKey(name: 'max_iterations') int get maxIterations;/// Maximum nesting depth for structures (100)
@JsonKey(name: 'max_nesting_depth') int get maxNestingDepth;/// Maximum cells per table (100,000)
@JsonKey(name: 'max_table_cells') int get maxTableCells;/// Maximum XML depth (100 levels)
@JsonKey(name: 'max_xml_depth') int get maxXmlDepth;
/// Create a copy of SecurityLimits
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SecurityLimitsCopyWith<SecurityLimits> get copyWith => _$SecurityLimitsCopyWithImpl<SecurityLimits>(this as SecurityLimits, _$identity);

  /// Serializes this SecurityLimits to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SecurityLimits&&(identical(other.maxArchiveSize, maxArchiveSize) || other.maxArchiveSize == maxArchiveSize)&&(identical(other.maxCompressionRatio, maxCompressionRatio) || other.maxCompressionRatio == maxCompressionRatio)&&(identical(other.maxContentSize, maxContentSize) || other.maxContentSize == maxContentSize)&&(identical(other.maxEntityLength, maxEntityLength) || other.maxEntityLength == maxEntityLength)&&(identical(other.maxFilesInArchive, maxFilesInArchive) || other.maxFilesInArchive == maxFilesInArchive)&&(identical(other.maxIterations, maxIterations) || other.maxIterations == maxIterations)&&(identical(other.maxNestingDepth, maxNestingDepth) || other.maxNestingDepth == maxNestingDepth)&&(identical(other.maxTableCells, maxTableCells) || other.maxTableCells == maxTableCells)&&(identical(other.maxXmlDepth, maxXmlDepth) || other.maxXmlDepth == maxXmlDepth));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,maxArchiveSize,maxCompressionRatio,maxContentSize,maxEntityLength,maxFilesInArchive,maxIterations,maxNestingDepth,maxTableCells,maxXmlDepth);

@override
String toString() {
  return 'SecurityLimits(maxArchiveSize: $maxArchiveSize, maxCompressionRatio: $maxCompressionRatio, maxContentSize: $maxContentSize, maxEntityLength: $maxEntityLength, maxFilesInArchive: $maxFilesInArchive, maxIterations: $maxIterations, maxNestingDepth: $maxNestingDepth, maxTableCells: $maxTableCells, maxXmlDepth: $maxXmlDepth)';
}


}

/// @nodoc
abstract mixin class $SecurityLimitsCopyWith<$Res>  {
  factory $SecurityLimitsCopyWith(SecurityLimits value, $Res Function(SecurityLimits) _then) = _$SecurityLimitsCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'max_archive_size') int maxArchiveSize,@JsonKey(name: 'max_compression_ratio') int maxCompressionRatio,@JsonKey(name: 'max_content_size') int maxContentSize,@JsonKey(name: 'max_entity_length') int maxEntityLength,@JsonKey(name: 'max_files_in_archive') int maxFilesInArchive,@JsonKey(name: 'max_iterations') int maxIterations,@JsonKey(name: 'max_nesting_depth') int maxNestingDepth,@JsonKey(name: 'max_table_cells') int maxTableCells,@JsonKey(name: 'max_xml_depth') int maxXmlDepth
});




}
/// @nodoc
class _$SecurityLimitsCopyWithImpl<$Res>
    implements $SecurityLimitsCopyWith<$Res> {
  _$SecurityLimitsCopyWithImpl(this._self, this._then);

  final SecurityLimits _self;
  final $Res Function(SecurityLimits) _then;

/// Create a copy of SecurityLimits
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? maxArchiveSize = null,Object? maxCompressionRatio = null,Object? maxContentSize = null,Object? maxEntityLength = null,Object? maxFilesInArchive = null,Object? maxIterations = null,Object? maxNestingDepth = null,Object? maxTableCells = null,Object? maxXmlDepth = null,}) {
  return _then(_self.copyWith(
maxArchiveSize: null == maxArchiveSize ? _self.maxArchiveSize : maxArchiveSize // ignore: cast_nullable_to_non_nullable
as int,maxCompressionRatio: null == maxCompressionRatio ? _self.maxCompressionRatio : maxCompressionRatio // ignore: cast_nullable_to_non_nullable
as int,maxContentSize: null == maxContentSize ? _self.maxContentSize : maxContentSize // ignore: cast_nullable_to_non_nullable
as int,maxEntityLength: null == maxEntityLength ? _self.maxEntityLength : maxEntityLength // ignore: cast_nullable_to_non_nullable
as int,maxFilesInArchive: null == maxFilesInArchive ? _self.maxFilesInArchive : maxFilesInArchive // ignore: cast_nullable_to_non_nullable
as int,maxIterations: null == maxIterations ? _self.maxIterations : maxIterations // ignore: cast_nullable_to_non_nullable
as int,maxNestingDepth: null == maxNestingDepth ? _self.maxNestingDepth : maxNestingDepth // ignore: cast_nullable_to_non_nullable
as int,maxTableCells: null == maxTableCells ? _self.maxTableCells : maxTableCells // ignore: cast_nullable_to_non_nullable
as int,maxXmlDepth: null == maxXmlDepth ? _self.maxXmlDepth : maxXmlDepth // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [SecurityLimits].
extension SecurityLimitsPatterns on SecurityLimits {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SecurityLimits value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SecurityLimits() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SecurityLimits value)  $default,){
final _that = this;
switch (_that) {
case _SecurityLimits():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SecurityLimits value)?  $default,){
final _that = this;
switch (_that) {
case _SecurityLimits() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'max_archive_size')  int maxArchiveSize, @JsonKey(name: 'max_compression_ratio')  int maxCompressionRatio, @JsonKey(name: 'max_content_size')  int maxContentSize, @JsonKey(name: 'max_entity_length')  int maxEntityLength, @JsonKey(name: 'max_files_in_archive')  int maxFilesInArchive, @JsonKey(name: 'max_iterations')  int maxIterations, @JsonKey(name: 'max_nesting_depth')  int maxNestingDepth, @JsonKey(name: 'max_table_cells')  int maxTableCells, @JsonKey(name: 'max_xml_depth')  int maxXmlDepth)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SecurityLimits() when $default != null:
return $default(_that.maxArchiveSize,_that.maxCompressionRatio,_that.maxContentSize,_that.maxEntityLength,_that.maxFilesInArchive,_that.maxIterations,_that.maxNestingDepth,_that.maxTableCells,_that.maxXmlDepth);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'max_archive_size')  int maxArchiveSize, @JsonKey(name: 'max_compression_ratio')  int maxCompressionRatio, @JsonKey(name: 'max_content_size')  int maxContentSize, @JsonKey(name: 'max_entity_length')  int maxEntityLength, @JsonKey(name: 'max_files_in_archive')  int maxFilesInArchive, @JsonKey(name: 'max_iterations')  int maxIterations, @JsonKey(name: 'max_nesting_depth')  int maxNestingDepth, @JsonKey(name: 'max_table_cells')  int maxTableCells, @JsonKey(name: 'max_xml_depth')  int maxXmlDepth)  $default,) {final _that = this;
switch (_that) {
case _SecurityLimits():
return $default(_that.maxArchiveSize,_that.maxCompressionRatio,_that.maxContentSize,_that.maxEntityLength,_that.maxFilesInArchive,_that.maxIterations,_that.maxNestingDepth,_that.maxTableCells,_that.maxXmlDepth);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'max_archive_size')  int maxArchiveSize, @JsonKey(name: 'max_compression_ratio')  int maxCompressionRatio, @JsonKey(name: 'max_content_size')  int maxContentSize, @JsonKey(name: 'max_entity_length')  int maxEntityLength, @JsonKey(name: 'max_files_in_archive')  int maxFilesInArchive, @JsonKey(name: 'max_iterations')  int maxIterations, @JsonKey(name: 'max_nesting_depth')  int maxNestingDepth, @JsonKey(name: 'max_table_cells')  int maxTableCells, @JsonKey(name: 'max_xml_depth')  int maxXmlDepth)?  $default,) {final _that = this;
switch (_that) {
case _SecurityLimits() when $default != null:
return $default(_that.maxArchiveSize,_that.maxCompressionRatio,_that.maxContentSize,_that.maxEntityLength,_that.maxFilesInArchive,_that.maxIterations,_that.maxNestingDepth,_that.maxTableCells,_that.maxXmlDepth);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SecurityLimits implements SecurityLimits {
  const _SecurityLimits({@JsonKey(name: 'max_archive_size') this.maxArchiveSize = 524288000, @JsonKey(name: 'max_compression_ratio') this.maxCompressionRatio = 100, @JsonKey(name: 'max_content_size') this.maxContentSize = 104857600, @JsonKey(name: 'max_entity_length') this.maxEntityLength = 1048576, @JsonKey(name: 'max_files_in_archive') this.maxFilesInArchive = 10000, @JsonKey(name: 'max_iterations') this.maxIterations = 10000000, @JsonKey(name: 'max_nesting_depth') this.maxNestingDepth = 1024, @JsonKey(name: 'max_table_cells') this.maxTableCells = 100000, @JsonKey(name: 'max_xml_depth') this.maxXmlDepth = 1024});
  factory _SecurityLimits.fromJson(Map<String, dynamic> json) => _$SecurityLimitsFromJson(json);

/// Maximum uncompressed size for archives (500 MB)
@override@JsonKey(name: 'max_archive_size') final  int maxArchiveSize;
/// Maximum compression ratio before flagging as potential bomb (100:1)
@override@JsonKey(name: 'max_compression_ratio') final  int maxCompressionRatio;
/// Maximum string growth per document (100 MB)
@override@JsonKey(name: 'max_content_size') final  int maxContentSize;
/// Maximum length of any single XML entity / attribute / token (1 MiB).
/// This is a per-token cap, NOT a total cap — billion-laughs class.
/// attacks where a single entity expands to hundreds of MB are caught.
/// here, while normal long text content (a paragraph, a CDATA block) is.
/// caught by `max_content_size` instead.
@override@JsonKey(name: 'max_entity_length') final  int maxEntityLength;
/// Maximum number of files in archive (10,000)
@override@JsonKey(name: 'max_files_in_archive') final  int maxFilesInArchive;
/// Maximum iterations per operation
@override@JsonKey(name: 'max_iterations') final  int maxIterations;
/// Maximum nesting depth for structures (100)
@override@JsonKey(name: 'max_nesting_depth') final  int maxNestingDepth;
/// Maximum cells per table (100,000)
@override@JsonKey(name: 'max_table_cells') final  int maxTableCells;
/// Maximum XML depth (100 levels)
@override@JsonKey(name: 'max_xml_depth') final  int maxXmlDepth;

/// Create a copy of SecurityLimits
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SecurityLimitsCopyWith<_SecurityLimits> get copyWith => __$SecurityLimitsCopyWithImpl<_SecurityLimits>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SecurityLimitsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SecurityLimits&&(identical(other.maxArchiveSize, maxArchiveSize) || other.maxArchiveSize == maxArchiveSize)&&(identical(other.maxCompressionRatio, maxCompressionRatio) || other.maxCompressionRatio == maxCompressionRatio)&&(identical(other.maxContentSize, maxContentSize) || other.maxContentSize == maxContentSize)&&(identical(other.maxEntityLength, maxEntityLength) || other.maxEntityLength == maxEntityLength)&&(identical(other.maxFilesInArchive, maxFilesInArchive) || other.maxFilesInArchive == maxFilesInArchive)&&(identical(other.maxIterations, maxIterations) || other.maxIterations == maxIterations)&&(identical(other.maxNestingDepth, maxNestingDepth) || other.maxNestingDepth == maxNestingDepth)&&(identical(other.maxTableCells, maxTableCells) || other.maxTableCells == maxTableCells)&&(identical(other.maxXmlDepth, maxXmlDepth) || other.maxXmlDepth == maxXmlDepth));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,maxArchiveSize,maxCompressionRatio,maxContentSize,maxEntityLength,maxFilesInArchive,maxIterations,maxNestingDepth,maxTableCells,maxXmlDepth);

@override
String toString() {
  return 'SecurityLimits(maxArchiveSize: $maxArchiveSize, maxCompressionRatio: $maxCompressionRatio, maxContentSize: $maxContentSize, maxEntityLength: $maxEntityLength, maxFilesInArchive: $maxFilesInArchive, maxIterations: $maxIterations, maxNestingDepth: $maxNestingDepth, maxTableCells: $maxTableCells, maxXmlDepth: $maxXmlDepth)';
}


}

/// @nodoc
abstract mixin class _$SecurityLimitsCopyWith<$Res> implements $SecurityLimitsCopyWith<$Res> {
  factory _$SecurityLimitsCopyWith(_SecurityLimits value, $Res Function(_SecurityLimits) _then) = __$SecurityLimitsCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'max_archive_size') int maxArchiveSize,@JsonKey(name: 'max_compression_ratio') int maxCompressionRatio,@JsonKey(name: 'max_content_size') int maxContentSize,@JsonKey(name: 'max_entity_length') int maxEntityLength,@JsonKey(name: 'max_files_in_archive') int maxFilesInArchive,@JsonKey(name: 'max_iterations') int maxIterations,@JsonKey(name: 'max_nesting_depth') int maxNestingDepth,@JsonKey(name: 'max_table_cells') int maxTableCells,@JsonKey(name: 'max_xml_depth') int maxXmlDepth
});




}
/// @nodoc
class __$SecurityLimitsCopyWithImpl<$Res>
    implements _$SecurityLimitsCopyWith<$Res> {
  __$SecurityLimitsCopyWithImpl(this._self, this._then);

  final _SecurityLimits _self;
  final $Res Function(_SecurityLimits) _then;

/// Create a copy of SecurityLimits
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? maxArchiveSize = null,Object? maxCompressionRatio = null,Object? maxContentSize = null,Object? maxEntityLength = null,Object? maxFilesInArchive = null,Object? maxIterations = null,Object? maxNestingDepth = null,Object? maxTableCells = null,Object? maxXmlDepth = null,}) {
  return _then(_SecurityLimits(
maxArchiveSize: null == maxArchiveSize ? _self.maxArchiveSize : maxArchiveSize // ignore: cast_nullable_to_non_nullable
as int,maxCompressionRatio: null == maxCompressionRatio ? _self.maxCompressionRatio : maxCompressionRatio // ignore: cast_nullable_to_non_nullable
as int,maxContentSize: null == maxContentSize ? _self.maxContentSize : maxContentSize // ignore: cast_nullable_to_non_nullable
as int,maxEntityLength: null == maxEntityLength ? _self.maxEntityLength : maxEntityLength // ignore: cast_nullable_to_non_nullable
as int,maxFilesInArchive: null == maxFilesInArchive ? _self.maxFilesInArchive : maxFilesInArchive // ignore: cast_nullable_to_non_nullable
as int,maxIterations: null == maxIterations ? _self.maxIterations : maxIterations // ignore: cast_nullable_to_non_nullable
as int,maxNestingDepth: null == maxNestingDepth ? _self.maxNestingDepth : maxNestingDepth // ignore: cast_nullable_to_non_nullable
as int,maxTableCells: null == maxTableCells ? _self.maxTableCells : maxTableCells // ignore: cast_nullable_to_non_nullable
as int,maxXmlDepth: null == maxXmlDepth ? _self.maxXmlDepth : maxXmlDepth // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
