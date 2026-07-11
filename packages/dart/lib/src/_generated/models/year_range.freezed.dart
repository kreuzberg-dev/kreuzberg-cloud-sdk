// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'year_range.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$YearRange {

/// Latest (maximum) year in the range.
 int? get max;/// Earliest (minimum) year in the range.
 int? get min;/// All individual years present in the collection.
 List<int>? get years;
/// Create a copy of YearRange
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$YearRangeCopyWith<YearRange> get copyWith => _$YearRangeCopyWithImpl<YearRange>(this as YearRange, _$identity);

  /// Serializes this YearRange to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is YearRange&&(identical(other.max, max) || other.max == max)&&(identical(other.min, min) || other.min == min)&&const DeepCollectionEquality().equals(other.years, years));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,max,min,const DeepCollectionEquality().hash(years));

@override
String toString() {
  return 'YearRange(max: $max, min: $min, years: $years)';
}


}

/// @nodoc
abstract mixin class $YearRangeCopyWith<$Res>  {
  factory $YearRangeCopyWith(YearRange value, $Res Function(YearRange) _then) = _$YearRangeCopyWithImpl;
@useResult
$Res call({
 int? max, int? min, List<int>? years
});




}
/// @nodoc
class _$YearRangeCopyWithImpl<$Res>
    implements $YearRangeCopyWith<$Res> {
  _$YearRangeCopyWithImpl(this._self, this._then);

  final YearRange _self;
  final $Res Function(YearRange) _then;

/// Create a copy of YearRange
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? max = freezed,Object? min = freezed,Object? years = freezed,}) {
  return _then(_self.copyWith(
max: freezed == max ? _self.max : max // ignore: cast_nullable_to_non_nullable
as int?,min: freezed == min ? _self.min : min // ignore: cast_nullable_to_non_nullable
as int?,years: freezed == years ? _self.years : years // ignore: cast_nullable_to_non_nullable
as List<int>?,
  ));
}

}


/// Adds pattern-matching-related methods to [YearRange].
extension YearRangePatterns on YearRange {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _YearRange value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _YearRange() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _YearRange value)  $default,){
final _that = this;
switch (_that) {
case _YearRange():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _YearRange value)?  $default,){
final _that = this;
switch (_that) {
case _YearRange() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? max,  int? min,  List<int>? years)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _YearRange() when $default != null:
return $default(_that.max,_that.min,_that.years);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? max,  int? min,  List<int>? years)  $default,) {final _that = this;
switch (_that) {
case _YearRange():
return $default(_that.max,_that.min,_that.years);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? max,  int? min,  List<int>? years)?  $default,) {final _that = this;
switch (_that) {
case _YearRange() when $default != null:
return $default(_that.max,_that.min,_that.years);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _YearRange implements YearRange {
  const _YearRange({this.max, this.min, final  List<int>? years}): _years = years;
  factory _YearRange.fromJson(Map<String, dynamic> json) => _$YearRangeFromJson(json);

/// Latest (maximum) year in the range.
@override final  int? max;
/// Earliest (minimum) year in the range.
@override final  int? min;
/// All individual years present in the collection.
 final  List<int>? _years;
/// All individual years present in the collection.
@override List<int>? get years {
  final value = _years;
  if (value == null) return null;
  if (_years is EqualUnmodifiableListView) return _years;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of YearRange
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$YearRangeCopyWith<_YearRange> get copyWith => __$YearRangeCopyWithImpl<_YearRange>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$YearRangeToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _YearRange&&(identical(other.max, max) || other.max == max)&&(identical(other.min, min) || other.min == min)&&const DeepCollectionEquality().equals(other._years, _years));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,max,min,const DeepCollectionEquality().hash(_years));

@override
String toString() {
  return 'YearRange(max: $max, min: $min, years: $years)';
}


}

/// @nodoc
abstract mixin class _$YearRangeCopyWith<$Res> implements $YearRangeCopyWith<$Res> {
  factory _$YearRangeCopyWith(_YearRange value, $Res Function(_YearRange) _then) = __$YearRangeCopyWithImpl;
@override @useResult
$Res call({
 int? max, int? min, List<int>? years
});




}
/// @nodoc
class __$YearRangeCopyWithImpl<$Res>
    implements _$YearRangeCopyWith<$Res> {
  __$YearRangeCopyWithImpl(this._self, this._then);

  final _YearRange _self;
  final $Res Function(_YearRange) _then;

/// Create a copy of YearRange
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? max = freezed,Object? min = freezed,Object? years = freezed,}) {
  return _then(_YearRange(
max: freezed == max ? _self.max : max // ignore: cast_nullable_to_non_nullable
as int?,min: freezed == min ? _self.min : min // ignore: cast_nullable_to_non_nullable
as int?,years: freezed == years ? _self._years : years // ignore: cast_nullable_to_non_nullable
as List<int>?,
  ));
}


}

// dart format on
