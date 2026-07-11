// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'preset_summary.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PresetSummary {

 PresetCategory get category; String get description;@JsonKey(name: 'emit_citations') bool get emitCitations;/// Stable sha256 fingerprint used by clients to detect updates.
 String get fingerprint; String get id;@JsonKey(name: 'preferred_call_mode') PresetCallMode get preferredCallMode;@JsonKey(name: 'schema_name') String get schemaName; String get version; List<String>? get tags;
/// Create a copy of PresetSummary
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PresetSummaryCopyWith<PresetSummary> get copyWith => _$PresetSummaryCopyWithImpl<PresetSummary>(this as PresetSummary, _$identity);

  /// Serializes this PresetSummary to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PresetSummary&&(identical(other.category, category) || other.category == category)&&(identical(other.description, description) || other.description == description)&&(identical(other.emitCitations, emitCitations) || other.emitCitations == emitCitations)&&(identical(other.fingerprint, fingerprint) || other.fingerprint == fingerprint)&&(identical(other.id, id) || other.id == id)&&(identical(other.preferredCallMode, preferredCallMode) || other.preferredCallMode == preferredCallMode)&&(identical(other.schemaName, schemaName) || other.schemaName == schemaName)&&(identical(other.version, version) || other.version == version)&&const DeepCollectionEquality().equals(other.tags, tags));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,category,description,emitCitations,fingerprint,id,preferredCallMode,schemaName,version,const DeepCollectionEquality().hash(tags));

@override
String toString() {
  return 'PresetSummary(category: $category, description: $description, emitCitations: $emitCitations, fingerprint: $fingerprint, id: $id, preferredCallMode: $preferredCallMode, schemaName: $schemaName, version: $version, tags: $tags)';
}


}

/// @nodoc
abstract mixin class $PresetSummaryCopyWith<$Res>  {
  factory $PresetSummaryCopyWith(PresetSummary value, $Res Function(PresetSummary) _then) = _$PresetSummaryCopyWithImpl;
@useResult
$Res call({
 PresetCategory category, String description,@JsonKey(name: 'emit_citations') bool emitCitations, String fingerprint, String id,@JsonKey(name: 'preferred_call_mode') PresetCallMode preferredCallMode,@JsonKey(name: 'schema_name') String schemaName, String version, List<String>? tags
});




}
/// @nodoc
class _$PresetSummaryCopyWithImpl<$Res>
    implements $PresetSummaryCopyWith<$Res> {
  _$PresetSummaryCopyWithImpl(this._self, this._then);

  final PresetSummary _self;
  final $Res Function(PresetSummary) _then;

/// Create a copy of PresetSummary
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? category = null,Object? description = null,Object? emitCitations = null,Object? fingerprint = null,Object? id = null,Object? preferredCallMode = null,Object? schemaName = null,Object? version = null,Object? tags = freezed,}) {
  return _then(_self.copyWith(
category: null == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as PresetCategory,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,emitCitations: null == emitCitations ? _self.emitCitations : emitCitations // ignore: cast_nullable_to_non_nullable
as bool,fingerprint: null == fingerprint ? _self.fingerprint : fingerprint // ignore: cast_nullable_to_non_nullable
as String,id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,preferredCallMode: null == preferredCallMode ? _self.preferredCallMode : preferredCallMode // ignore: cast_nullable_to_non_nullable
as PresetCallMode,schemaName: null == schemaName ? _self.schemaName : schemaName // ignore: cast_nullable_to_non_nullable
as String,version: null == version ? _self.version : version // ignore: cast_nullable_to_non_nullable
as String,tags: freezed == tags ? _self.tags : tags // ignore: cast_nullable_to_non_nullable
as List<String>?,
  ));
}

}


/// Adds pattern-matching-related methods to [PresetSummary].
extension PresetSummaryPatterns on PresetSummary {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PresetSummary value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PresetSummary() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PresetSummary value)  $default,){
final _that = this;
switch (_that) {
case _PresetSummary():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PresetSummary value)?  $default,){
final _that = this;
switch (_that) {
case _PresetSummary() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( PresetCategory category,  String description, @JsonKey(name: 'emit_citations')  bool emitCitations,  String fingerprint,  String id, @JsonKey(name: 'preferred_call_mode')  PresetCallMode preferredCallMode, @JsonKey(name: 'schema_name')  String schemaName,  String version,  List<String>? tags)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PresetSummary() when $default != null:
return $default(_that.category,_that.description,_that.emitCitations,_that.fingerprint,_that.id,_that.preferredCallMode,_that.schemaName,_that.version,_that.tags);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( PresetCategory category,  String description, @JsonKey(name: 'emit_citations')  bool emitCitations,  String fingerprint,  String id, @JsonKey(name: 'preferred_call_mode')  PresetCallMode preferredCallMode, @JsonKey(name: 'schema_name')  String schemaName,  String version,  List<String>? tags)  $default,) {final _that = this;
switch (_that) {
case _PresetSummary():
return $default(_that.category,_that.description,_that.emitCitations,_that.fingerprint,_that.id,_that.preferredCallMode,_that.schemaName,_that.version,_that.tags);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( PresetCategory category,  String description, @JsonKey(name: 'emit_citations')  bool emitCitations,  String fingerprint,  String id, @JsonKey(name: 'preferred_call_mode')  PresetCallMode preferredCallMode, @JsonKey(name: 'schema_name')  String schemaName,  String version,  List<String>? tags)?  $default,) {final _that = this;
switch (_that) {
case _PresetSummary() when $default != null:
return $default(_that.category,_that.description,_that.emitCitations,_that.fingerprint,_that.id,_that.preferredCallMode,_that.schemaName,_that.version,_that.tags);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PresetSummary implements PresetSummary {
  const _PresetSummary({required this.category, required this.description, @JsonKey(name: 'emit_citations') required this.emitCitations, required this.fingerprint, required this.id, @JsonKey(name: 'preferred_call_mode') required this.preferredCallMode, @JsonKey(name: 'schema_name') required this.schemaName, required this.version, final  List<String>? tags}): _tags = tags;
  factory _PresetSummary.fromJson(Map<String, dynamic> json) => _$PresetSummaryFromJson(json);

@override final  PresetCategory category;
@override final  String description;
@override@JsonKey(name: 'emit_citations') final  bool emitCitations;
/// Stable sha256 fingerprint used by clients to detect updates.
@override final  String fingerprint;
@override final  String id;
@override@JsonKey(name: 'preferred_call_mode') final  PresetCallMode preferredCallMode;
@override@JsonKey(name: 'schema_name') final  String schemaName;
@override final  String version;
 final  List<String>? _tags;
@override List<String>? get tags {
  final value = _tags;
  if (value == null) return null;
  if (_tags is EqualUnmodifiableListView) return _tags;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of PresetSummary
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PresetSummaryCopyWith<_PresetSummary> get copyWith => __$PresetSummaryCopyWithImpl<_PresetSummary>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PresetSummaryToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PresetSummary&&(identical(other.category, category) || other.category == category)&&(identical(other.description, description) || other.description == description)&&(identical(other.emitCitations, emitCitations) || other.emitCitations == emitCitations)&&(identical(other.fingerprint, fingerprint) || other.fingerprint == fingerprint)&&(identical(other.id, id) || other.id == id)&&(identical(other.preferredCallMode, preferredCallMode) || other.preferredCallMode == preferredCallMode)&&(identical(other.schemaName, schemaName) || other.schemaName == schemaName)&&(identical(other.version, version) || other.version == version)&&const DeepCollectionEquality().equals(other._tags, _tags));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,category,description,emitCitations,fingerprint,id,preferredCallMode,schemaName,version,const DeepCollectionEquality().hash(_tags));

@override
String toString() {
  return 'PresetSummary(category: $category, description: $description, emitCitations: $emitCitations, fingerprint: $fingerprint, id: $id, preferredCallMode: $preferredCallMode, schemaName: $schemaName, version: $version, tags: $tags)';
}


}

/// @nodoc
abstract mixin class _$PresetSummaryCopyWith<$Res> implements $PresetSummaryCopyWith<$Res> {
  factory _$PresetSummaryCopyWith(_PresetSummary value, $Res Function(_PresetSummary) _then) = __$PresetSummaryCopyWithImpl;
@override @useResult
$Res call({
 PresetCategory category, String description,@JsonKey(name: 'emit_citations') bool emitCitations, String fingerprint, String id,@JsonKey(name: 'preferred_call_mode') PresetCallMode preferredCallMode,@JsonKey(name: 'schema_name') String schemaName, String version, List<String>? tags
});




}
/// @nodoc
class __$PresetSummaryCopyWithImpl<$Res>
    implements _$PresetSummaryCopyWith<$Res> {
  __$PresetSummaryCopyWithImpl(this._self, this._then);

  final _PresetSummary _self;
  final $Res Function(_PresetSummary) _then;

/// Create a copy of PresetSummary
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? category = null,Object? description = null,Object? emitCitations = null,Object? fingerprint = null,Object? id = null,Object? preferredCallMode = null,Object? schemaName = null,Object? version = null,Object? tags = freezed,}) {
  return _then(_PresetSummary(
category: null == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as PresetCategory,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,emitCitations: null == emitCitations ? _self.emitCitations : emitCitations // ignore: cast_nullable_to_non_nullable
as bool,fingerprint: null == fingerprint ? _self.fingerprint : fingerprint // ignore: cast_nullable_to_non_nullable
as String,id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,preferredCallMode: null == preferredCallMode ? _self.preferredCallMode : preferredCallMode // ignore: cast_nullable_to_non_nullable
as PresetCallMode,schemaName: null == schemaName ? _self.schemaName : schemaName // ignore: cast_nullable_to_non_nullable
as String,version: null == version ? _self.version : version // ignore: cast_nullable_to_non_nullable
as String,tags: freezed == tags ? _self._tags : tags // ignore: cast_nullable_to_non_nullable
as List<String>?,
  ));
}


}

// dart format on
