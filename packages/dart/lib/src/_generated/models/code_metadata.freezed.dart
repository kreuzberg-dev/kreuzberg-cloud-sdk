// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'code_metadata.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CodeMetadata {

/// Structural code chunks (function/class/module boundaries).
 List<CodeChunkInfo> get chunks;
/// Create a copy of CodeMetadata
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CodeMetadataCopyWith<CodeMetadata> get copyWith => _$CodeMetadataCopyWithImpl<CodeMetadata>(this as CodeMetadata, _$identity);

  /// Serializes this CodeMetadata to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CodeMetadata&&const DeepCollectionEquality().equals(other.chunks, chunks));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(chunks));

@override
String toString() {
  return 'CodeMetadata(chunks: $chunks)';
}


}

/// @nodoc
abstract mixin class $CodeMetadataCopyWith<$Res>  {
  factory $CodeMetadataCopyWith(CodeMetadata value, $Res Function(CodeMetadata) _then) = _$CodeMetadataCopyWithImpl;
@useResult
$Res call({
 List<CodeChunkInfo> chunks
});




}
/// @nodoc
class _$CodeMetadataCopyWithImpl<$Res>
    implements $CodeMetadataCopyWith<$Res> {
  _$CodeMetadataCopyWithImpl(this._self, this._then);

  final CodeMetadata _self;
  final $Res Function(CodeMetadata) _then;

/// Create a copy of CodeMetadata
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? chunks = null,}) {
  return _then(_self.copyWith(
chunks: null == chunks ? _self.chunks : chunks // ignore: cast_nullable_to_non_nullable
as List<CodeChunkInfo>,
  ));
}

}


/// Adds pattern-matching-related methods to [CodeMetadata].
extension CodeMetadataPatterns on CodeMetadata {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CodeMetadata value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CodeMetadata() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CodeMetadata value)  $default,){
final _that = this;
switch (_that) {
case _CodeMetadata():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CodeMetadata value)?  $default,){
final _that = this;
switch (_that) {
case _CodeMetadata() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<CodeChunkInfo> chunks)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CodeMetadata() when $default != null:
return $default(_that.chunks);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<CodeChunkInfo> chunks)  $default,) {final _that = this;
switch (_that) {
case _CodeMetadata():
return $default(_that.chunks);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<CodeChunkInfo> chunks)?  $default,) {final _that = this;
switch (_that) {
case _CodeMetadata() when $default != null:
return $default(_that.chunks);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CodeMetadata implements CodeMetadata {
  const _CodeMetadata({required final  List<CodeChunkInfo> chunks}): _chunks = chunks;
  factory _CodeMetadata.fromJson(Map<String, dynamic> json) => _$CodeMetadataFromJson(json);

/// Structural code chunks (function/class/module boundaries).
 final  List<CodeChunkInfo> _chunks;
/// Structural code chunks (function/class/module boundaries).
@override List<CodeChunkInfo> get chunks {
  if (_chunks is EqualUnmodifiableListView) return _chunks;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_chunks);
}


/// Create a copy of CodeMetadata
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CodeMetadataCopyWith<_CodeMetadata> get copyWith => __$CodeMetadataCopyWithImpl<_CodeMetadata>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CodeMetadataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CodeMetadata&&const DeepCollectionEquality().equals(other._chunks, _chunks));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_chunks));

@override
String toString() {
  return 'CodeMetadata(chunks: $chunks)';
}


}

/// @nodoc
abstract mixin class _$CodeMetadataCopyWith<$Res> implements $CodeMetadataCopyWith<$Res> {
  factory _$CodeMetadataCopyWith(_CodeMetadata value, $Res Function(_CodeMetadata) _then) = __$CodeMetadataCopyWithImpl;
@override @useResult
$Res call({
 List<CodeChunkInfo> chunks
});




}
/// @nodoc
class __$CodeMetadataCopyWithImpl<$Res>
    implements _$CodeMetadataCopyWith<$Res> {
  __$CodeMetadataCopyWithImpl(this._self, this._then);

  final _CodeMetadata _self;
  final $Res Function(_CodeMetadata) _then;

/// Create a copy of CodeMetadata
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? chunks = null,}) {
  return _then(_CodeMetadata(
chunks: null == chunks ? _self._chunks : chunks // ignore: cast_nullable_to_non_nullable
as List<CodeChunkInfo>,
  ));
}


}

// dart format on
