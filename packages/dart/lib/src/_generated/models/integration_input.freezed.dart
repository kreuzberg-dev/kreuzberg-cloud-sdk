// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'integration_input.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$IntegrationInput {

/// The `integrations.id` (hyphenated UUID) the document is fetched through.
@JsonKey(name: 'integration_id') String get integrationId;/// Connector-specific document identifier (e.g. a Google Drive file id).
@JsonKey(name: 'resource_id') String get resourceId;
/// Create a copy of IntegrationInput
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$IntegrationInputCopyWith<IntegrationInput> get copyWith => _$IntegrationInputCopyWithImpl<IntegrationInput>(this as IntegrationInput, _$identity);

  /// Serializes this IntegrationInput to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is IntegrationInput&&(identical(other.integrationId, integrationId) || other.integrationId == integrationId)&&(identical(other.resourceId, resourceId) || other.resourceId == resourceId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,integrationId,resourceId);

@override
String toString() {
  return 'IntegrationInput(integrationId: $integrationId, resourceId: $resourceId)';
}


}

/// @nodoc
abstract mixin class $IntegrationInputCopyWith<$Res>  {
  factory $IntegrationInputCopyWith(IntegrationInput value, $Res Function(IntegrationInput) _then) = _$IntegrationInputCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'integration_id') String integrationId,@JsonKey(name: 'resource_id') String resourceId
});




}
/// @nodoc
class _$IntegrationInputCopyWithImpl<$Res>
    implements $IntegrationInputCopyWith<$Res> {
  _$IntegrationInputCopyWithImpl(this._self, this._then);

  final IntegrationInput _self;
  final $Res Function(IntegrationInput) _then;

/// Create a copy of IntegrationInput
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? integrationId = null,Object? resourceId = null,}) {
  return _then(_self.copyWith(
integrationId: null == integrationId ? _self.integrationId : integrationId // ignore: cast_nullable_to_non_nullable
as String,resourceId: null == resourceId ? _self.resourceId : resourceId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [IntegrationInput].
extension IntegrationInputPatterns on IntegrationInput {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _IntegrationInput value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _IntegrationInput() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _IntegrationInput value)  $default,){
final _that = this;
switch (_that) {
case _IntegrationInput():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _IntegrationInput value)?  $default,){
final _that = this;
switch (_that) {
case _IntegrationInput() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'integration_id')  String integrationId, @JsonKey(name: 'resource_id')  String resourceId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _IntegrationInput() when $default != null:
return $default(_that.integrationId,_that.resourceId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'integration_id')  String integrationId, @JsonKey(name: 'resource_id')  String resourceId)  $default,) {final _that = this;
switch (_that) {
case _IntegrationInput():
return $default(_that.integrationId,_that.resourceId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'integration_id')  String integrationId, @JsonKey(name: 'resource_id')  String resourceId)?  $default,) {final _that = this;
switch (_that) {
case _IntegrationInput() when $default != null:
return $default(_that.integrationId,_that.resourceId);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _IntegrationInput implements IntegrationInput {
  const _IntegrationInput({@JsonKey(name: 'integration_id') required this.integrationId, @JsonKey(name: 'resource_id') required this.resourceId});
  factory _IntegrationInput.fromJson(Map<String, dynamic> json) => _$IntegrationInputFromJson(json);

/// The `integrations.id` (hyphenated UUID) the document is fetched through.
@override@JsonKey(name: 'integration_id') final  String integrationId;
/// Connector-specific document identifier (e.g. a Google Drive file id).
@override@JsonKey(name: 'resource_id') final  String resourceId;

/// Create a copy of IntegrationInput
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$IntegrationInputCopyWith<_IntegrationInput> get copyWith => __$IntegrationInputCopyWithImpl<_IntegrationInput>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$IntegrationInputToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _IntegrationInput&&(identical(other.integrationId, integrationId) || other.integrationId == integrationId)&&(identical(other.resourceId, resourceId) || other.resourceId == resourceId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,integrationId,resourceId);

@override
String toString() {
  return 'IntegrationInput(integrationId: $integrationId, resourceId: $resourceId)';
}


}

/// @nodoc
abstract mixin class _$IntegrationInputCopyWith<$Res> implements $IntegrationInputCopyWith<$Res> {
  factory _$IntegrationInputCopyWith(_IntegrationInput value, $Res Function(_IntegrationInput) _then) = __$IntegrationInputCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'integration_id') String integrationId,@JsonKey(name: 'resource_id') String resourceId
});




}
/// @nodoc
class __$IntegrationInputCopyWithImpl<$Res>
    implements _$IntegrationInputCopyWith<$Res> {
  __$IntegrationInputCopyWithImpl(this._self, this._then);

  final _IntegrationInput _self;
  final $Res Function(_IntegrationInput) _then;

/// Create a copy of IntegrationInput
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? integrationId = null,Object? resourceId = null,}) {
  return _then(_IntegrationInput(
integrationId: null == integrationId ? _self.integrationId : integrationId // ignore: cast_nullable_to_non_nullable
as String,resourceId: null == resourceId ? _self.resourceId : resourceId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
