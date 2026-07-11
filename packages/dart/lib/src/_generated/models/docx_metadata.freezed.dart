// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'docx_metadata.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DocxMetadata {

/// Application properties from docProps/app.xml (Word-specific statistics).
///
/// Contains word count, page count, paragraph count, editing time, etc.
/// DOCX-specific variant of Office application properties.
@JsonKey(name: 'app_properties') dynamic get appProperties;/// Core properties from docProps/core.xml (Dublin Core metadata).
///
/// Contains title, creator, subject, keywords, dates, etc.
/// Shared format across DOCX/PPTX/XLSX documents.
@JsonKey(name: 'core_properties') dynamic get coreProperties;/// Custom properties from docProps/custom.xml (user-defined properties).
///
/// Contains key-value pairs defined by users or applications.
/// Values can be strings, numbers, booleans, or dates.
@JsonKey(name: 'custom_properties') Map<String, dynamic>? get customProperties;
/// Create a copy of DocxMetadata
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DocxMetadataCopyWith<DocxMetadata> get copyWith => _$DocxMetadataCopyWithImpl<DocxMetadata>(this as DocxMetadata, _$identity);

  /// Serializes this DocxMetadata to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DocxMetadata&&const DeepCollectionEquality().equals(other.appProperties, appProperties)&&const DeepCollectionEquality().equals(other.coreProperties, coreProperties)&&const DeepCollectionEquality().equals(other.customProperties, customProperties));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(appProperties),const DeepCollectionEquality().hash(coreProperties),const DeepCollectionEquality().hash(customProperties));

@override
String toString() {
  return 'DocxMetadata(appProperties: $appProperties, coreProperties: $coreProperties, customProperties: $customProperties)';
}


}

/// @nodoc
abstract mixin class $DocxMetadataCopyWith<$Res>  {
  factory $DocxMetadataCopyWith(DocxMetadata value, $Res Function(DocxMetadata) _then) = _$DocxMetadataCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'app_properties') dynamic appProperties,@JsonKey(name: 'core_properties') dynamic coreProperties,@JsonKey(name: 'custom_properties') Map<String, dynamic>? customProperties
});




}
/// @nodoc
class _$DocxMetadataCopyWithImpl<$Res>
    implements $DocxMetadataCopyWith<$Res> {
  _$DocxMetadataCopyWithImpl(this._self, this._then);

  final DocxMetadata _self;
  final $Res Function(DocxMetadata) _then;

/// Create a copy of DocxMetadata
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? appProperties = freezed,Object? coreProperties = freezed,Object? customProperties = freezed,}) {
  return _then(_self.copyWith(
appProperties: freezed == appProperties ? _self.appProperties : appProperties // ignore: cast_nullable_to_non_nullable
as dynamic,coreProperties: freezed == coreProperties ? _self.coreProperties : coreProperties // ignore: cast_nullable_to_non_nullable
as dynamic,customProperties: freezed == customProperties ? _self.customProperties : customProperties // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,
  ));
}

}


/// Adds pattern-matching-related methods to [DocxMetadata].
extension DocxMetadataPatterns on DocxMetadata {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DocxMetadata value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DocxMetadata() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DocxMetadata value)  $default,){
final _that = this;
switch (_that) {
case _DocxMetadata():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DocxMetadata value)?  $default,){
final _that = this;
switch (_that) {
case _DocxMetadata() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'app_properties')  dynamic appProperties, @JsonKey(name: 'core_properties')  dynamic coreProperties, @JsonKey(name: 'custom_properties')  Map<String, dynamic>? customProperties)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DocxMetadata() when $default != null:
return $default(_that.appProperties,_that.coreProperties,_that.customProperties);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'app_properties')  dynamic appProperties, @JsonKey(name: 'core_properties')  dynamic coreProperties, @JsonKey(name: 'custom_properties')  Map<String, dynamic>? customProperties)  $default,) {final _that = this;
switch (_that) {
case _DocxMetadata():
return $default(_that.appProperties,_that.coreProperties,_that.customProperties);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'app_properties')  dynamic appProperties, @JsonKey(name: 'core_properties')  dynamic coreProperties, @JsonKey(name: 'custom_properties')  Map<String, dynamic>? customProperties)?  $default,) {final _that = this;
switch (_that) {
case _DocxMetadata() when $default != null:
return $default(_that.appProperties,_that.coreProperties,_that.customProperties);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DocxMetadata implements DocxMetadata {
  const _DocxMetadata({@JsonKey(name: 'app_properties') this.appProperties, @JsonKey(name: 'core_properties') this.coreProperties, @JsonKey(name: 'custom_properties') final  Map<String, dynamic>? customProperties}): _customProperties = customProperties;
  factory _DocxMetadata.fromJson(Map<String, dynamic> json) => _$DocxMetadataFromJson(json);

/// Application properties from docProps/app.xml (Word-specific statistics).
///
/// Contains word count, page count, paragraph count, editing time, etc.
/// DOCX-specific variant of Office application properties.
@override@JsonKey(name: 'app_properties') final  dynamic appProperties;
/// Core properties from docProps/core.xml (Dublin Core metadata).
///
/// Contains title, creator, subject, keywords, dates, etc.
/// Shared format across DOCX/PPTX/XLSX documents.
@override@JsonKey(name: 'core_properties') final  dynamic coreProperties;
/// Custom properties from docProps/custom.xml (user-defined properties).
///
/// Contains key-value pairs defined by users or applications.
/// Values can be strings, numbers, booleans, or dates.
 final  Map<String, dynamic>? _customProperties;
/// Custom properties from docProps/custom.xml (user-defined properties).
///
/// Contains key-value pairs defined by users or applications.
/// Values can be strings, numbers, booleans, or dates.
@override@JsonKey(name: 'custom_properties') Map<String, dynamic>? get customProperties {
  final value = _customProperties;
  if (value == null) return null;
  if (_customProperties is EqualUnmodifiableMapView) return _customProperties;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}


/// Create a copy of DocxMetadata
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DocxMetadataCopyWith<_DocxMetadata> get copyWith => __$DocxMetadataCopyWithImpl<_DocxMetadata>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DocxMetadataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DocxMetadata&&const DeepCollectionEquality().equals(other.appProperties, appProperties)&&const DeepCollectionEquality().equals(other.coreProperties, coreProperties)&&const DeepCollectionEquality().equals(other._customProperties, _customProperties));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(appProperties),const DeepCollectionEquality().hash(coreProperties),const DeepCollectionEquality().hash(_customProperties));

@override
String toString() {
  return 'DocxMetadata(appProperties: $appProperties, coreProperties: $coreProperties, customProperties: $customProperties)';
}


}

/// @nodoc
abstract mixin class _$DocxMetadataCopyWith<$Res> implements $DocxMetadataCopyWith<$Res> {
  factory _$DocxMetadataCopyWith(_DocxMetadata value, $Res Function(_DocxMetadata) _then) = __$DocxMetadataCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'app_properties') dynamic appProperties,@JsonKey(name: 'core_properties') dynamic coreProperties,@JsonKey(name: 'custom_properties') Map<String, dynamic>? customProperties
});




}
/// @nodoc
class __$DocxMetadataCopyWithImpl<$Res>
    implements _$DocxMetadataCopyWith<$Res> {
  __$DocxMetadataCopyWithImpl(this._self, this._then);

  final _DocxMetadata _self;
  final $Res Function(_DocxMetadata) _then;

/// Create a copy of DocxMetadata
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? appProperties = freezed,Object? coreProperties = freezed,Object? customProperties = freezed,}) {
  return _then(_DocxMetadata(
appProperties: freezed == appProperties ? _self.appProperties : appProperties // ignore: cast_nullable_to_non_nullable
as dynamic,coreProperties: freezed == coreProperties ? _self.coreProperties : coreProperties // ignore: cast_nullable_to_non_nullable
as dynamic,customProperties: freezed == customProperties ? _self._customProperties : customProperties // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,
  ));
}


}

// dart format on
