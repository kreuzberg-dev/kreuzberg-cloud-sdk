// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'preset_detail.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PresetDetail {

 PresetCategory get category; String get description;@JsonKey(name: 'emit_citations') bool get emitCitations; String get fingerprint; String get id;@JsonKey(name: 'preferred_call_mode') PresetCallMode get preferredCallMode;/// JSON Schema (Draft 2020-12) describing the structured output shape.
 dynamic get schema;@JsonKey(name: 'schema_name') String get schemaName;@JsonKey(name: 'system_prompt') String get systemPrompt; String get version;@JsonKey(name: 'context_template') String? get contextTemplate; PresetSampleRef? get sample; List<String>? get tags;
/// Create a copy of PresetDetail
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PresetDetailCopyWith<PresetDetail> get copyWith => _$PresetDetailCopyWithImpl<PresetDetail>(this as PresetDetail, _$identity);

  /// Serializes this PresetDetail to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PresetDetail&&(identical(other.category, category) || other.category == category)&&(identical(other.description, description) || other.description == description)&&(identical(other.emitCitations, emitCitations) || other.emitCitations == emitCitations)&&(identical(other.fingerprint, fingerprint) || other.fingerprint == fingerprint)&&(identical(other.id, id) || other.id == id)&&(identical(other.preferredCallMode, preferredCallMode) || other.preferredCallMode == preferredCallMode)&&const DeepCollectionEquality().equals(other.schema, schema)&&(identical(other.schemaName, schemaName) || other.schemaName == schemaName)&&(identical(other.systemPrompt, systemPrompt) || other.systemPrompt == systemPrompt)&&(identical(other.version, version) || other.version == version)&&(identical(other.contextTemplate, contextTemplate) || other.contextTemplate == contextTemplate)&&(identical(other.sample, sample) || other.sample == sample)&&const DeepCollectionEquality().equals(other.tags, tags));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,category,description,emitCitations,fingerprint,id,preferredCallMode,const DeepCollectionEquality().hash(schema),schemaName,systemPrompt,version,contextTemplate,sample,const DeepCollectionEquality().hash(tags));

@override
String toString() {
  return 'PresetDetail(category: $category, description: $description, emitCitations: $emitCitations, fingerprint: $fingerprint, id: $id, preferredCallMode: $preferredCallMode, schema: $schema, schemaName: $schemaName, systemPrompt: $systemPrompt, version: $version, contextTemplate: $contextTemplate, sample: $sample, tags: $tags)';
}


}

/// @nodoc
abstract mixin class $PresetDetailCopyWith<$Res>  {
  factory $PresetDetailCopyWith(PresetDetail value, $Res Function(PresetDetail) _then) = _$PresetDetailCopyWithImpl;
@useResult
$Res call({
 PresetCategory category, String description,@JsonKey(name: 'emit_citations') bool emitCitations, String fingerprint, String id,@JsonKey(name: 'preferred_call_mode') PresetCallMode preferredCallMode, dynamic schema,@JsonKey(name: 'schema_name') String schemaName,@JsonKey(name: 'system_prompt') String systemPrompt, String version,@JsonKey(name: 'context_template') String? contextTemplate, PresetSampleRef? sample, List<String>? tags
});


$PresetSampleRefCopyWith<$Res>? get sample;

}
/// @nodoc
class _$PresetDetailCopyWithImpl<$Res>
    implements $PresetDetailCopyWith<$Res> {
  _$PresetDetailCopyWithImpl(this._self, this._then);

  final PresetDetail _self;
  final $Res Function(PresetDetail) _then;

/// Create a copy of PresetDetail
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? category = null,Object? description = null,Object? emitCitations = null,Object? fingerprint = null,Object? id = null,Object? preferredCallMode = null,Object? schema = freezed,Object? schemaName = null,Object? systemPrompt = null,Object? version = null,Object? contextTemplate = freezed,Object? sample = freezed,Object? tags = freezed,}) {
  return _then(_self.copyWith(
category: null == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as PresetCategory,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,emitCitations: null == emitCitations ? _self.emitCitations : emitCitations // ignore: cast_nullable_to_non_nullable
as bool,fingerprint: null == fingerprint ? _self.fingerprint : fingerprint // ignore: cast_nullable_to_non_nullable
as String,id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,preferredCallMode: null == preferredCallMode ? _self.preferredCallMode : preferredCallMode // ignore: cast_nullable_to_non_nullable
as PresetCallMode,schema: freezed == schema ? _self.schema : schema // ignore: cast_nullable_to_non_nullable
as dynamic,schemaName: null == schemaName ? _self.schemaName : schemaName // ignore: cast_nullable_to_non_nullable
as String,systemPrompt: null == systemPrompt ? _self.systemPrompt : systemPrompt // ignore: cast_nullable_to_non_nullable
as String,version: null == version ? _self.version : version // ignore: cast_nullable_to_non_nullable
as String,contextTemplate: freezed == contextTemplate ? _self.contextTemplate : contextTemplate // ignore: cast_nullable_to_non_nullable
as String?,sample: freezed == sample ? _self.sample : sample // ignore: cast_nullable_to_non_nullable
as PresetSampleRef?,tags: freezed == tags ? _self.tags : tags // ignore: cast_nullable_to_non_nullable
as List<String>?,
  ));
}
/// Create a copy of PresetDetail
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PresetSampleRefCopyWith<$Res>? get sample {
    if (_self.sample == null) {
    return null;
  }

  return $PresetSampleRefCopyWith<$Res>(_self.sample!, (value) {
    return _then(_self.copyWith(sample: value));
  });
}
}


/// Adds pattern-matching-related methods to [PresetDetail].
extension PresetDetailPatterns on PresetDetail {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PresetDetail value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PresetDetail() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PresetDetail value)  $default,){
final _that = this;
switch (_that) {
case _PresetDetail():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PresetDetail value)?  $default,){
final _that = this;
switch (_that) {
case _PresetDetail() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( PresetCategory category,  String description, @JsonKey(name: 'emit_citations')  bool emitCitations,  String fingerprint,  String id, @JsonKey(name: 'preferred_call_mode')  PresetCallMode preferredCallMode,  dynamic schema, @JsonKey(name: 'schema_name')  String schemaName, @JsonKey(name: 'system_prompt')  String systemPrompt,  String version, @JsonKey(name: 'context_template')  String? contextTemplate,  PresetSampleRef? sample,  List<String>? tags)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PresetDetail() when $default != null:
return $default(_that.category,_that.description,_that.emitCitations,_that.fingerprint,_that.id,_that.preferredCallMode,_that.schema,_that.schemaName,_that.systemPrompt,_that.version,_that.contextTemplate,_that.sample,_that.tags);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( PresetCategory category,  String description, @JsonKey(name: 'emit_citations')  bool emitCitations,  String fingerprint,  String id, @JsonKey(name: 'preferred_call_mode')  PresetCallMode preferredCallMode,  dynamic schema, @JsonKey(name: 'schema_name')  String schemaName, @JsonKey(name: 'system_prompt')  String systemPrompt,  String version, @JsonKey(name: 'context_template')  String? contextTemplate,  PresetSampleRef? sample,  List<String>? tags)  $default,) {final _that = this;
switch (_that) {
case _PresetDetail():
return $default(_that.category,_that.description,_that.emitCitations,_that.fingerprint,_that.id,_that.preferredCallMode,_that.schema,_that.schemaName,_that.systemPrompt,_that.version,_that.contextTemplate,_that.sample,_that.tags);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( PresetCategory category,  String description, @JsonKey(name: 'emit_citations')  bool emitCitations,  String fingerprint,  String id, @JsonKey(name: 'preferred_call_mode')  PresetCallMode preferredCallMode,  dynamic schema, @JsonKey(name: 'schema_name')  String schemaName, @JsonKey(name: 'system_prompt')  String systemPrompt,  String version, @JsonKey(name: 'context_template')  String? contextTemplate,  PresetSampleRef? sample,  List<String>? tags)?  $default,) {final _that = this;
switch (_that) {
case _PresetDetail() when $default != null:
return $default(_that.category,_that.description,_that.emitCitations,_that.fingerprint,_that.id,_that.preferredCallMode,_that.schema,_that.schemaName,_that.systemPrompt,_that.version,_that.contextTemplate,_that.sample,_that.tags);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PresetDetail implements PresetDetail {
  const _PresetDetail({required this.category, required this.description, @JsonKey(name: 'emit_citations') required this.emitCitations, required this.fingerprint, required this.id, @JsonKey(name: 'preferred_call_mode') required this.preferredCallMode, required this.schema, @JsonKey(name: 'schema_name') required this.schemaName, @JsonKey(name: 'system_prompt') required this.systemPrompt, required this.version, @JsonKey(name: 'context_template') this.contextTemplate, this.sample, final  List<String>? tags}): _tags = tags;
  factory _PresetDetail.fromJson(Map<String, dynamic> json) => _$PresetDetailFromJson(json);

@override final  PresetCategory category;
@override final  String description;
@override@JsonKey(name: 'emit_citations') final  bool emitCitations;
@override final  String fingerprint;
@override final  String id;
@override@JsonKey(name: 'preferred_call_mode') final  PresetCallMode preferredCallMode;
/// JSON Schema (Draft 2020-12) describing the structured output shape.
@override final  dynamic schema;
@override@JsonKey(name: 'schema_name') final  String schemaName;
@override@JsonKey(name: 'system_prompt') final  String systemPrompt;
@override final  String version;
@override@JsonKey(name: 'context_template') final  String? contextTemplate;
@override final  PresetSampleRef? sample;
 final  List<String>? _tags;
@override List<String>? get tags {
  final value = _tags;
  if (value == null) return null;
  if (_tags is EqualUnmodifiableListView) return _tags;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of PresetDetail
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PresetDetailCopyWith<_PresetDetail> get copyWith => __$PresetDetailCopyWithImpl<_PresetDetail>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PresetDetailToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PresetDetail&&(identical(other.category, category) || other.category == category)&&(identical(other.description, description) || other.description == description)&&(identical(other.emitCitations, emitCitations) || other.emitCitations == emitCitations)&&(identical(other.fingerprint, fingerprint) || other.fingerprint == fingerprint)&&(identical(other.id, id) || other.id == id)&&(identical(other.preferredCallMode, preferredCallMode) || other.preferredCallMode == preferredCallMode)&&const DeepCollectionEquality().equals(other.schema, schema)&&(identical(other.schemaName, schemaName) || other.schemaName == schemaName)&&(identical(other.systemPrompt, systemPrompt) || other.systemPrompt == systemPrompt)&&(identical(other.version, version) || other.version == version)&&(identical(other.contextTemplate, contextTemplate) || other.contextTemplate == contextTemplate)&&(identical(other.sample, sample) || other.sample == sample)&&const DeepCollectionEquality().equals(other._tags, _tags));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,category,description,emitCitations,fingerprint,id,preferredCallMode,const DeepCollectionEquality().hash(schema),schemaName,systemPrompt,version,contextTemplate,sample,const DeepCollectionEquality().hash(_tags));

@override
String toString() {
  return 'PresetDetail(category: $category, description: $description, emitCitations: $emitCitations, fingerprint: $fingerprint, id: $id, preferredCallMode: $preferredCallMode, schema: $schema, schemaName: $schemaName, systemPrompt: $systemPrompt, version: $version, contextTemplate: $contextTemplate, sample: $sample, tags: $tags)';
}


}

/// @nodoc
abstract mixin class _$PresetDetailCopyWith<$Res> implements $PresetDetailCopyWith<$Res> {
  factory _$PresetDetailCopyWith(_PresetDetail value, $Res Function(_PresetDetail) _then) = __$PresetDetailCopyWithImpl;
@override @useResult
$Res call({
 PresetCategory category, String description,@JsonKey(name: 'emit_citations') bool emitCitations, String fingerprint, String id,@JsonKey(name: 'preferred_call_mode') PresetCallMode preferredCallMode, dynamic schema,@JsonKey(name: 'schema_name') String schemaName,@JsonKey(name: 'system_prompt') String systemPrompt, String version,@JsonKey(name: 'context_template') String? contextTemplate, PresetSampleRef? sample, List<String>? tags
});


@override $PresetSampleRefCopyWith<$Res>? get sample;

}
/// @nodoc
class __$PresetDetailCopyWithImpl<$Res>
    implements _$PresetDetailCopyWith<$Res> {
  __$PresetDetailCopyWithImpl(this._self, this._then);

  final _PresetDetail _self;
  final $Res Function(_PresetDetail) _then;

/// Create a copy of PresetDetail
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? category = null,Object? description = null,Object? emitCitations = null,Object? fingerprint = null,Object? id = null,Object? preferredCallMode = null,Object? schema = freezed,Object? schemaName = null,Object? systemPrompt = null,Object? version = null,Object? contextTemplate = freezed,Object? sample = freezed,Object? tags = freezed,}) {
  return _then(_PresetDetail(
category: null == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as PresetCategory,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,emitCitations: null == emitCitations ? _self.emitCitations : emitCitations // ignore: cast_nullable_to_non_nullable
as bool,fingerprint: null == fingerprint ? _self.fingerprint : fingerprint // ignore: cast_nullable_to_non_nullable
as String,id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,preferredCallMode: null == preferredCallMode ? _self.preferredCallMode : preferredCallMode // ignore: cast_nullable_to_non_nullable
as PresetCallMode,schema: freezed == schema ? _self.schema : schema // ignore: cast_nullable_to_non_nullable
as dynamic,schemaName: null == schemaName ? _self.schemaName : schemaName // ignore: cast_nullable_to_non_nullable
as String,systemPrompt: null == systemPrompt ? _self.systemPrompt : systemPrompt // ignore: cast_nullable_to_non_nullable
as String,version: null == version ? _self.version : version // ignore: cast_nullable_to_non_nullable
as String,contextTemplate: freezed == contextTemplate ? _self.contextTemplate : contextTemplate // ignore: cast_nullable_to_non_nullable
as String?,sample: freezed == sample ? _self.sample : sample // ignore: cast_nullable_to_non_nullable
as PresetSampleRef?,tags: freezed == tags ? _self._tags : tags // ignore: cast_nullable_to_non_nullable
as List<String>?,
  ));
}

/// Create a copy of PresetDetail
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PresetSampleRefCopyWith<$Res>? get sample {
    if (_self.sample == null) {
    return null;
  }

  return $PresetSampleRefCopyWith<$Res>(_self.sample!, (value) {
    return _then(_self.copyWith(sample: value));
  });
}
}

// dart format on
