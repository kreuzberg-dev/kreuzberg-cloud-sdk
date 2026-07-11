// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dbf_field_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DbfFieldInfo {

/// dBASE field type character (e.g. `"C"` for character, `"N"` for numeric).
@JsonKey(name: 'field_type') String get fieldType;/// Field (column) name.
 String get name;
/// Create a copy of DbfFieldInfo
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DbfFieldInfoCopyWith<DbfFieldInfo> get copyWith => _$DbfFieldInfoCopyWithImpl<DbfFieldInfo>(this as DbfFieldInfo, _$identity);

  /// Serializes this DbfFieldInfo to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DbfFieldInfo&&(identical(other.fieldType, fieldType) || other.fieldType == fieldType)&&(identical(other.name, name) || other.name == name));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,fieldType,name);

@override
String toString() {
  return 'DbfFieldInfo(fieldType: $fieldType, name: $name)';
}


}

/// @nodoc
abstract mixin class $DbfFieldInfoCopyWith<$Res>  {
  factory $DbfFieldInfoCopyWith(DbfFieldInfo value, $Res Function(DbfFieldInfo) _then) = _$DbfFieldInfoCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'field_type') String fieldType, String name
});




}
/// @nodoc
class _$DbfFieldInfoCopyWithImpl<$Res>
    implements $DbfFieldInfoCopyWith<$Res> {
  _$DbfFieldInfoCopyWithImpl(this._self, this._then);

  final DbfFieldInfo _self;
  final $Res Function(DbfFieldInfo) _then;

/// Create a copy of DbfFieldInfo
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? fieldType = null,Object? name = null,}) {
  return _then(_self.copyWith(
fieldType: null == fieldType ? _self.fieldType : fieldType // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [DbfFieldInfo].
extension DbfFieldInfoPatterns on DbfFieldInfo {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DbfFieldInfo value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DbfFieldInfo() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DbfFieldInfo value)  $default,){
final _that = this;
switch (_that) {
case _DbfFieldInfo():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DbfFieldInfo value)?  $default,){
final _that = this;
switch (_that) {
case _DbfFieldInfo() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'field_type')  String fieldType,  String name)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DbfFieldInfo() when $default != null:
return $default(_that.fieldType,_that.name);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'field_type')  String fieldType,  String name)  $default,) {final _that = this;
switch (_that) {
case _DbfFieldInfo():
return $default(_that.fieldType,_that.name);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'field_type')  String fieldType,  String name)?  $default,) {final _that = this;
switch (_that) {
case _DbfFieldInfo() when $default != null:
return $default(_that.fieldType,_that.name);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DbfFieldInfo implements DbfFieldInfo {
  const _DbfFieldInfo({@JsonKey(name: 'field_type') required this.fieldType, required this.name});
  factory _DbfFieldInfo.fromJson(Map<String, dynamic> json) => _$DbfFieldInfoFromJson(json);

/// dBASE field type character (e.g. `"C"` for character, `"N"` for numeric).
@override@JsonKey(name: 'field_type') final  String fieldType;
/// Field (column) name.
@override final  String name;

/// Create a copy of DbfFieldInfo
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DbfFieldInfoCopyWith<_DbfFieldInfo> get copyWith => __$DbfFieldInfoCopyWithImpl<_DbfFieldInfo>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DbfFieldInfoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DbfFieldInfo&&(identical(other.fieldType, fieldType) || other.fieldType == fieldType)&&(identical(other.name, name) || other.name == name));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,fieldType,name);

@override
String toString() {
  return 'DbfFieldInfo(fieldType: $fieldType, name: $name)';
}


}

/// @nodoc
abstract mixin class _$DbfFieldInfoCopyWith<$Res> implements $DbfFieldInfoCopyWith<$Res> {
  factory _$DbfFieldInfoCopyWith(_DbfFieldInfo value, $Res Function(_DbfFieldInfo) _then) = __$DbfFieldInfoCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'field_type') String fieldType, String name
});




}
/// @nodoc
class __$DbfFieldInfoCopyWithImpl<$Res>
    implements _$DbfFieldInfoCopyWith<$Res> {
  __$DbfFieldInfoCopyWithImpl(this._self, this._then);

  final _DbfFieldInfo _self;
  final $Res Function(_DbfFieldInfo) _then;

/// Create a copy of DbfFieldInfo
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? fieldType = null,Object? name = null,}) {
  return _then(_DbfFieldInfo(
fieldType: null == fieldType ? _self.fieldType : fieldType // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
