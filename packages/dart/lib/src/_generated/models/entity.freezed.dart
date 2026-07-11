// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Entity {

/// Canonical category the entity belongs to (PERSON, ORG, LOCATION, etc.).
 EntityCategory get category;/// Byte-offset span in `ExtractedDocument::content` where the mention ends (exclusive).
 int get end;/// Byte-offset span in `ExtractedDocument::content` where the mention starts.
 int get start;/// Raw mention text exactly as it appeared in the source.
 String get text;/// Backend-reported confidence in `[0.0, 1.0]`. `None` when the backend does not.
/// expose confidence scores.
 double? get confidence;
/// Create a copy of Entity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EntityCopyWith<Entity> get copyWith => _$EntityCopyWithImpl<Entity>(this as Entity, _$identity);

  /// Serializes this Entity to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Entity&&(identical(other.category, category) || other.category == category)&&(identical(other.end, end) || other.end == end)&&(identical(other.start, start) || other.start == start)&&(identical(other.text, text) || other.text == text)&&(identical(other.confidence, confidence) || other.confidence == confidence));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,category,end,start,text,confidence);

@override
String toString() {
  return 'Entity(category: $category, end: $end, start: $start, text: $text, confidence: $confidence)';
}


}

/// @nodoc
abstract mixin class $EntityCopyWith<$Res>  {
  factory $EntityCopyWith(Entity value, $Res Function(Entity) _then) = _$EntityCopyWithImpl;
@useResult
$Res call({
 EntityCategory category, int end, int start, String text, double? confidence
});


$EntityCategoryCopyWith<$Res> get category;

}
/// @nodoc
class _$EntityCopyWithImpl<$Res>
    implements $EntityCopyWith<$Res> {
  _$EntityCopyWithImpl(this._self, this._then);

  final Entity _self;
  final $Res Function(Entity) _then;

/// Create a copy of Entity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? category = null,Object? end = null,Object? start = null,Object? text = null,Object? confidence = freezed,}) {
  return _then(_self.copyWith(
category: null == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as EntityCategory,end: null == end ? _self.end : end // ignore: cast_nullable_to_non_nullable
as int,start: null == start ? _self.start : start // ignore: cast_nullable_to_non_nullable
as int,text: null == text ? _self.text : text // ignore: cast_nullable_to_non_nullable
as String,confidence: freezed == confidence ? _self.confidence : confidence // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}
/// Create a copy of Entity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$EntityCategoryCopyWith<$Res> get category {

  return $EntityCategoryCopyWith<$Res>(_self.category, (value) {
    return _then(_self.copyWith(category: value));
  });
}
}


/// Adds pattern-matching-related methods to [Entity].
extension EntityPatterns on Entity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Entity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Entity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Entity value)  $default,){
final _that = this;
switch (_that) {
case _Entity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Entity value)?  $default,){
final _that = this;
switch (_that) {
case _Entity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( EntityCategory category,  int end,  int start,  String text,  double? confidence)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Entity() when $default != null:
return $default(_that.category,_that.end,_that.start,_that.text,_that.confidence);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( EntityCategory category,  int end,  int start,  String text,  double? confidence)  $default,) {final _that = this;
switch (_that) {
case _Entity():
return $default(_that.category,_that.end,_that.start,_that.text,_that.confidence);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( EntityCategory category,  int end,  int start,  String text,  double? confidence)?  $default,) {final _that = this;
switch (_that) {
case _Entity() when $default != null:
return $default(_that.category,_that.end,_that.start,_that.text,_that.confidence);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Entity implements Entity {
  const _Entity({required this.category, required this.end, required this.start, required this.text, this.confidence});
  factory _Entity.fromJson(Map<String, dynamic> json) => _$EntityFromJson(json);

/// Canonical category the entity belongs to (PERSON, ORG, LOCATION, etc.).
@override final  EntityCategory category;
/// Byte-offset span in `ExtractedDocument::content` where the mention ends (exclusive).
@override final  int end;
/// Byte-offset span in `ExtractedDocument::content` where the mention starts.
@override final  int start;
/// Raw mention text exactly as it appeared in the source.
@override final  String text;
/// Backend-reported confidence in `[0.0, 1.0]`. `None` when the backend does not.
/// expose confidence scores.
@override final  double? confidence;

/// Create a copy of Entity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EntityCopyWith<_Entity> get copyWith => __$EntityCopyWithImpl<_Entity>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$EntityToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Entity&&(identical(other.category, category) || other.category == category)&&(identical(other.end, end) || other.end == end)&&(identical(other.start, start) || other.start == start)&&(identical(other.text, text) || other.text == text)&&(identical(other.confidence, confidence) || other.confidence == confidence));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,category,end,start,text,confidence);

@override
String toString() {
  return 'Entity(category: $category, end: $end, start: $start, text: $text, confidence: $confidence)';
}


}

/// @nodoc
abstract mixin class _$EntityCopyWith<$Res> implements $EntityCopyWith<$Res> {
  factory _$EntityCopyWith(_Entity value, $Res Function(_Entity) _then) = __$EntityCopyWithImpl;
@override @useResult
$Res call({
 EntityCategory category, int end, int start, String text, double? confidence
});


@override $EntityCategoryCopyWith<$Res> get category;

}
/// @nodoc
class __$EntityCopyWithImpl<$Res>
    implements _$EntityCopyWith<$Res> {
  __$EntityCopyWithImpl(this._self, this._then);

  final _Entity _self;
  final $Res Function(_Entity) _then;

/// Create a copy of Entity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? category = null,Object? end = null,Object? start = null,Object? text = null,Object? confidence = freezed,}) {
  return _then(_Entity(
category: null == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as EntityCategory,end: null == end ? _self.end : end // ignore: cast_nullable_to_non_nullable
as int,start: null == start ? _self.start : start // ignore: cast_nullable_to_non_nullable
as int,text: null == text ? _self.text : text // ignore: cast_nullable_to_non_nullable
as String,confidence: freezed == confidence ? _self.confidence : confidence // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}

/// Create a copy of Entity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$EntityCategoryCopyWith<$Res> get category {

  return $EntityCategoryCopyWith<$Res>(_self.category, (value) {
    return _then(_self.copyWith(category: value));
  });
}
}

// dart format on
