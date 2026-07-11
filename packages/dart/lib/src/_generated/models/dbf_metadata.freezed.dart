// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dbf_metadata.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DbfMetadata {

/// Number of field (column) definitions.
@JsonKey(name: 'field_count') int get fieldCount;/// Total number of data records in the DBF file.
@JsonKey(name: 'record_count') int get recordCount;/// Descriptor for each field in the table schema.
 List<DbfFieldInfo>? get fields;
/// Create a copy of DbfMetadata
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DbfMetadataCopyWith<DbfMetadata> get copyWith => _$DbfMetadataCopyWithImpl<DbfMetadata>(this as DbfMetadata, _$identity);

  /// Serializes this DbfMetadata to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DbfMetadata&&(identical(other.fieldCount, fieldCount) || other.fieldCount == fieldCount)&&(identical(other.recordCount, recordCount) || other.recordCount == recordCount)&&const DeepCollectionEquality().equals(other.fields, fields));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,fieldCount,recordCount,const DeepCollectionEquality().hash(fields));

@override
String toString() {
  return 'DbfMetadata(fieldCount: $fieldCount, recordCount: $recordCount, fields: $fields)';
}


}

/// @nodoc
abstract mixin class $DbfMetadataCopyWith<$Res>  {
  factory $DbfMetadataCopyWith(DbfMetadata value, $Res Function(DbfMetadata) _then) = _$DbfMetadataCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'field_count') int fieldCount,@JsonKey(name: 'record_count') int recordCount, List<DbfFieldInfo>? fields
});




}
/// @nodoc
class _$DbfMetadataCopyWithImpl<$Res>
    implements $DbfMetadataCopyWith<$Res> {
  _$DbfMetadataCopyWithImpl(this._self, this._then);

  final DbfMetadata _self;
  final $Res Function(DbfMetadata) _then;

/// Create a copy of DbfMetadata
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? fieldCount = null,Object? recordCount = null,Object? fields = freezed,}) {
  return _then(_self.copyWith(
fieldCount: null == fieldCount ? _self.fieldCount : fieldCount // ignore: cast_nullable_to_non_nullable
as int,recordCount: null == recordCount ? _self.recordCount : recordCount // ignore: cast_nullable_to_non_nullable
as int,fields: freezed == fields ? _self.fields : fields // ignore: cast_nullable_to_non_nullable
as List<DbfFieldInfo>?,
  ));
}

}


/// Adds pattern-matching-related methods to [DbfMetadata].
extension DbfMetadataPatterns on DbfMetadata {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DbfMetadata value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DbfMetadata() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DbfMetadata value)  $default,){
final _that = this;
switch (_that) {
case _DbfMetadata():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DbfMetadata value)?  $default,){
final _that = this;
switch (_that) {
case _DbfMetadata() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'field_count')  int fieldCount, @JsonKey(name: 'record_count')  int recordCount,  List<DbfFieldInfo>? fields)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DbfMetadata() when $default != null:
return $default(_that.fieldCount,_that.recordCount,_that.fields);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'field_count')  int fieldCount, @JsonKey(name: 'record_count')  int recordCount,  List<DbfFieldInfo>? fields)  $default,) {final _that = this;
switch (_that) {
case _DbfMetadata():
return $default(_that.fieldCount,_that.recordCount,_that.fields);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'field_count')  int fieldCount, @JsonKey(name: 'record_count')  int recordCount,  List<DbfFieldInfo>? fields)?  $default,) {final _that = this;
switch (_that) {
case _DbfMetadata() when $default != null:
return $default(_that.fieldCount,_that.recordCount,_that.fields);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DbfMetadata implements DbfMetadata {
  const _DbfMetadata({@JsonKey(name: 'field_count') required this.fieldCount, @JsonKey(name: 'record_count') required this.recordCount, final  List<DbfFieldInfo>? fields}): _fields = fields;
  factory _DbfMetadata.fromJson(Map<String, dynamic> json) => _$DbfMetadataFromJson(json);

/// Number of field (column) definitions.
@override@JsonKey(name: 'field_count') final  int fieldCount;
/// Total number of data records in the DBF file.
@override@JsonKey(name: 'record_count') final  int recordCount;
/// Descriptor for each field in the table schema.
 final  List<DbfFieldInfo>? _fields;
/// Descriptor for each field in the table schema.
@override List<DbfFieldInfo>? get fields {
  final value = _fields;
  if (value == null) return null;
  if (_fields is EqualUnmodifiableListView) return _fields;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of DbfMetadata
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DbfMetadataCopyWith<_DbfMetadata> get copyWith => __$DbfMetadataCopyWithImpl<_DbfMetadata>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DbfMetadataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DbfMetadata&&(identical(other.fieldCount, fieldCount) || other.fieldCount == fieldCount)&&(identical(other.recordCount, recordCount) || other.recordCount == recordCount)&&const DeepCollectionEquality().equals(other._fields, _fields));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,fieldCount,recordCount,const DeepCollectionEquality().hash(_fields));

@override
String toString() {
  return 'DbfMetadata(fieldCount: $fieldCount, recordCount: $recordCount, fields: $fields)';
}


}

/// @nodoc
abstract mixin class _$DbfMetadataCopyWith<$Res> implements $DbfMetadataCopyWith<$Res> {
  factory _$DbfMetadataCopyWith(_DbfMetadata value, $Res Function(_DbfMetadata) _then) = __$DbfMetadataCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'field_count') int fieldCount,@JsonKey(name: 'record_count') int recordCount, List<DbfFieldInfo>? fields
});




}
/// @nodoc
class __$DbfMetadataCopyWithImpl<$Res>
    implements _$DbfMetadataCopyWith<$Res> {
  __$DbfMetadataCopyWithImpl(this._self, this._then);

  final _DbfMetadata _self;
  final $Res Function(_DbfMetadata) _then;

/// Create a copy of DbfMetadata
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? fieldCount = null,Object? recordCount = null,Object? fields = freezed,}) {
  return _then(_DbfMetadata(
fieldCount: null == fieldCount ? _self.fieldCount : fieldCount // ignore: cast_nullable_to_non_nullable
as int,recordCount: null == recordCount ? _self.recordCount : recordCount // ignore: cast_nullable_to_non_nullable
as int,fields: freezed == fields ? _self._fields : fields // ignore: cast_nullable_to_non_nullable
as List<DbfFieldInfo>?,
  ));
}


}

// dart format on
