// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'llm_config.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$LlmConfig {

/// liter-llm routing identifier, e.g. "openai/gpt-4o-mini".
 String get model;/// API key for the provider. Mutually exclusive with `use_managed = true`.
/// Treated as a secret — never logged.
@JsonKey(name: 'api_key') String? get apiKey;/// Override the provider base URL.
@JsonKey(name: 'base_url') String? get baseUrl;/// Max retry attempts.
@JsonKey(name: 'max_retries') int? get maxRetries;/// Maximum tokens to generate.
@JsonKey(name: 'max_tokens') int? get maxTokens;/// Sampling temperature.
 double? get temperature;/// Request timeout in seconds.
@JsonKey(name: 'timeout_secs') int? get timeoutSecs;/// When true, the worker substitutes the Xberg-managed provider key.
/// from the worker environment (resolved by provider prefix of `model`).
/// Requires the project to have `llm_managed_keys_enabled` set.
@JsonKey(name: 'use_managed') bool? get useManaged;
/// Create a copy of LlmConfig
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LlmConfigCopyWith<LlmConfig> get copyWith => _$LlmConfigCopyWithImpl<LlmConfig>(this as LlmConfig, _$identity);

  /// Serializes this LlmConfig to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LlmConfig&&(identical(other.model, model) || other.model == model)&&(identical(other.apiKey, apiKey) || other.apiKey == apiKey)&&(identical(other.baseUrl, baseUrl) || other.baseUrl == baseUrl)&&(identical(other.maxRetries, maxRetries) || other.maxRetries == maxRetries)&&(identical(other.maxTokens, maxTokens) || other.maxTokens == maxTokens)&&(identical(other.temperature, temperature) || other.temperature == temperature)&&(identical(other.timeoutSecs, timeoutSecs) || other.timeoutSecs == timeoutSecs)&&(identical(other.useManaged, useManaged) || other.useManaged == useManaged));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,model,apiKey,baseUrl,maxRetries,maxTokens,temperature,timeoutSecs,useManaged);

@override
String toString() {
  return 'LlmConfig(model: $model, apiKey: $apiKey, baseUrl: $baseUrl, maxRetries: $maxRetries, maxTokens: $maxTokens, temperature: $temperature, timeoutSecs: $timeoutSecs, useManaged: $useManaged)';
}


}

/// @nodoc
abstract mixin class $LlmConfigCopyWith<$Res>  {
  factory $LlmConfigCopyWith(LlmConfig value, $Res Function(LlmConfig) _then) = _$LlmConfigCopyWithImpl;
@useResult
$Res call({
 String model,@JsonKey(name: 'api_key') String? apiKey,@JsonKey(name: 'base_url') String? baseUrl,@JsonKey(name: 'max_retries') int? maxRetries,@JsonKey(name: 'max_tokens') int? maxTokens, double? temperature,@JsonKey(name: 'timeout_secs') int? timeoutSecs,@JsonKey(name: 'use_managed') bool? useManaged
});




}
/// @nodoc
class _$LlmConfigCopyWithImpl<$Res>
    implements $LlmConfigCopyWith<$Res> {
  _$LlmConfigCopyWithImpl(this._self, this._then);

  final LlmConfig _self;
  final $Res Function(LlmConfig) _then;

/// Create a copy of LlmConfig
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? model = null,Object? apiKey = freezed,Object? baseUrl = freezed,Object? maxRetries = freezed,Object? maxTokens = freezed,Object? temperature = freezed,Object? timeoutSecs = freezed,Object? useManaged = freezed,}) {
  return _then(_self.copyWith(
model: null == model ? _self.model : model // ignore: cast_nullable_to_non_nullable
as String,apiKey: freezed == apiKey ? _self.apiKey : apiKey // ignore: cast_nullable_to_non_nullable
as String?,baseUrl: freezed == baseUrl ? _self.baseUrl : baseUrl // ignore: cast_nullable_to_non_nullable
as String?,maxRetries: freezed == maxRetries ? _self.maxRetries : maxRetries // ignore: cast_nullable_to_non_nullable
as int?,maxTokens: freezed == maxTokens ? _self.maxTokens : maxTokens // ignore: cast_nullable_to_non_nullable
as int?,temperature: freezed == temperature ? _self.temperature : temperature // ignore: cast_nullable_to_non_nullable
as double?,timeoutSecs: freezed == timeoutSecs ? _self.timeoutSecs : timeoutSecs // ignore: cast_nullable_to_non_nullable
as int?,useManaged: freezed == useManaged ? _self.useManaged : useManaged // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}

}


/// Adds pattern-matching-related methods to [LlmConfig].
extension LlmConfigPatterns on LlmConfig {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LlmConfig value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LlmConfig() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LlmConfig value)  $default,){
final _that = this;
switch (_that) {
case _LlmConfig():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LlmConfig value)?  $default,){
final _that = this;
switch (_that) {
case _LlmConfig() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String model, @JsonKey(name: 'api_key')  String? apiKey, @JsonKey(name: 'base_url')  String? baseUrl, @JsonKey(name: 'max_retries')  int? maxRetries, @JsonKey(name: 'max_tokens')  int? maxTokens,  double? temperature, @JsonKey(name: 'timeout_secs')  int? timeoutSecs, @JsonKey(name: 'use_managed')  bool? useManaged)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LlmConfig() when $default != null:
return $default(_that.model,_that.apiKey,_that.baseUrl,_that.maxRetries,_that.maxTokens,_that.temperature,_that.timeoutSecs,_that.useManaged);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String model, @JsonKey(name: 'api_key')  String? apiKey, @JsonKey(name: 'base_url')  String? baseUrl, @JsonKey(name: 'max_retries')  int? maxRetries, @JsonKey(name: 'max_tokens')  int? maxTokens,  double? temperature, @JsonKey(name: 'timeout_secs')  int? timeoutSecs, @JsonKey(name: 'use_managed')  bool? useManaged)  $default,) {final _that = this;
switch (_that) {
case _LlmConfig():
return $default(_that.model,_that.apiKey,_that.baseUrl,_that.maxRetries,_that.maxTokens,_that.temperature,_that.timeoutSecs,_that.useManaged);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String model, @JsonKey(name: 'api_key')  String? apiKey, @JsonKey(name: 'base_url')  String? baseUrl, @JsonKey(name: 'max_retries')  int? maxRetries, @JsonKey(name: 'max_tokens')  int? maxTokens,  double? temperature, @JsonKey(name: 'timeout_secs')  int? timeoutSecs, @JsonKey(name: 'use_managed')  bool? useManaged)?  $default,) {final _that = this;
switch (_that) {
case _LlmConfig() when $default != null:
return $default(_that.model,_that.apiKey,_that.baseUrl,_that.maxRetries,_that.maxTokens,_that.temperature,_that.timeoutSecs,_that.useManaged);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _LlmConfig implements LlmConfig {
  const _LlmConfig({required this.model, @JsonKey(name: 'api_key') this.apiKey, @JsonKey(name: 'base_url') this.baseUrl, @JsonKey(name: 'max_retries') this.maxRetries, @JsonKey(name: 'max_tokens') this.maxTokens, this.temperature, @JsonKey(name: 'timeout_secs') this.timeoutSecs, @JsonKey(name: 'use_managed') this.useManaged});
  factory _LlmConfig.fromJson(Map<String, dynamic> json) => _$LlmConfigFromJson(json);

/// liter-llm routing identifier, e.g. "openai/gpt-4o-mini".
@override final  String model;
/// API key for the provider. Mutually exclusive with `use_managed = true`.
/// Treated as a secret — never logged.
@override@JsonKey(name: 'api_key') final  String? apiKey;
/// Override the provider base URL.
@override@JsonKey(name: 'base_url') final  String? baseUrl;
/// Max retry attempts.
@override@JsonKey(name: 'max_retries') final  int? maxRetries;
/// Maximum tokens to generate.
@override@JsonKey(name: 'max_tokens') final  int? maxTokens;
/// Sampling temperature.
@override final  double? temperature;
/// Request timeout in seconds.
@override@JsonKey(name: 'timeout_secs') final  int? timeoutSecs;
/// When true, the worker substitutes the Xberg-managed provider key.
/// from the worker environment (resolved by provider prefix of `model`).
/// Requires the project to have `llm_managed_keys_enabled` set.
@override@JsonKey(name: 'use_managed') final  bool? useManaged;

/// Create a copy of LlmConfig
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LlmConfigCopyWith<_LlmConfig> get copyWith => __$LlmConfigCopyWithImpl<_LlmConfig>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$LlmConfigToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LlmConfig&&(identical(other.model, model) || other.model == model)&&(identical(other.apiKey, apiKey) || other.apiKey == apiKey)&&(identical(other.baseUrl, baseUrl) || other.baseUrl == baseUrl)&&(identical(other.maxRetries, maxRetries) || other.maxRetries == maxRetries)&&(identical(other.maxTokens, maxTokens) || other.maxTokens == maxTokens)&&(identical(other.temperature, temperature) || other.temperature == temperature)&&(identical(other.timeoutSecs, timeoutSecs) || other.timeoutSecs == timeoutSecs)&&(identical(other.useManaged, useManaged) || other.useManaged == useManaged));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,model,apiKey,baseUrl,maxRetries,maxTokens,temperature,timeoutSecs,useManaged);

@override
String toString() {
  return 'LlmConfig(model: $model, apiKey: $apiKey, baseUrl: $baseUrl, maxRetries: $maxRetries, maxTokens: $maxTokens, temperature: $temperature, timeoutSecs: $timeoutSecs, useManaged: $useManaged)';
}


}

/// @nodoc
abstract mixin class _$LlmConfigCopyWith<$Res> implements $LlmConfigCopyWith<$Res> {
  factory _$LlmConfigCopyWith(_LlmConfig value, $Res Function(_LlmConfig) _then) = __$LlmConfigCopyWithImpl;
@override @useResult
$Res call({
 String model,@JsonKey(name: 'api_key') String? apiKey,@JsonKey(name: 'base_url') String? baseUrl,@JsonKey(name: 'max_retries') int? maxRetries,@JsonKey(name: 'max_tokens') int? maxTokens, double? temperature,@JsonKey(name: 'timeout_secs') int? timeoutSecs,@JsonKey(name: 'use_managed') bool? useManaged
});




}
/// @nodoc
class __$LlmConfigCopyWithImpl<$Res>
    implements _$LlmConfigCopyWith<$Res> {
  __$LlmConfigCopyWithImpl(this._self, this._then);

  final _LlmConfig _self;
  final $Res Function(_LlmConfig) _then;

/// Create a copy of LlmConfig
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? model = null,Object? apiKey = freezed,Object? baseUrl = freezed,Object? maxRetries = freezed,Object? maxTokens = freezed,Object? temperature = freezed,Object? timeoutSecs = freezed,Object? useManaged = freezed,}) {
  return _then(_LlmConfig(
model: null == model ? _self.model : model // ignore: cast_nullable_to_non_nullable
as String,apiKey: freezed == apiKey ? _self.apiKey : apiKey // ignore: cast_nullable_to_non_nullable
as String?,baseUrl: freezed == baseUrl ? _self.baseUrl : baseUrl // ignore: cast_nullable_to_non_nullable
as String?,maxRetries: freezed == maxRetries ? _self.maxRetries : maxRetries // ignore: cast_nullable_to_non_nullable
as int?,maxTokens: freezed == maxTokens ? _self.maxTokens : maxTokens // ignore: cast_nullable_to_non_nullable
as int?,temperature: freezed == temperature ? _self.temperature : temperature // ignore: cast_nullable_to_non_nullable
as double?,timeoutSecs: freezed == timeoutSecs ? _self.timeoutSecs : timeoutSecs // ignore: cast_nullable_to_non_nullable
as int?,useManaged: freezed == useManaged ? _self.useManaged : useManaged // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}


}

// dart format on
