// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'keyword_config.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$KeywordConfig {

/// Algorithm to use for extraction.
 KeywordAlgorithm? get algorithm;/// Language code for stopword filtering (e.g., "en", "de", "fr").
///
/// If None, no stopword filtering is applied.
 String? get language;/// Maximum number of keywords to extract (default: 10).
@JsonKey(name: 'max_keywords') int? get maxKeywords;/// Minimum score threshold (0.0-1.0, default: 0.0).
///
/// Keywords with scores below this threshold are filtered out.
/// Note: Score ranges differ between algorithms.
@JsonKey(name: 'min_score') double? get minScore;/// N-gram range for keyword extraction (min, max).
///
/// (1, 1) = unigrams only.
/// (1, 2) = unigrams and bigrams.
/// (1, 3) = unigrams, bigrams, and trigrams (default).
@JsonKey(name: 'ngram_range') List<int>? get ngramRange;/// RAKE-specific tuning parameters.
@JsonKey(name: 'rake_params') RakeParams? get rakeParams;/// YAKE-specific tuning parameters.
@JsonKey(name: 'yake_params') YakeParams? get yakeParams;
/// Create a copy of KeywordConfig
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$KeywordConfigCopyWith<KeywordConfig> get copyWith => _$KeywordConfigCopyWithImpl<KeywordConfig>(this as KeywordConfig, _$identity);

  /// Serializes this KeywordConfig to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is KeywordConfig&&(identical(other.algorithm, algorithm) || other.algorithm == algorithm)&&(identical(other.language, language) || other.language == language)&&(identical(other.maxKeywords, maxKeywords) || other.maxKeywords == maxKeywords)&&(identical(other.minScore, minScore) || other.minScore == minScore)&&const DeepCollectionEquality().equals(other.ngramRange, ngramRange)&&(identical(other.rakeParams, rakeParams) || other.rakeParams == rakeParams)&&(identical(other.yakeParams, yakeParams) || other.yakeParams == yakeParams));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,algorithm,language,maxKeywords,minScore,const DeepCollectionEquality().hash(ngramRange),rakeParams,yakeParams);

@override
String toString() {
  return 'KeywordConfig(algorithm: $algorithm, language: $language, maxKeywords: $maxKeywords, minScore: $minScore, ngramRange: $ngramRange, rakeParams: $rakeParams, yakeParams: $yakeParams)';
}


}

/// @nodoc
abstract mixin class $KeywordConfigCopyWith<$Res>  {
  factory $KeywordConfigCopyWith(KeywordConfig value, $Res Function(KeywordConfig) _then) = _$KeywordConfigCopyWithImpl;
@useResult
$Res call({
 KeywordAlgorithm? algorithm, String? language,@JsonKey(name: 'max_keywords') int? maxKeywords,@JsonKey(name: 'min_score') double? minScore,@JsonKey(name: 'ngram_range') List<int>? ngramRange,@JsonKey(name: 'rake_params') RakeParams? rakeParams,@JsonKey(name: 'yake_params') YakeParams? yakeParams
});


$RakeParamsCopyWith<$Res>? get rakeParams;$YakeParamsCopyWith<$Res>? get yakeParams;

}
/// @nodoc
class _$KeywordConfigCopyWithImpl<$Res>
    implements $KeywordConfigCopyWith<$Res> {
  _$KeywordConfigCopyWithImpl(this._self, this._then);

  final KeywordConfig _self;
  final $Res Function(KeywordConfig) _then;

/// Create a copy of KeywordConfig
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? algorithm = freezed,Object? language = freezed,Object? maxKeywords = freezed,Object? minScore = freezed,Object? ngramRange = freezed,Object? rakeParams = freezed,Object? yakeParams = freezed,}) {
  return _then(_self.copyWith(
algorithm: freezed == algorithm ? _self.algorithm : algorithm // ignore: cast_nullable_to_non_nullable
as KeywordAlgorithm?,language: freezed == language ? _self.language : language // ignore: cast_nullable_to_non_nullable
as String?,maxKeywords: freezed == maxKeywords ? _self.maxKeywords : maxKeywords // ignore: cast_nullable_to_non_nullable
as int?,minScore: freezed == minScore ? _self.minScore : minScore // ignore: cast_nullable_to_non_nullable
as double?,ngramRange: freezed == ngramRange ? _self.ngramRange : ngramRange // ignore: cast_nullable_to_non_nullable
as List<int>?,rakeParams: freezed == rakeParams ? _self.rakeParams : rakeParams // ignore: cast_nullable_to_non_nullable
as RakeParams?,yakeParams: freezed == yakeParams ? _self.yakeParams : yakeParams // ignore: cast_nullable_to_non_nullable
as YakeParams?,
  ));
}
/// Create a copy of KeywordConfig
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RakeParamsCopyWith<$Res>? get rakeParams {
    if (_self.rakeParams == null) {
    return null;
  }

  return $RakeParamsCopyWith<$Res>(_self.rakeParams!, (value) {
    return _then(_self.copyWith(rakeParams: value));
  });
}/// Create a copy of KeywordConfig
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$YakeParamsCopyWith<$Res>? get yakeParams {
    if (_self.yakeParams == null) {
    return null;
  }

  return $YakeParamsCopyWith<$Res>(_self.yakeParams!, (value) {
    return _then(_self.copyWith(yakeParams: value));
  });
}
}


/// Adds pattern-matching-related methods to [KeywordConfig].
extension KeywordConfigPatterns on KeywordConfig {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _KeywordConfig value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _KeywordConfig() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _KeywordConfig value)  $default,){
final _that = this;
switch (_that) {
case _KeywordConfig():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _KeywordConfig value)?  $default,){
final _that = this;
switch (_that) {
case _KeywordConfig() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( KeywordAlgorithm? algorithm,  String? language, @JsonKey(name: 'max_keywords')  int? maxKeywords, @JsonKey(name: 'min_score')  double? minScore, @JsonKey(name: 'ngram_range')  List<int>? ngramRange, @JsonKey(name: 'rake_params')  RakeParams? rakeParams, @JsonKey(name: 'yake_params')  YakeParams? yakeParams)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _KeywordConfig() when $default != null:
return $default(_that.algorithm,_that.language,_that.maxKeywords,_that.minScore,_that.ngramRange,_that.rakeParams,_that.yakeParams);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( KeywordAlgorithm? algorithm,  String? language, @JsonKey(name: 'max_keywords')  int? maxKeywords, @JsonKey(name: 'min_score')  double? minScore, @JsonKey(name: 'ngram_range')  List<int>? ngramRange, @JsonKey(name: 'rake_params')  RakeParams? rakeParams, @JsonKey(name: 'yake_params')  YakeParams? yakeParams)  $default,) {final _that = this;
switch (_that) {
case _KeywordConfig():
return $default(_that.algorithm,_that.language,_that.maxKeywords,_that.minScore,_that.ngramRange,_that.rakeParams,_that.yakeParams);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( KeywordAlgorithm? algorithm,  String? language, @JsonKey(name: 'max_keywords')  int? maxKeywords, @JsonKey(name: 'min_score')  double? minScore, @JsonKey(name: 'ngram_range')  List<int>? ngramRange, @JsonKey(name: 'rake_params')  RakeParams? rakeParams, @JsonKey(name: 'yake_params')  YakeParams? yakeParams)?  $default,) {final _that = this;
switch (_that) {
case _KeywordConfig() when $default != null:
return $default(_that.algorithm,_that.language,_that.maxKeywords,_that.minScore,_that.ngramRange,_that.rakeParams,_that.yakeParams);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _KeywordConfig implements KeywordConfig {
  const _KeywordConfig({this.algorithm, this.language, @JsonKey(name: 'max_keywords') this.maxKeywords, @JsonKey(name: 'min_score') this.minScore, @JsonKey(name: 'ngram_range') final  List<int>? ngramRange, @JsonKey(name: 'rake_params') this.rakeParams, @JsonKey(name: 'yake_params') this.yakeParams}): _ngramRange = ngramRange;
  factory _KeywordConfig.fromJson(Map<String, dynamic> json) => _$KeywordConfigFromJson(json);

/// Algorithm to use for extraction.
@override final  KeywordAlgorithm? algorithm;
/// Language code for stopword filtering (e.g., "en", "de", "fr").
///
/// If None, no stopword filtering is applied.
@override final  String? language;
/// Maximum number of keywords to extract (default: 10).
@override@JsonKey(name: 'max_keywords') final  int? maxKeywords;
/// Minimum score threshold (0.0-1.0, default: 0.0).
///
/// Keywords with scores below this threshold are filtered out.
/// Note: Score ranges differ between algorithms.
@override@JsonKey(name: 'min_score') final  double? minScore;
/// N-gram range for keyword extraction (min, max).
///
/// (1, 1) = unigrams only.
/// (1, 2) = unigrams and bigrams.
/// (1, 3) = unigrams, bigrams, and trigrams (default).
 final  List<int>? _ngramRange;
/// N-gram range for keyword extraction (min, max).
///
/// (1, 1) = unigrams only.
/// (1, 2) = unigrams and bigrams.
/// (1, 3) = unigrams, bigrams, and trigrams (default).
@override@JsonKey(name: 'ngram_range') List<int>? get ngramRange {
  final value = _ngramRange;
  if (value == null) return null;
  if (_ngramRange is EqualUnmodifiableListView) return _ngramRange;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

/// RAKE-specific tuning parameters.
@override@JsonKey(name: 'rake_params') final  RakeParams? rakeParams;
/// YAKE-specific tuning parameters.
@override@JsonKey(name: 'yake_params') final  YakeParams? yakeParams;

/// Create a copy of KeywordConfig
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$KeywordConfigCopyWith<_KeywordConfig> get copyWith => __$KeywordConfigCopyWithImpl<_KeywordConfig>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$KeywordConfigToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _KeywordConfig&&(identical(other.algorithm, algorithm) || other.algorithm == algorithm)&&(identical(other.language, language) || other.language == language)&&(identical(other.maxKeywords, maxKeywords) || other.maxKeywords == maxKeywords)&&(identical(other.minScore, minScore) || other.minScore == minScore)&&const DeepCollectionEquality().equals(other._ngramRange, _ngramRange)&&(identical(other.rakeParams, rakeParams) || other.rakeParams == rakeParams)&&(identical(other.yakeParams, yakeParams) || other.yakeParams == yakeParams));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,algorithm,language,maxKeywords,minScore,const DeepCollectionEquality().hash(_ngramRange),rakeParams,yakeParams);

@override
String toString() {
  return 'KeywordConfig(algorithm: $algorithm, language: $language, maxKeywords: $maxKeywords, minScore: $minScore, ngramRange: $ngramRange, rakeParams: $rakeParams, yakeParams: $yakeParams)';
}


}

/// @nodoc
abstract mixin class _$KeywordConfigCopyWith<$Res> implements $KeywordConfigCopyWith<$Res> {
  factory _$KeywordConfigCopyWith(_KeywordConfig value, $Res Function(_KeywordConfig) _then) = __$KeywordConfigCopyWithImpl;
@override @useResult
$Res call({
 KeywordAlgorithm? algorithm, String? language,@JsonKey(name: 'max_keywords') int? maxKeywords,@JsonKey(name: 'min_score') double? minScore,@JsonKey(name: 'ngram_range') List<int>? ngramRange,@JsonKey(name: 'rake_params') RakeParams? rakeParams,@JsonKey(name: 'yake_params') YakeParams? yakeParams
});


@override $RakeParamsCopyWith<$Res>? get rakeParams;@override $YakeParamsCopyWith<$Res>? get yakeParams;

}
/// @nodoc
class __$KeywordConfigCopyWithImpl<$Res>
    implements _$KeywordConfigCopyWith<$Res> {
  __$KeywordConfigCopyWithImpl(this._self, this._then);

  final _KeywordConfig _self;
  final $Res Function(_KeywordConfig) _then;

/// Create a copy of KeywordConfig
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? algorithm = freezed,Object? language = freezed,Object? maxKeywords = freezed,Object? minScore = freezed,Object? ngramRange = freezed,Object? rakeParams = freezed,Object? yakeParams = freezed,}) {
  return _then(_KeywordConfig(
algorithm: freezed == algorithm ? _self.algorithm : algorithm // ignore: cast_nullable_to_non_nullable
as KeywordAlgorithm?,language: freezed == language ? _self.language : language // ignore: cast_nullable_to_non_nullable
as String?,maxKeywords: freezed == maxKeywords ? _self.maxKeywords : maxKeywords // ignore: cast_nullable_to_non_nullable
as int?,minScore: freezed == minScore ? _self.minScore : minScore // ignore: cast_nullable_to_non_nullable
as double?,ngramRange: freezed == ngramRange ? _self._ngramRange : ngramRange // ignore: cast_nullable_to_non_nullable
as List<int>?,rakeParams: freezed == rakeParams ? _self.rakeParams : rakeParams // ignore: cast_nullable_to_non_nullable
as RakeParams?,yakeParams: freezed == yakeParams ? _self.yakeParams : yakeParams // ignore: cast_nullable_to_non_nullable
as YakeParams?,
  ));
}

/// Create a copy of KeywordConfig
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RakeParamsCopyWith<$Res>? get rakeParams {
    if (_self.rakeParams == null) {
    return null;
  }

  return $RakeParamsCopyWith<$Res>(_self.rakeParams!, (value) {
    return _then(_self.copyWith(rakeParams: value));
  });
}/// Create a copy of KeywordConfig
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$YakeParamsCopyWith<$Res>? get yakeParams {
    if (_self.yakeParams == null) {
    return null;
  }

  return $YakeParamsCopyWith<$Res>(_self.yakeParams!, (value) {
    return _then(_self.copyWith(yakeParams: value));
  });
}
}

// dart format on
