// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'reranker_spec.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
RerankerSpec _$RerankerSpecFromJson(
  Map<String, dynamic> json
) {
        switch (json['type']) {
                  case 'preset':
          return RerankerSpecPreset.fromJson(
            json
          );
                case 'llm':
          return RerankerSpecLlm.fromJson(
            json
          );

          default:
            throw CheckedFromJsonException(
  json,
  'type',
  'RerankerSpec',
  'Invalid union type "${json['type']}"!'
);
        }

}

/// @nodoc
mixin _$RerankerSpec {



  /// Serializes this RerankerSpec to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RerankerSpec);
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'RerankerSpec()';
}


}

/// @nodoc
class $RerankerSpecCopyWith<$Res>  {
$RerankerSpecCopyWith(RerankerSpec _, $Res Function(RerankerSpec) __);
}


/// Adds pattern-matching-related methods to [RerankerSpec].
extension RerankerSpecPatterns on RerankerSpec {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( RerankerSpecPreset value)?  preset,TResult Function( RerankerSpecLlm value)?  llm,required TResult orElse(),}){
final _that = this;
switch (_that) {
case RerankerSpecPreset() when preset != null:
return preset(_that);case RerankerSpecLlm() when llm != null:
return llm(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( RerankerSpecPreset value)  preset,required TResult Function( RerankerSpecLlm value)  llm,}){
final _that = this;
switch (_that) {
case RerankerSpecPreset():
return preset(_that);case RerankerSpecLlm():
return llm(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( RerankerSpecPreset value)?  preset,TResult? Function( RerankerSpecLlm value)?  llm,}){
final _that = this;
switch (_that) {
case RerankerSpecPreset() when preset != null:
return preset(_that);case RerankerSpecLlm() when llm != null:
return llm(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String name)?  preset,TResult Function( String? model)?  llm,required TResult orElse(),}) {final _that = this;
switch (_that) {
case RerankerSpecPreset() when preset != null:
return preset(_that.name);case RerankerSpecLlm() when llm != null:
return llm(_that.model);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String name)  preset,required TResult Function( String? model)  llm,}) {final _that = this;
switch (_that) {
case RerankerSpecPreset():
return preset(_that.name);case RerankerSpecLlm():
return llm(_that.model);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String name)?  preset,TResult? Function( String? model)?  llm,}) {final _that = this;
switch (_that) {
case RerankerSpecPreset() when preset != null:
return preset(_that.name);case RerankerSpecLlm() when llm != null:
return llm(_that.model);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class RerankerSpecPreset implements RerankerSpec {
  const RerankerSpecPreset({required this.name, final  String? $type}): $type = $type ?? 'preset';
  factory RerankerSpecPreset.fromJson(Map<String, dynamic> json) => _$RerankerSpecPresetFromJson(json);

/// Preset name: `fast | balanced | quality | multilingual`.
 final  String name;

@JsonKey(name: 'type')
final String $type;


/// Create a copy of RerankerSpec
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RerankerSpecPresetCopyWith<RerankerSpecPreset> get copyWith => _$RerankerSpecPresetCopyWithImpl<RerankerSpecPreset>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RerankerSpecPresetToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RerankerSpecPreset&&(identical(other.name, name) || other.name == name));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name);

@override
String toString() {
  return 'RerankerSpec.preset(name: $name)';
}


}

/// @nodoc
abstract mixin class $RerankerSpecPresetCopyWith<$Res> implements $RerankerSpecCopyWith<$Res> {
  factory $RerankerSpecPresetCopyWith(RerankerSpecPreset value, $Res Function(RerankerSpecPreset) _then) = _$RerankerSpecPresetCopyWithImpl;
@useResult
$Res call({
 String name
});




}
/// @nodoc
class _$RerankerSpecPresetCopyWithImpl<$Res>
    implements $RerankerSpecPresetCopyWith<$Res> {
  _$RerankerSpecPresetCopyWithImpl(this._self, this._then);

  final RerankerSpecPreset _self;
  final $Res Function(RerankerSpecPreset) _then;

/// Create a copy of RerankerSpec
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? name = null,}) {
  return _then(RerankerSpecPreset(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
@JsonSerializable()

class RerankerSpecLlm implements RerankerSpec {
  const RerankerSpecLlm({this.model, final  String? $type}): $type = $type ?? 'llm';
  factory RerankerSpecLlm.fromJson(Map<String, dynamic> json) => _$RerankerSpecLlmFromJson(json);

/// Optional model override. When omitted, the platform default is used.
 final  String? model;

@JsonKey(name: 'type')
final String $type;


/// Create a copy of RerankerSpec
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RerankerSpecLlmCopyWith<RerankerSpecLlm> get copyWith => _$RerankerSpecLlmCopyWithImpl<RerankerSpecLlm>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RerankerSpecLlmToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RerankerSpecLlm&&(identical(other.model, model) || other.model == model));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,model);

@override
String toString() {
  return 'RerankerSpec.llm(model: $model)';
}


}

/// @nodoc
abstract mixin class $RerankerSpecLlmCopyWith<$Res> implements $RerankerSpecCopyWith<$Res> {
  factory $RerankerSpecLlmCopyWith(RerankerSpecLlm value, $Res Function(RerankerSpecLlm) _then) = _$RerankerSpecLlmCopyWithImpl;
@useResult
$Res call({
 String? model
});




}
/// @nodoc
class _$RerankerSpecLlmCopyWithImpl<$Res>
    implements $RerankerSpecLlmCopyWith<$Res> {
  _$RerankerSpecLlmCopyWithImpl(this._self, this._then);

  final RerankerSpecLlm _self;
  final $Res Function(RerankerSpecLlm) _then;

/// Create a copy of RerankerSpec
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? model = freezed,}) {
  return _then(RerankerSpecLlm(
model: freezed == model ? _self.model : model // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
