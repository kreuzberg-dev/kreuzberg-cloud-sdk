// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'extraction_options.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ExtractionOptions {

/// Free-form context map merged into the preset's `context_template`.
/// (Mustache `{{key}}`) before the system prompt is sent to the model.
/// Ignored when `preset` is not set.
 Map<String, String>? get context;/// Xberg extraction configuration (optional, null = defaults).
@JsonKey(name: 'extraction_config') ExtractionConfig? get extractionConfig;/// Preset identifier (matches `crates/presets/library/<id>/v1.json`).
/// When set, the worker resolves the preset for structured-extraction.
/// configuration. Mutually compatible with `extraction_config`.
 String? get preset;/// Saved preset ID (project-scoped user-created preset).
/// When set, the preset's schema, system_prompt, context_template,.
/// preferred_call_mode, and emit_citations are merged into extraction_config.
/// Mutually exclusive with `preset` and raw `extraction_config.structured_extraction.schema`.
@JsonKey(name: 'saved_preset_id') String? get savedPresetId;/// When set to true and the document is a PDF, enable multi-document.
/// boundary detection and fan-out orchestration.
@JsonKey(name: 'split_documents') bool? get splitDocuments;
/// Create a copy of ExtractionOptions
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ExtractionOptionsCopyWith<ExtractionOptions> get copyWith => _$ExtractionOptionsCopyWithImpl<ExtractionOptions>(this as ExtractionOptions, _$identity);

  /// Serializes this ExtractionOptions to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ExtractionOptions&&const DeepCollectionEquality().equals(other.context, context)&&(identical(other.extractionConfig, extractionConfig) || other.extractionConfig == extractionConfig)&&(identical(other.preset, preset) || other.preset == preset)&&(identical(other.savedPresetId, savedPresetId) || other.savedPresetId == savedPresetId)&&(identical(other.splitDocuments, splitDocuments) || other.splitDocuments == splitDocuments));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(context),extractionConfig,preset,savedPresetId,splitDocuments);

@override
String toString() {
  return 'ExtractionOptions(context: $context, extractionConfig: $extractionConfig, preset: $preset, savedPresetId: $savedPresetId, splitDocuments: $splitDocuments)';
}


}

/// @nodoc
abstract mixin class $ExtractionOptionsCopyWith<$Res>  {
  factory $ExtractionOptionsCopyWith(ExtractionOptions value, $Res Function(ExtractionOptions) _then) = _$ExtractionOptionsCopyWithImpl;
@useResult
$Res call({
 Map<String, String>? context,@JsonKey(name: 'extraction_config') ExtractionConfig? extractionConfig, String? preset,@JsonKey(name: 'saved_preset_id') String? savedPresetId,@JsonKey(name: 'split_documents') bool? splitDocuments
});


$ExtractionConfigCopyWith<$Res>? get extractionConfig;

}
/// @nodoc
class _$ExtractionOptionsCopyWithImpl<$Res>
    implements $ExtractionOptionsCopyWith<$Res> {
  _$ExtractionOptionsCopyWithImpl(this._self, this._then);

  final ExtractionOptions _self;
  final $Res Function(ExtractionOptions) _then;

/// Create a copy of ExtractionOptions
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? context = freezed,Object? extractionConfig = freezed,Object? preset = freezed,Object? savedPresetId = freezed,Object? splitDocuments = freezed,}) {
  return _then(_self.copyWith(
context: freezed == context ? _self.context : context // ignore: cast_nullable_to_non_nullable
as Map<String, String>?,extractionConfig: freezed == extractionConfig ? _self.extractionConfig : extractionConfig // ignore: cast_nullable_to_non_nullable
as ExtractionConfig?,preset: freezed == preset ? _self.preset : preset // ignore: cast_nullable_to_non_nullable
as String?,savedPresetId: freezed == savedPresetId ? _self.savedPresetId : savedPresetId // ignore: cast_nullable_to_non_nullable
as String?,splitDocuments: freezed == splitDocuments ? _self.splitDocuments : splitDocuments // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}
/// Create a copy of ExtractionOptions
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ExtractionConfigCopyWith<$Res>? get extractionConfig {
    if (_self.extractionConfig == null) {
    return null;
  }

  return $ExtractionConfigCopyWith<$Res>(_self.extractionConfig!, (value) {
    return _then(_self.copyWith(extractionConfig: value));
  });
}
}


/// Adds pattern-matching-related methods to [ExtractionOptions].
extension ExtractionOptionsPatterns on ExtractionOptions {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ExtractionOptions value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ExtractionOptions() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ExtractionOptions value)  $default,){
final _that = this;
switch (_that) {
case _ExtractionOptions():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ExtractionOptions value)?  $default,){
final _that = this;
switch (_that) {
case _ExtractionOptions() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( Map<String, String>? context, @JsonKey(name: 'extraction_config')  ExtractionConfig? extractionConfig,  String? preset, @JsonKey(name: 'saved_preset_id')  String? savedPresetId, @JsonKey(name: 'split_documents')  bool? splitDocuments)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ExtractionOptions() when $default != null:
return $default(_that.context,_that.extractionConfig,_that.preset,_that.savedPresetId,_that.splitDocuments);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( Map<String, String>? context, @JsonKey(name: 'extraction_config')  ExtractionConfig? extractionConfig,  String? preset, @JsonKey(name: 'saved_preset_id')  String? savedPresetId, @JsonKey(name: 'split_documents')  bool? splitDocuments)  $default,) {final _that = this;
switch (_that) {
case _ExtractionOptions():
return $default(_that.context,_that.extractionConfig,_that.preset,_that.savedPresetId,_that.splitDocuments);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( Map<String, String>? context, @JsonKey(name: 'extraction_config')  ExtractionConfig? extractionConfig,  String? preset, @JsonKey(name: 'saved_preset_id')  String? savedPresetId, @JsonKey(name: 'split_documents')  bool? splitDocuments)?  $default,) {final _that = this;
switch (_that) {
case _ExtractionOptions() when $default != null:
return $default(_that.context,_that.extractionConfig,_that.preset,_that.savedPresetId,_that.splitDocuments);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ExtractionOptions implements ExtractionOptions {
  const _ExtractionOptions({final  Map<String, String>? context, @JsonKey(name: 'extraction_config') this.extractionConfig, this.preset, @JsonKey(name: 'saved_preset_id') this.savedPresetId, @JsonKey(name: 'split_documents') this.splitDocuments}): _context = context;
  factory _ExtractionOptions.fromJson(Map<String, dynamic> json) => _$ExtractionOptionsFromJson(json);

/// Free-form context map merged into the preset's `context_template`.
/// (Mustache `{{key}}`) before the system prompt is sent to the model.
/// Ignored when `preset` is not set.
 final  Map<String, String>? _context;
/// Free-form context map merged into the preset's `context_template`.
/// (Mustache `{{key}}`) before the system prompt is sent to the model.
/// Ignored when `preset` is not set.
@override Map<String, String>? get context {
  final value = _context;
  if (value == null) return null;
  if (_context is EqualUnmodifiableMapView) return _context;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}

/// Xberg extraction configuration (optional, null = defaults).
@override@JsonKey(name: 'extraction_config') final  ExtractionConfig? extractionConfig;
/// Preset identifier (matches `crates/presets/library/<id>/v1.json`).
/// When set, the worker resolves the preset for structured-extraction.
/// configuration. Mutually compatible with `extraction_config`.
@override final  String? preset;
/// Saved preset ID (project-scoped user-created preset).
/// When set, the preset's schema, system_prompt, context_template,.
/// preferred_call_mode, and emit_citations are merged into extraction_config.
/// Mutually exclusive with `preset` and raw `extraction_config.structured_extraction.schema`.
@override@JsonKey(name: 'saved_preset_id') final  String? savedPresetId;
/// When set to true and the document is a PDF, enable multi-document.
/// boundary detection and fan-out orchestration.
@override@JsonKey(name: 'split_documents') final  bool? splitDocuments;

/// Create a copy of ExtractionOptions
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ExtractionOptionsCopyWith<_ExtractionOptions> get copyWith => __$ExtractionOptionsCopyWithImpl<_ExtractionOptions>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ExtractionOptionsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ExtractionOptions&&const DeepCollectionEquality().equals(other._context, _context)&&(identical(other.extractionConfig, extractionConfig) || other.extractionConfig == extractionConfig)&&(identical(other.preset, preset) || other.preset == preset)&&(identical(other.savedPresetId, savedPresetId) || other.savedPresetId == savedPresetId)&&(identical(other.splitDocuments, splitDocuments) || other.splitDocuments == splitDocuments));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_context),extractionConfig,preset,savedPresetId,splitDocuments);

@override
String toString() {
  return 'ExtractionOptions(context: $context, extractionConfig: $extractionConfig, preset: $preset, savedPresetId: $savedPresetId, splitDocuments: $splitDocuments)';
}


}

/// @nodoc
abstract mixin class _$ExtractionOptionsCopyWith<$Res> implements $ExtractionOptionsCopyWith<$Res> {
  factory _$ExtractionOptionsCopyWith(_ExtractionOptions value, $Res Function(_ExtractionOptions) _then) = __$ExtractionOptionsCopyWithImpl;
@override @useResult
$Res call({
 Map<String, String>? context,@JsonKey(name: 'extraction_config') ExtractionConfig? extractionConfig, String? preset,@JsonKey(name: 'saved_preset_id') String? savedPresetId,@JsonKey(name: 'split_documents') bool? splitDocuments
});


@override $ExtractionConfigCopyWith<$Res>? get extractionConfig;

}
/// @nodoc
class __$ExtractionOptionsCopyWithImpl<$Res>
    implements _$ExtractionOptionsCopyWith<$Res> {
  __$ExtractionOptionsCopyWithImpl(this._self, this._then);

  final _ExtractionOptions _self;
  final $Res Function(_ExtractionOptions) _then;

/// Create a copy of ExtractionOptions
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? context = freezed,Object? extractionConfig = freezed,Object? preset = freezed,Object? savedPresetId = freezed,Object? splitDocuments = freezed,}) {
  return _then(_ExtractionOptions(
context: freezed == context ? _self._context : context // ignore: cast_nullable_to_non_nullable
as Map<String, String>?,extractionConfig: freezed == extractionConfig ? _self.extractionConfig : extractionConfig // ignore: cast_nullable_to_non_nullable
as ExtractionConfig?,preset: freezed == preset ? _self.preset : preset // ignore: cast_nullable_to_non_nullable
as String?,savedPresetId: freezed == savedPresetId ? _self.savedPresetId : savedPresetId // ignore: cast_nullable_to_non_nullable
as String?,splitDocuments: freezed == splitDocuments ? _self.splitDocuments : splitDocuments // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}

/// Create a copy of ExtractionOptions
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ExtractionConfigCopyWith<$Res>? get extractionConfig {
    if (_self.extractionConfig == null) {
    return null;
  }

  return $ExtractionConfigCopyWith<$Res>(_self.extractionConfig!, (value) {
    return _then(_self.copyWith(extractionConfig: value));
  });
}
}

// dart format on
