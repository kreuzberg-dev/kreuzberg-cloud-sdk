// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'collection_chunking_config.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CollectionChunkingConfig {

/// Chunker strategy: `text`, `markdown`, `yaml`, or `semantic`. Default `text`.
@JsonKey(name: 'chunker_type') String? get chunkerType;/// Maximum characters per chunk (must be greater than `overlap`). Default 1000.
@JsonKey(name: 'max_characters') int? get maxCharacters;/// Overlap between adjacent chunks in characters (must be less than.
/// `max_characters`). Default 200.
 int? get overlap;/// Cosine-similarity threshold (0.0–1.0) for the `semantic` chunker's topic.
/// boundary detection. Ignored by other chunker types.
@JsonKey(name: 'topic_threshold') double? get topicThreshold;/// Trim whitespace from chunk boundaries. Default true.
 bool? get trim;
/// Create a copy of CollectionChunkingConfig
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CollectionChunkingConfigCopyWith<CollectionChunkingConfig> get copyWith => _$CollectionChunkingConfigCopyWithImpl<CollectionChunkingConfig>(this as CollectionChunkingConfig, _$identity);

  /// Serializes this CollectionChunkingConfig to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CollectionChunkingConfig&&(identical(other.chunkerType, chunkerType) || other.chunkerType == chunkerType)&&(identical(other.maxCharacters, maxCharacters) || other.maxCharacters == maxCharacters)&&(identical(other.overlap, overlap) || other.overlap == overlap)&&(identical(other.topicThreshold, topicThreshold) || other.topicThreshold == topicThreshold)&&(identical(other.trim, trim) || other.trim == trim));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,chunkerType,maxCharacters,overlap,topicThreshold,trim);

@override
String toString() {
  return 'CollectionChunkingConfig(chunkerType: $chunkerType, maxCharacters: $maxCharacters, overlap: $overlap, topicThreshold: $topicThreshold, trim: $trim)';
}


}

/// @nodoc
abstract mixin class $CollectionChunkingConfigCopyWith<$Res>  {
  factory $CollectionChunkingConfigCopyWith(CollectionChunkingConfig value, $Res Function(CollectionChunkingConfig) _then) = _$CollectionChunkingConfigCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'chunker_type') String? chunkerType,@JsonKey(name: 'max_characters') int? maxCharacters, int? overlap,@JsonKey(name: 'topic_threshold') double? topicThreshold, bool? trim
});




}
/// @nodoc
class _$CollectionChunkingConfigCopyWithImpl<$Res>
    implements $CollectionChunkingConfigCopyWith<$Res> {
  _$CollectionChunkingConfigCopyWithImpl(this._self, this._then);

  final CollectionChunkingConfig _self;
  final $Res Function(CollectionChunkingConfig) _then;

/// Create a copy of CollectionChunkingConfig
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? chunkerType = freezed,Object? maxCharacters = freezed,Object? overlap = freezed,Object? topicThreshold = freezed,Object? trim = freezed,}) {
  return _then(_self.copyWith(
chunkerType: freezed == chunkerType ? _self.chunkerType : chunkerType // ignore: cast_nullable_to_non_nullable
as String?,maxCharacters: freezed == maxCharacters ? _self.maxCharacters : maxCharacters // ignore: cast_nullable_to_non_nullable
as int?,overlap: freezed == overlap ? _self.overlap : overlap // ignore: cast_nullable_to_non_nullable
as int?,topicThreshold: freezed == topicThreshold ? _self.topicThreshold : topicThreshold // ignore: cast_nullable_to_non_nullable
as double?,trim: freezed == trim ? _self.trim : trim // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}

}


/// Adds pattern-matching-related methods to [CollectionChunkingConfig].
extension CollectionChunkingConfigPatterns on CollectionChunkingConfig {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CollectionChunkingConfig value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CollectionChunkingConfig() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CollectionChunkingConfig value)  $default,){
final _that = this;
switch (_that) {
case _CollectionChunkingConfig():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CollectionChunkingConfig value)?  $default,){
final _that = this;
switch (_that) {
case _CollectionChunkingConfig() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'chunker_type')  String? chunkerType, @JsonKey(name: 'max_characters')  int? maxCharacters,  int? overlap, @JsonKey(name: 'topic_threshold')  double? topicThreshold,  bool? trim)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CollectionChunkingConfig() when $default != null:
return $default(_that.chunkerType,_that.maxCharacters,_that.overlap,_that.topicThreshold,_that.trim);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'chunker_type')  String? chunkerType, @JsonKey(name: 'max_characters')  int? maxCharacters,  int? overlap, @JsonKey(name: 'topic_threshold')  double? topicThreshold,  bool? trim)  $default,) {final _that = this;
switch (_that) {
case _CollectionChunkingConfig():
return $default(_that.chunkerType,_that.maxCharacters,_that.overlap,_that.topicThreshold,_that.trim);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'chunker_type')  String? chunkerType, @JsonKey(name: 'max_characters')  int? maxCharacters,  int? overlap, @JsonKey(name: 'topic_threshold')  double? topicThreshold,  bool? trim)?  $default,) {final _that = this;
switch (_that) {
case _CollectionChunkingConfig() when $default != null:
return $default(_that.chunkerType,_that.maxCharacters,_that.overlap,_that.topicThreshold,_that.trim);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CollectionChunkingConfig implements CollectionChunkingConfig {
  const _CollectionChunkingConfig({@JsonKey(name: 'chunker_type') this.chunkerType, @JsonKey(name: 'max_characters') this.maxCharacters, this.overlap, @JsonKey(name: 'topic_threshold') this.topicThreshold, this.trim});
  factory _CollectionChunkingConfig.fromJson(Map<String, dynamic> json) => _$CollectionChunkingConfigFromJson(json);

/// Chunker strategy: `text`, `markdown`, `yaml`, or `semantic`. Default `text`.
@override@JsonKey(name: 'chunker_type') final  String? chunkerType;
/// Maximum characters per chunk (must be greater than `overlap`). Default 1000.
@override@JsonKey(name: 'max_characters') final  int? maxCharacters;
/// Overlap between adjacent chunks in characters (must be less than.
/// `max_characters`). Default 200.
@override final  int? overlap;
/// Cosine-similarity threshold (0.0–1.0) for the `semantic` chunker's topic.
/// boundary detection. Ignored by other chunker types.
@override@JsonKey(name: 'topic_threshold') final  double? topicThreshold;
/// Trim whitespace from chunk boundaries. Default true.
@override final  bool? trim;

/// Create a copy of CollectionChunkingConfig
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CollectionChunkingConfigCopyWith<_CollectionChunkingConfig> get copyWith => __$CollectionChunkingConfigCopyWithImpl<_CollectionChunkingConfig>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CollectionChunkingConfigToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CollectionChunkingConfig&&(identical(other.chunkerType, chunkerType) || other.chunkerType == chunkerType)&&(identical(other.maxCharacters, maxCharacters) || other.maxCharacters == maxCharacters)&&(identical(other.overlap, overlap) || other.overlap == overlap)&&(identical(other.topicThreshold, topicThreshold) || other.topicThreshold == topicThreshold)&&(identical(other.trim, trim) || other.trim == trim));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,chunkerType,maxCharacters,overlap,topicThreshold,trim);

@override
String toString() {
  return 'CollectionChunkingConfig(chunkerType: $chunkerType, maxCharacters: $maxCharacters, overlap: $overlap, topicThreshold: $topicThreshold, trim: $trim)';
}


}

/// @nodoc
abstract mixin class _$CollectionChunkingConfigCopyWith<$Res> implements $CollectionChunkingConfigCopyWith<$Res> {
  factory _$CollectionChunkingConfigCopyWith(_CollectionChunkingConfig value, $Res Function(_CollectionChunkingConfig) _then) = __$CollectionChunkingConfigCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'chunker_type') String? chunkerType,@JsonKey(name: 'max_characters') int? maxCharacters, int? overlap,@JsonKey(name: 'topic_threshold') double? topicThreshold, bool? trim
});




}
/// @nodoc
class __$CollectionChunkingConfigCopyWithImpl<$Res>
    implements _$CollectionChunkingConfigCopyWith<$Res> {
  __$CollectionChunkingConfigCopyWithImpl(this._self, this._then);

  final _CollectionChunkingConfig _self;
  final $Res Function(_CollectionChunkingConfig) _then;

/// Create a copy of CollectionChunkingConfig
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? chunkerType = freezed,Object? maxCharacters = freezed,Object? overlap = freezed,Object? topicThreshold = freezed,Object? trim = freezed,}) {
  return _then(_CollectionChunkingConfig(
chunkerType: freezed == chunkerType ? _self.chunkerType : chunkerType // ignore: cast_nullable_to_non_nullable
as String?,maxCharacters: freezed == maxCharacters ? _self.maxCharacters : maxCharacters // ignore: cast_nullable_to_non_nullable
as int?,overlap: freezed == overlap ? _self.overlap : overlap // ignore: cast_nullable_to_non_nullable
as int?,topicThreshold: freezed == topicThreshold ? _self.topicThreshold : topicThreshold // ignore: cast_nullable_to_non_nullable
as double?,trim: freezed == trim ? _self.trim : trim // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}


}

// dart format on
