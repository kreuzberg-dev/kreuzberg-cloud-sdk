// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'document_counts.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DocumentCounts {

/// Images detected in the document.
 int get images;/// Total pages in the source document (`0` when not page-addressable).
 int get pages;/// Tables detected in the document.
 int get tables;
/// Create a copy of DocumentCounts
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DocumentCountsCopyWith<DocumentCounts> get copyWith => _$DocumentCountsCopyWithImpl<DocumentCounts>(this as DocumentCounts, _$identity);

  /// Serializes this DocumentCounts to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DocumentCounts&&(identical(other.images, images) || other.images == images)&&(identical(other.pages, pages) || other.pages == pages)&&(identical(other.tables, tables) || other.tables == tables));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,images,pages,tables);

@override
String toString() {
  return 'DocumentCounts(images: $images, pages: $pages, tables: $tables)';
}


}

/// @nodoc
abstract mixin class $DocumentCountsCopyWith<$Res>  {
  factory $DocumentCountsCopyWith(DocumentCounts value, $Res Function(DocumentCounts) _then) = _$DocumentCountsCopyWithImpl;
@useResult
$Res call({
 int images, int pages, int tables
});




}
/// @nodoc
class _$DocumentCountsCopyWithImpl<$Res>
    implements $DocumentCountsCopyWith<$Res> {
  _$DocumentCountsCopyWithImpl(this._self, this._then);

  final DocumentCounts _self;
  final $Res Function(DocumentCounts) _then;

/// Create a copy of DocumentCounts
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? images = null,Object? pages = null,Object? tables = null,}) {
  return _then(_self.copyWith(
images: null == images ? _self.images : images // ignore: cast_nullable_to_non_nullable
as int,pages: null == pages ? _self.pages : pages // ignore: cast_nullable_to_non_nullable
as int,tables: null == tables ? _self.tables : tables // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [DocumentCounts].
extension DocumentCountsPatterns on DocumentCounts {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DocumentCounts value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DocumentCounts() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DocumentCounts value)  $default,){
final _that = this;
switch (_that) {
case _DocumentCounts():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DocumentCounts value)?  $default,){
final _that = this;
switch (_that) {
case _DocumentCounts() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int images,  int pages,  int tables)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DocumentCounts() when $default != null:
return $default(_that.images,_that.pages,_that.tables);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int images,  int pages,  int tables)  $default,) {final _that = this;
switch (_that) {
case _DocumentCounts():
return $default(_that.images,_that.pages,_that.tables);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int images,  int pages,  int tables)?  $default,) {final _that = this;
switch (_that) {
case _DocumentCounts() when $default != null:
return $default(_that.images,_that.pages,_that.tables);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DocumentCounts implements DocumentCounts {
  const _DocumentCounts({required this.images, required this.pages, required this.tables});
  factory _DocumentCounts.fromJson(Map<String, dynamic> json) => _$DocumentCountsFromJson(json);

/// Images detected in the document.
@override final  int images;
/// Total pages in the source document (`0` when not page-addressable).
@override final  int pages;
/// Tables detected in the document.
@override final  int tables;

/// Create a copy of DocumentCounts
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DocumentCountsCopyWith<_DocumentCounts> get copyWith => __$DocumentCountsCopyWithImpl<_DocumentCounts>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DocumentCountsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DocumentCounts&&(identical(other.images, images) || other.images == images)&&(identical(other.pages, pages) || other.pages == pages)&&(identical(other.tables, tables) || other.tables == tables));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,images,pages,tables);

@override
String toString() {
  return 'DocumentCounts(images: $images, pages: $pages, tables: $tables)';
}


}

/// @nodoc
abstract mixin class _$DocumentCountsCopyWith<$Res> implements $DocumentCountsCopyWith<$Res> {
  factory _$DocumentCountsCopyWith(_DocumentCounts value, $Res Function(_DocumentCounts) _then) = __$DocumentCountsCopyWithImpl;
@override @useResult
$Res call({
 int images, int pages, int tables
});




}
/// @nodoc
class __$DocumentCountsCopyWithImpl<$Res>
    implements _$DocumentCountsCopyWith<$Res> {
  __$DocumentCountsCopyWithImpl(this._self, this._then);

  final _DocumentCounts _self;
  final $Res Function(_DocumentCounts) _then;

/// Create a copy of DocumentCounts
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? images = null,Object? pages = null,Object? tables = null,}) {
  return _then(_DocumentCounts(
images: null == images ? _self.images : images // ignore: cast_nullable_to_non_nullable
as int,pages: null == pages ? _self.pages : pages // ignore: cast_nullable_to_non_nullable
as int,tables: null == tables ? _self.tables : tables // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
