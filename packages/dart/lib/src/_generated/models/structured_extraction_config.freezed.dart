// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'structured_extraction_config.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$StructuredExtractionConfig {

/// LLM provider + model configuration.
 LlmConfig get llm;/// JSON Schema (draft-07) the structured output must conform to.
 dynamic get schema;/// Custom Jinja2 prompt template. When omitted, the xberg default is used.
 String? get prompt;/// Optional human-readable schema description supplied to the LLM.
@JsonKey(name: 'schema_description') String? get schemaDescription;/// Schema name passed to the LLM's structured-output mode. Defaults to "extraction".
@JsonKey(name: 'schema_name') String? get schemaName;/// Strict mode — output must match the schema exactly (provider-dependent).
 bool? get strict;
/// Create a copy of StructuredExtractionConfig
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StructuredExtractionConfigCopyWith<StructuredExtractionConfig> get copyWith => _$StructuredExtractionConfigCopyWithImpl<StructuredExtractionConfig>(this as StructuredExtractionConfig, _$identity);

  /// Serializes this StructuredExtractionConfig to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StructuredExtractionConfig&&(identical(other.llm, llm) || other.llm == llm)&&const DeepCollectionEquality().equals(other.schema, schema)&&(identical(other.prompt, prompt) || other.prompt == prompt)&&(identical(other.schemaDescription, schemaDescription) || other.schemaDescription == schemaDescription)&&(identical(other.schemaName, schemaName) || other.schemaName == schemaName)&&(identical(other.strict, strict) || other.strict == strict));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,llm,const DeepCollectionEquality().hash(schema),prompt,schemaDescription,schemaName,strict);

@override
String toString() {
  return 'StructuredExtractionConfig(llm: $llm, schema: $schema, prompt: $prompt, schemaDescription: $schemaDescription, schemaName: $schemaName, strict: $strict)';
}


}

/// @nodoc
abstract mixin class $StructuredExtractionConfigCopyWith<$Res>  {
  factory $StructuredExtractionConfigCopyWith(StructuredExtractionConfig value, $Res Function(StructuredExtractionConfig) _then) = _$StructuredExtractionConfigCopyWithImpl;
@useResult
$Res call({
 LlmConfig llm, dynamic schema, String? prompt,@JsonKey(name: 'schema_description') String? schemaDescription,@JsonKey(name: 'schema_name') String? schemaName, bool? strict
});


$LlmConfigCopyWith<$Res> get llm;

}
/// @nodoc
class _$StructuredExtractionConfigCopyWithImpl<$Res>
    implements $StructuredExtractionConfigCopyWith<$Res> {
  _$StructuredExtractionConfigCopyWithImpl(this._self, this._then);

  final StructuredExtractionConfig _self;
  final $Res Function(StructuredExtractionConfig) _then;

/// Create a copy of StructuredExtractionConfig
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? llm = null,Object? schema = freezed,Object? prompt = freezed,Object? schemaDescription = freezed,Object? schemaName = freezed,Object? strict = freezed,}) {
  return _then(_self.copyWith(
llm: null == llm ? _self.llm : llm // ignore: cast_nullable_to_non_nullable
as LlmConfig,schema: freezed == schema ? _self.schema : schema // ignore: cast_nullable_to_non_nullable
as dynamic,prompt: freezed == prompt ? _self.prompt : prompt // ignore: cast_nullable_to_non_nullable
as String?,schemaDescription: freezed == schemaDescription ? _self.schemaDescription : schemaDescription // ignore: cast_nullable_to_non_nullable
as String?,schemaName: freezed == schemaName ? _self.schemaName : schemaName // ignore: cast_nullable_to_non_nullable
as String?,strict: freezed == strict ? _self.strict : strict // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}
/// Create a copy of StructuredExtractionConfig
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LlmConfigCopyWith<$Res> get llm {

  return $LlmConfigCopyWith<$Res>(_self.llm, (value) {
    return _then(_self.copyWith(llm: value));
  });
}
}


/// Adds pattern-matching-related methods to [StructuredExtractionConfig].
extension StructuredExtractionConfigPatterns on StructuredExtractionConfig {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _StructuredExtractionConfig value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _StructuredExtractionConfig() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _StructuredExtractionConfig value)  $default,){
final _that = this;
switch (_that) {
case _StructuredExtractionConfig():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _StructuredExtractionConfig value)?  $default,){
final _that = this;
switch (_that) {
case _StructuredExtractionConfig() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( LlmConfig llm,  dynamic schema,  String? prompt, @JsonKey(name: 'schema_description')  String? schemaDescription, @JsonKey(name: 'schema_name')  String? schemaName,  bool? strict)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _StructuredExtractionConfig() when $default != null:
return $default(_that.llm,_that.schema,_that.prompt,_that.schemaDescription,_that.schemaName,_that.strict);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( LlmConfig llm,  dynamic schema,  String? prompt, @JsonKey(name: 'schema_description')  String? schemaDescription, @JsonKey(name: 'schema_name')  String? schemaName,  bool? strict)  $default,) {final _that = this;
switch (_that) {
case _StructuredExtractionConfig():
return $default(_that.llm,_that.schema,_that.prompt,_that.schemaDescription,_that.schemaName,_that.strict);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( LlmConfig llm,  dynamic schema,  String? prompt, @JsonKey(name: 'schema_description')  String? schemaDescription, @JsonKey(name: 'schema_name')  String? schemaName,  bool? strict)?  $default,) {final _that = this;
switch (_that) {
case _StructuredExtractionConfig() when $default != null:
return $default(_that.llm,_that.schema,_that.prompt,_that.schemaDescription,_that.schemaName,_that.strict);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _StructuredExtractionConfig implements StructuredExtractionConfig {
  const _StructuredExtractionConfig({required this.llm, required this.schema, this.prompt, @JsonKey(name: 'schema_description') this.schemaDescription, @JsonKey(name: 'schema_name') this.schemaName, this.strict});
  factory _StructuredExtractionConfig.fromJson(Map<String, dynamic> json) => _$StructuredExtractionConfigFromJson(json);

/// LLM provider + model configuration.
@override final  LlmConfig llm;
/// JSON Schema (draft-07) the structured output must conform to.
@override final  dynamic schema;
/// Custom Jinja2 prompt template. When omitted, the xberg default is used.
@override final  String? prompt;
/// Optional human-readable schema description supplied to the LLM.
@override@JsonKey(name: 'schema_description') final  String? schemaDescription;
/// Schema name passed to the LLM's structured-output mode. Defaults to "extraction".
@override@JsonKey(name: 'schema_name') final  String? schemaName;
/// Strict mode — output must match the schema exactly (provider-dependent).
@override final  bool? strict;

/// Create a copy of StructuredExtractionConfig
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StructuredExtractionConfigCopyWith<_StructuredExtractionConfig> get copyWith => __$StructuredExtractionConfigCopyWithImpl<_StructuredExtractionConfig>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$StructuredExtractionConfigToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _StructuredExtractionConfig&&(identical(other.llm, llm) || other.llm == llm)&&const DeepCollectionEquality().equals(other.schema, schema)&&(identical(other.prompt, prompt) || other.prompt == prompt)&&(identical(other.schemaDescription, schemaDescription) || other.schemaDescription == schemaDescription)&&(identical(other.schemaName, schemaName) || other.schemaName == schemaName)&&(identical(other.strict, strict) || other.strict == strict));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,llm,const DeepCollectionEquality().hash(schema),prompt,schemaDescription,schemaName,strict);

@override
String toString() {
  return 'StructuredExtractionConfig(llm: $llm, schema: $schema, prompt: $prompt, schemaDescription: $schemaDescription, schemaName: $schemaName, strict: $strict)';
}


}

/// @nodoc
abstract mixin class _$StructuredExtractionConfigCopyWith<$Res> implements $StructuredExtractionConfigCopyWith<$Res> {
  factory _$StructuredExtractionConfigCopyWith(_StructuredExtractionConfig value, $Res Function(_StructuredExtractionConfig) _then) = __$StructuredExtractionConfigCopyWithImpl;
@override @useResult
$Res call({
 LlmConfig llm, dynamic schema, String? prompt,@JsonKey(name: 'schema_description') String? schemaDescription,@JsonKey(name: 'schema_name') String? schemaName, bool? strict
});


@override $LlmConfigCopyWith<$Res> get llm;

}
/// @nodoc
class __$StructuredExtractionConfigCopyWithImpl<$Res>
    implements _$StructuredExtractionConfigCopyWith<$Res> {
  __$StructuredExtractionConfigCopyWithImpl(this._self, this._then);

  final _StructuredExtractionConfig _self;
  final $Res Function(_StructuredExtractionConfig) _then;

/// Create a copy of StructuredExtractionConfig
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? llm = null,Object? schema = freezed,Object? prompt = freezed,Object? schemaDescription = freezed,Object? schemaName = freezed,Object? strict = freezed,}) {
  return _then(_StructuredExtractionConfig(
llm: null == llm ? _self.llm : llm // ignore: cast_nullable_to_non_nullable
as LlmConfig,schema: freezed == schema ? _self.schema : schema // ignore: cast_nullable_to_non_nullable
as dynamic,prompt: freezed == prompt ? _self.prompt : prompt // ignore: cast_nullable_to_non_nullable
as String?,schemaDescription: freezed == schemaDescription ? _self.schemaDescription : schemaDescription // ignore: cast_nullable_to_non_nullable
as String?,schemaName: freezed == schemaName ? _self.schemaName : schemaName // ignore: cast_nullable_to_non_nullable
as String?,strict: freezed == strict ? _self.strict : strict // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}

/// Create a copy of StructuredExtractionConfig
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LlmConfigCopyWith<$Res> get llm {

  return $LlmConfigCopyWith<$Res>(_self.llm, (value) {
    return _then(_self.copyWith(llm: value));
  });
}
}

// dart format on
