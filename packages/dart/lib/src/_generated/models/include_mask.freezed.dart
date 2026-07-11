// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'include_mask.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$IncludeMask {

/// Include chunk content text. Default true.
 bool? get content;/// Include parent document summary. Default false.
 bool? get document;/// Include primary-stage + rerank score breakdown. Default false.
@JsonKey(name: 'score_breakdown') bool? get scoreBreakdown;
/// Create a copy of IncludeMask
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$IncludeMaskCopyWith<IncludeMask> get copyWith => _$IncludeMaskCopyWithImpl<IncludeMask>(this as IncludeMask, _$identity);

  /// Serializes this IncludeMask to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is IncludeMask&&(identical(other.content, content) || other.content == content)&&(identical(other.document, document) || other.document == document)&&(identical(other.scoreBreakdown, scoreBreakdown) || other.scoreBreakdown == scoreBreakdown));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,content,document,scoreBreakdown);

@override
String toString() {
  return 'IncludeMask(content: $content, document: $document, scoreBreakdown: $scoreBreakdown)';
}


}

/// @nodoc
abstract mixin class $IncludeMaskCopyWith<$Res>  {
  factory $IncludeMaskCopyWith(IncludeMask value, $Res Function(IncludeMask) _then) = _$IncludeMaskCopyWithImpl;
@useResult
$Res call({
 bool? content, bool? document,@JsonKey(name: 'score_breakdown') bool? scoreBreakdown
});




}
/// @nodoc
class _$IncludeMaskCopyWithImpl<$Res>
    implements $IncludeMaskCopyWith<$Res> {
  _$IncludeMaskCopyWithImpl(this._self, this._then);

  final IncludeMask _self;
  final $Res Function(IncludeMask) _then;

/// Create a copy of IncludeMask
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? content = freezed,Object? document = freezed,Object? scoreBreakdown = freezed,}) {
  return _then(_self.copyWith(
content: freezed == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as bool?,document: freezed == document ? _self.document : document // ignore: cast_nullable_to_non_nullable
as bool?,scoreBreakdown: freezed == scoreBreakdown ? _self.scoreBreakdown : scoreBreakdown // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}

}


/// Adds pattern-matching-related methods to [IncludeMask].
extension IncludeMaskPatterns on IncludeMask {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _IncludeMask value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _IncludeMask() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _IncludeMask value)  $default,){
final _that = this;
switch (_that) {
case _IncludeMask():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _IncludeMask value)?  $default,){
final _that = this;
switch (_that) {
case _IncludeMask() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool? content,  bool? document, @JsonKey(name: 'score_breakdown')  bool? scoreBreakdown)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _IncludeMask() when $default != null:
return $default(_that.content,_that.document,_that.scoreBreakdown);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool? content,  bool? document, @JsonKey(name: 'score_breakdown')  bool? scoreBreakdown)  $default,) {final _that = this;
switch (_that) {
case _IncludeMask():
return $default(_that.content,_that.document,_that.scoreBreakdown);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool? content,  bool? document, @JsonKey(name: 'score_breakdown')  bool? scoreBreakdown)?  $default,) {final _that = this;
switch (_that) {
case _IncludeMask() when $default != null:
return $default(_that.content,_that.document,_that.scoreBreakdown);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _IncludeMask implements IncludeMask {
  const _IncludeMask({this.content, this.document, @JsonKey(name: 'score_breakdown') this.scoreBreakdown});
  factory _IncludeMask.fromJson(Map<String, dynamic> json) => _$IncludeMaskFromJson(json);

/// Include chunk content text. Default true.
@override final  bool? content;
/// Include parent document summary. Default false.
@override final  bool? document;
/// Include primary-stage + rerank score breakdown. Default false.
@override@JsonKey(name: 'score_breakdown') final  bool? scoreBreakdown;

/// Create a copy of IncludeMask
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$IncludeMaskCopyWith<_IncludeMask> get copyWith => __$IncludeMaskCopyWithImpl<_IncludeMask>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$IncludeMaskToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _IncludeMask&&(identical(other.content, content) || other.content == content)&&(identical(other.document, document) || other.document == document)&&(identical(other.scoreBreakdown, scoreBreakdown) || other.scoreBreakdown == scoreBreakdown));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,content,document,scoreBreakdown);

@override
String toString() {
  return 'IncludeMask(content: $content, document: $document, scoreBreakdown: $scoreBreakdown)';
}


}

/// @nodoc
abstract mixin class _$IncludeMaskCopyWith<$Res> implements $IncludeMaskCopyWith<$Res> {
  factory _$IncludeMaskCopyWith(_IncludeMask value, $Res Function(_IncludeMask) _then) = __$IncludeMaskCopyWithImpl;
@override @useResult
$Res call({
 bool? content, bool? document,@JsonKey(name: 'score_breakdown') bool? scoreBreakdown
});




}
/// @nodoc
class __$IncludeMaskCopyWithImpl<$Res>
    implements _$IncludeMaskCopyWith<$Res> {
  __$IncludeMaskCopyWithImpl(this._self, this._then);

  final _IncludeMask _self;
  final $Res Function(_IncludeMask) _then;

/// Create a copy of IncludeMask
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? content = freezed,Object? document = freezed,Object? scoreBreakdown = freezed,}) {
  return _then(_IncludeMask(
content: freezed == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as bool?,document: freezed == document ? _self.document : document // ignore: cast_nullable_to_non_nullable
as bool?,scoreBreakdown: freezed == scoreBreakdown ? _self.scoreBreakdown : scoreBreakdown // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}


}

// dart format on
