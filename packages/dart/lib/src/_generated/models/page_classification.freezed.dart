// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'page_classification.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PageClassification {

/// Labels assigned to the page. Single-label classification yields exactly one.
/// entry; multi-label classification yields any subset of the configured label set.
 List<ClassificationLabel> get labels;/// 1-indexed page number this classification belongs to.
@JsonKey(name: 'page_number') int get pageNumber;
/// Create a copy of PageClassification
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PageClassificationCopyWith<PageClassification> get copyWith => _$PageClassificationCopyWithImpl<PageClassification>(this as PageClassification, _$identity);

  /// Serializes this PageClassification to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PageClassification&&const DeepCollectionEquality().equals(other.labels, labels)&&(identical(other.pageNumber, pageNumber) || other.pageNumber == pageNumber));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(labels),pageNumber);

@override
String toString() {
  return 'PageClassification(labels: $labels, pageNumber: $pageNumber)';
}


}

/// @nodoc
abstract mixin class $PageClassificationCopyWith<$Res>  {
  factory $PageClassificationCopyWith(PageClassification value, $Res Function(PageClassification) _then) = _$PageClassificationCopyWithImpl;
@useResult
$Res call({
 List<ClassificationLabel> labels,@JsonKey(name: 'page_number') int pageNumber
});




}
/// @nodoc
class _$PageClassificationCopyWithImpl<$Res>
    implements $PageClassificationCopyWith<$Res> {
  _$PageClassificationCopyWithImpl(this._self, this._then);

  final PageClassification _self;
  final $Res Function(PageClassification) _then;

/// Create a copy of PageClassification
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? labels = null,Object? pageNumber = null,}) {
  return _then(_self.copyWith(
labels: null == labels ? _self.labels : labels // ignore: cast_nullable_to_non_nullable
as List<ClassificationLabel>,pageNumber: null == pageNumber ? _self.pageNumber : pageNumber // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [PageClassification].
extension PageClassificationPatterns on PageClassification {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PageClassification value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PageClassification() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PageClassification value)  $default,){
final _that = this;
switch (_that) {
case _PageClassification():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PageClassification value)?  $default,){
final _that = this;
switch (_that) {
case _PageClassification() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<ClassificationLabel> labels, @JsonKey(name: 'page_number')  int pageNumber)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PageClassification() when $default != null:
return $default(_that.labels,_that.pageNumber);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<ClassificationLabel> labels, @JsonKey(name: 'page_number')  int pageNumber)  $default,) {final _that = this;
switch (_that) {
case _PageClassification():
return $default(_that.labels,_that.pageNumber);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<ClassificationLabel> labels, @JsonKey(name: 'page_number')  int pageNumber)?  $default,) {final _that = this;
switch (_that) {
case _PageClassification() when $default != null:
return $default(_that.labels,_that.pageNumber);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PageClassification implements PageClassification {
  const _PageClassification({required final  List<ClassificationLabel> labels, @JsonKey(name: 'page_number') required this.pageNumber}): _labels = labels;
  factory _PageClassification.fromJson(Map<String, dynamic> json) => _$PageClassificationFromJson(json);

/// Labels assigned to the page. Single-label classification yields exactly one.
/// entry; multi-label classification yields any subset of the configured label set.
 final  List<ClassificationLabel> _labels;
/// Labels assigned to the page. Single-label classification yields exactly one.
/// entry; multi-label classification yields any subset of the configured label set.
@override List<ClassificationLabel> get labels {
  if (_labels is EqualUnmodifiableListView) return _labels;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_labels);
}

/// 1-indexed page number this classification belongs to.
@override@JsonKey(name: 'page_number') final  int pageNumber;

/// Create a copy of PageClassification
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PageClassificationCopyWith<_PageClassification> get copyWith => __$PageClassificationCopyWithImpl<_PageClassification>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PageClassificationToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PageClassification&&const DeepCollectionEquality().equals(other._labels, _labels)&&(identical(other.pageNumber, pageNumber) || other.pageNumber == pageNumber));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_labels),pageNumber);

@override
String toString() {
  return 'PageClassification(labels: $labels, pageNumber: $pageNumber)';
}


}

/// @nodoc
abstract mixin class _$PageClassificationCopyWith<$Res> implements $PageClassificationCopyWith<$Res> {
  factory _$PageClassificationCopyWith(_PageClassification value, $Res Function(_PageClassification) _then) = __$PageClassificationCopyWithImpl;
@override @useResult
$Res call({
 List<ClassificationLabel> labels,@JsonKey(name: 'page_number') int pageNumber
});




}
/// @nodoc
class __$PageClassificationCopyWithImpl<$Res>
    implements _$PageClassificationCopyWith<$Res> {
  __$PageClassificationCopyWithImpl(this._self, this._then);

  final _PageClassification _self;
  final $Res Function(_PageClassification) _then;

/// Create a copy of PageClassification
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? labels = null,Object? pageNumber = null,}) {
  return _then(_PageClassification(
labels: null == labels ? _self._labels : labels // ignore: cast_nullable_to_non_nullable
as List<ClassificationLabel>,pageNumber: null == pageNumber ? _self.pageNumber : pageNumber // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
