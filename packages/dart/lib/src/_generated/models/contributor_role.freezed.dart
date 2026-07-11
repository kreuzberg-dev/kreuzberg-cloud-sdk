// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'contributor_role.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ContributorRole {

/// Contributor display name.
 String get name;/// Contributor role (e.g. `"author"`, `"editor"`).
 String? get role;
/// Create a copy of ContributorRole
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ContributorRoleCopyWith<ContributorRole> get copyWith => _$ContributorRoleCopyWithImpl<ContributorRole>(this as ContributorRole, _$identity);

  /// Serializes this ContributorRole to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ContributorRole&&(identical(other.name, name) || other.name == name)&&(identical(other.role, role) || other.role == role));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,role);

@override
String toString() {
  return 'ContributorRole(name: $name, role: $role)';
}


}

/// @nodoc
abstract mixin class $ContributorRoleCopyWith<$Res>  {
  factory $ContributorRoleCopyWith(ContributorRole value, $Res Function(ContributorRole) _then) = _$ContributorRoleCopyWithImpl;
@useResult
$Res call({
 String name, String? role
});




}
/// @nodoc
class _$ContributorRoleCopyWithImpl<$Res>
    implements $ContributorRoleCopyWith<$Res> {
  _$ContributorRoleCopyWithImpl(this._self, this._then);

  final ContributorRole _self;
  final $Res Function(ContributorRole) _then;

/// Create a copy of ContributorRole
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? role = freezed,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,role: freezed == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [ContributorRole].
extension ContributorRolePatterns on ContributorRole {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ContributorRole value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ContributorRole() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ContributorRole value)  $default,){
final _that = this;
switch (_that) {
case _ContributorRole():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ContributorRole value)?  $default,){
final _that = this;
switch (_that) {
case _ContributorRole() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String name,  String? role)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ContributorRole() when $default != null:
return $default(_that.name,_that.role);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String name,  String? role)  $default,) {final _that = this;
switch (_that) {
case _ContributorRole():
return $default(_that.name,_that.role);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String name,  String? role)?  $default,) {final _that = this;
switch (_that) {
case _ContributorRole() when $default != null:
return $default(_that.name,_that.role);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ContributorRole implements ContributorRole {
  const _ContributorRole({required this.name, this.role});
  factory _ContributorRole.fromJson(Map<String, dynamic> json) => _$ContributorRoleFromJson(json);

/// Contributor display name.
@override final  String name;
/// Contributor role (e.g. `"author"`, `"editor"`).
@override final  String? role;

/// Create a copy of ContributorRole
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ContributorRoleCopyWith<_ContributorRole> get copyWith => __$ContributorRoleCopyWithImpl<_ContributorRole>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ContributorRoleToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ContributorRole&&(identical(other.name, name) || other.name == name)&&(identical(other.role, role) || other.role == role));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,role);

@override
String toString() {
  return 'ContributorRole(name: $name, role: $role)';
}


}

/// @nodoc
abstract mixin class _$ContributorRoleCopyWith<$Res> implements $ContributorRoleCopyWith<$Res> {
  factory _$ContributorRoleCopyWith(_ContributorRole value, $Res Function(_ContributorRole) _then) = __$ContributorRoleCopyWithImpl;
@override @useResult
$Res call({
 String name, String? role
});




}
/// @nodoc
class __$ContributorRoleCopyWithImpl<$Res>
    implements _$ContributorRoleCopyWith<$Res> {
  __$ContributorRoleCopyWithImpl(this._self, this._then);

  final _ContributorRole _self;
  final $Res Function(_ContributorRole) _then;

/// Create a copy of ContributorRole
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? role = freezed,}) {
  return _then(_ContributorRole(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,role: freezed == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
