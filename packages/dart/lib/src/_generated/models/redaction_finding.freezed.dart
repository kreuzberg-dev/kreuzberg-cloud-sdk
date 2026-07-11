// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'redaction_finding.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$RedactionFinding {

/// PII category that fired this redaction.
 PiiCategory get category;/// Byte-offset end (exclusive) in the original `ExtractedDocument::content`.
 int get end;/// String that replaced the original mention. Always present; for `Drop` the.
/// replacement is the empty string.
@JsonKey(name: 'replacement_token') String get replacementToken;/// Byte-offset start in the original (pre-redaction) `ExtractedDocument::content`.
 int get start;/// Strategy applied to this finding (mask, hash, token-replace, drop).
 RedactionStrategy get strategy;
/// Create a copy of RedactionFinding
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RedactionFindingCopyWith<RedactionFinding> get copyWith => _$RedactionFindingCopyWithImpl<RedactionFinding>(this as RedactionFinding, _$identity);

  /// Serializes this RedactionFinding to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RedactionFinding&&(identical(other.category, category) || other.category == category)&&(identical(other.end, end) || other.end == end)&&(identical(other.replacementToken, replacementToken) || other.replacementToken == replacementToken)&&(identical(other.start, start) || other.start == start)&&(identical(other.strategy, strategy) || other.strategy == strategy));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,category,end,replacementToken,start,strategy);

@override
String toString() {
  return 'RedactionFinding(category: $category, end: $end, replacementToken: $replacementToken, start: $start, strategy: $strategy)';
}


}

/// @nodoc
abstract mixin class $RedactionFindingCopyWith<$Res>  {
  factory $RedactionFindingCopyWith(RedactionFinding value, $Res Function(RedactionFinding) _then) = _$RedactionFindingCopyWithImpl;
@useResult
$Res call({
 PiiCategory category, int end,@JsonKey(name: 'replacement_token') String replacementToken, int start, RedactionStrategy strategy
});


$PiiCategoryCopyWith<$Res> get category;

}
/// @nodoc
class _$RedactionFindingCopyWithImpl<$Res>
    implements $RedactionFindingCopyWith<$Res> {
  _$RedactionFindingCopyWithImpl(this._self, this._then);

  final RedactionFinding _self;
  final $Res Function(RedactionFinding) _then;

/// Create a copy of RedactionFinding
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? category = null,Object? end = null,Object? replacementToken = null,Object? start = null,Object? strategy = null,}) {
  return _then(_self.copyWith(
category: null == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as PiiCategory,end: null == end ? _self.end : end // ignore: cast_nullable_to_non_nullable
as int,replacementToken: null == replacementToken ? _self.replacementToken : replacementToken // ignore: cast_nullable_to_non_nullable
as String,start: null == start ? _self.start : start // ignore: cast_nullable_to_non_nullable
as int,strategy: null == strategy ? _self.strategy : strategy // ignore: cast_nullable_to_non_nullable
as RedactionStrategy,
  ));
}
/// Create a copy of RedactionFinding
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PiiCategoryCopyWith<$Res> get category {

  return $PiiCategoryCopyWith<$Res>(_self.category, (value) {
    return _then(_self.copyWith(category: value));
  });
}
}


/// Adds pattern-matching-related methods to [RedactionFinding].
extension RedactionFindingPatterns on RedactionFinding {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RedactionFinding value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RedactionFinding() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RedactionFinding value)  $default,){
final _that = this;
switch (_that) {
case _RedactionFinding():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RedactionFinding value)?  $default,){
final _that = this;
switch (_that) {
case _RedactionFinding() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( PiiCategory category,  int end, @JsonKey(name: 'replacement_token')  String replacementToken,  int start,  RedactionStrategy strategy)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RedactionFinding() when $default != null:
return $default(_that.category,_that.end,_that.replacementToken,_that.start,_that.strategy);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( PiiCategory category,  int end, @JsonKey(name: 'replacement_token')  String replacementToken,  int start,  RedactionStrategy strategy)  $default,) {final _that = this;
switch (_that) {
case _RedactionFinding():
return $default(_that.category,_that.end,_that.replacementToken,_that.start,_that.strategy);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( PiiCategory category,  int end, @JsonKey(name: 'replacement_token')  String replacementToken,  int start,  RedactionStrategy strategy)?  $default,) {final _that = this;
switch (_that) {
case _RedactionFinding() when $default != null:
return $default(_that.category,_that.end,_that.replacementToken,_that.start,_that.strategy);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _RedactionFinding implements RedactionFinding {
  const _RedactionFinding({required this.category, required this.end, @JsonKey(name: 'replacement_token') required this.replacementToken, required this.start, required this.strategy});
  factory _RedactionFinding.fromJson(Map<String, dynamic> json) => _$RedactionFindingFromJson(json);

/// PII category that fired this redaction.
@override final  PiiCategory category;
/// Byte-offset end (exclusive) in the original `ExtractedDocument::content`.
@override final  int end;
/// String that replaced the original mention. Always present; for `Drop` the.
/// replacement is the empty string.
@override@JsonKey(name: 'replacement_token') final  String replacementToken;
/// Byte-offset start in the original (pre-redaction) `ExtractedDocument::content`.
@override final  int start;
/// Strategy applied to this finding (mask, hash, token-replace, drop).
@override final  RedactionStrategy strategy;

/// Create a copy of RedactionFinding
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RedactionFindingCopyWith<_RedactionFinding> get copyWith => __$RedactionFindingCopyWithImpl<_RedactionFinding>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RedactionFindingToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RedactionFinding&&(identical(other.category, category) || other.category == category)&&(identical(other.end, end) || other.end == end)&&(identical(other.replacementToken, replacementToken) || other.replacementToken == replacementToken)&&(identical(other.start, start) || other.start == start)&&(identical(other.strategy, strategy) || other.strategy == strategy));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,category,end,replacementToken,start,strategy);

@override
String toString() {
  return 'RedactionFinding(category: $category, end: $end, replacementToken: $replacementToken, start: $start, strategy: $strategy)';
}


}

/// @nodoc
abstract mixin class _$RedactionFindingCopyWith<$Res> implements $RedactionFindingCopyWith<$Res> {
  factory _$RedactionFindingCopyWith(_RedactionFinding value, $Res Function(_RedactionFinding) _then) = __$RedactionFindingCopyWithImpl;
@override @useResult
$Res call({
 PiiCategory category, int end,@JsonKey(name: 'replacement_token') String replacementToken, int start, RedactionStrategy strategy
});


@override $PiiCategoryCopyWith<$Res> get category;

}
/// @nodoc
class __$RedactionFindingCopyWithImpl<$Res>
    implements _$RedactionFindingCopyWith<$Res> {
  __$RedactionFindingCopyWithImpl(this._self, this._then);

  final _RedactionFinding _self;
  final $Res Function(_RedactionFinding) _then;

/// Create a copy of RedactionFinding
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? category = null,Object? end = null,Object? replacementToken = null,Object? start = null,Object? strategy = null,}) {
  return _then(_RedactionFinding(
category: null == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as PiiCategory,end: null == end ? _self.end : end // ignore: cast_nullable_to_non_nullable
as int,replacementToken: null == replacementToken ? _self.replacementToken : replacementToken // ignore: cast_nullable_to_non_nullable
as String,start: null == start ? _self.start : start // ignore: cast_nullable_to_non_nullable
as int,strategy: null == strategy ? _self.strategy : strategy // ignore: cast_nullable_to_non_nullable
as RedactionStrategy,
  ));
}

/// Create a copy of RedactionFinding
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PiiCategoryCopyWith<$Res> get category {

  return $PiiCategoryCopyWith<$Res>(_self.category, (value) {
    return _then(_self.copyWith(category: value));
  });
}
}

// dart format on
