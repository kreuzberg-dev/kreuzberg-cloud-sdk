// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'rake_params.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$RakeParams {

/// Maximum words in a keyword phrase (default: 3).
@JsonKey(name: 'max_words_per_phrase') int get maxWordsPerPhrase;/// Minimum word length to consider (default: 1).
@JsonKey(name: 'min_word_length') int get minWordLength;
/// Create a copy of RakeParams
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RakeParamsCopyWith<RakeParams> get copyWith => _$RakeParamsCopyWithImpl<RakeParams>(this as RakeParams, _$identity);

  /// Serializes this RakeParams to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RakeParams&&(identical(other.maxWordsPerPhrase, maxWordsPerPhrase) || other.maxWordsPerPhrase == maxWordsPerPhrase)&&(identical(other.minWordLength, minWordLength) || other.minWordLength == minWordLength));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,maxWordsPerPhrase,minWordLength);

@override
String toString() {
  return 'RakeParams(maxWordsPerPhrase: $maxWordsPerPhrase, minWordLength: $minWordLength)';
}


}

/// @nodoc
abstract mixin class $RakeParamsCopyWith<$Res>  {
  factory $RakeParamsCopyWith(RakeParams value, $Res Function(RakeParams) _then) = _$RakeParamsCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'max_words_per_phrase') int maxWordsPerPhrase,@JsonKey(name: 'min_word_length') int minWordLength
});




}
/// @nodoc
class _$RakeParamsCopyWithImpl<$Res>
    implements $RakeParamsCopyWith<$Res> {
  _$RakeParamsCopyWithImpl(this._self, this._then);

  final RakeParams _self;
  final $Res Function(RakeParams) _then;

/// Create a copy of RakeParams
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? maxWordsPerPhrase = null,Object? minWordLength = null,}) {
  return _then(_self.copyWith(
maxWordsPerPhrase: null == maxWordsPerPhrase ? _self.maxWordsPerPhrase : maxWordsPerPhrase // ignore: cast_nullable_to_non_nullable
as int,minWordLength: null == minWordLength ? _self.minWordLength : minWordLength // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [RakeParams].
extension RakeParamsPatterns on RakeParams {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RakeParams value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RakeParams() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RakeParams value)  $default,){
final _that = this;
switch (_that) {
case _RakeParams():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RakeParams value)?  $default,){
final _that = this;
switch (_that) {
case _RakeParams() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'max_words_per_phrase')  int maxWordsPerPhrase, @JsonKey(name: 'min_word_length')  int minWordLength)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RakeParams() when $default != null:
return $default(_that.maxWordsPerPhrase,_that.minWordLength);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'max_words_per_phrase')  int maxWordsPerPhrase, @JsonKey(name: 'min_word_length')  int minWordLength)  $default,) {final _that = this;
switch (_that) {
case _RakeParams():
return $default(_that.maxWordsPerPhrase,_that.minWordLength);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'max_words_per_phrase')  int maxWordsPerPhrase, @JsonKey(name: 'min_word_length')  int minWordLength)?  $default,) {final _that = this;
switch (_that) {
case _RakeParams() when $default != null:
return $default(_that.maxWordsPerPhrase,_that.minWordLength);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _RakeParams implements RakeParams {
  const _RakeParams({@JsonKey(name: 'max_words_per_phrase') required this.maxWordsPerPhrase, @JsonKey(name: 'min_word_length') required this.minWordLength});
  factory _RakeParams.fromJson(Map<String, dynamic> json) => _$RakeParamsFromJson(json);

/// Maximum words in a keyword phrase (default: 3).
@override@JsonKey(name: 'max_words_per_phrase') final  int maxWordsPerPhrase;
/// Minimum word length to consider (default: 1).
@override@JsonKey(name: 'min_word_length') final  int minWordLength;

/// Create a copy of RakeParams
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RakeParamsCopyWith<_RakeParams> get copyWith => __$RakeParamsCopyWithImpl<_RakeParams>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RakeParamsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RakeParams&&(identical(other.maxWordsPerPhrase, maxWordsPerPhrase) || other.maxWordsPerPhrase == maxWordsPerPhrase)&&(identical(other.minWordLength, minWordLength) || other.minWordLength == minWordLength));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,maxWordsPerPhrase,minWordLength);

@override
String toString() {
  return 'RakeParams(maxWordsPerPhrase: $maxWordsPerPhrase, minWordLength: $minWordLength)';
}


}

/// @nodoc
abstract mixin class _$RakeParamsCopyWith<$Res> implements $RakeParamsCopyWith<$Res> {
  factory _$RakeParamsCopyWith(_RakeParams value, $Res Function(_RakeParams) _then) = __$RakeParamsCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'max_words_per_phrase') int maxWordsPerPhrase,@JsonKey(name: 'min_word_length') int minWordLength
});




}
/// @nodoc
class __$RakeParamsCopyWithImpl<$Res>
    implements _$RakeParamsCopyWith<$Res> {
  __$RakeParamsCopyWithImpl(this._self, this._then);

  final _RakeParams _self;
  final $Res Function(_RakeParams) _then;

/// Create a copy of RakeParams
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? maxWordsPerPhrase = null,Object? minWordLength = null,}) {
  return _then(_RakeParams(
maxWordsPerPhrase: null == maxWordsPerPhrase ? _self.maxWordsPerPhrase : maxWordsPerPhrase // ignore: cast_nullable_to_non_nullable
as int,minWordLength: null == minWordLength ? _self.minWordLength : minWordLength // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
