// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pdf_form_field.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PdfFormField {

/// Classified field type.
@JsonKey(name: 'field_type') FormFieldType get fieldType;/// Fully-qualified field name (dotted path from the form root).
@JsonKey(name: 'full_name') String get fullName;/// Partial field name (the leaf name within the field hierarchy).
 String get name;/// Widget bounding box on its page, if known.
 BoundingBox? get bbox;/// Default field value, if any.
@JsonKey(name: 'default_value') String? get defaultValue;/// Raw field-flags bitmask (read-only, required, multiline, …).
 int? get flags;/// Maximum input length for text fields, if specified.
@JsonKey(name: 'max_length') int? get maxLength;/// 1-indexed page the field's widget appears on. Currently always `None` for.
/// AcroForm fields; page assignment is a deferred enhancement requiring spatial.
/// analysis of widget annotations per page.
 int? get page;/// Tooltip / alternate field description, if present.
 String? get tooltip;/// Current field value, if any.
 String? get value;
/// Create a copy of PdfFormField
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PdfFormFieldCopyWith<PdfFormField> get copyWith => _$PdfFormFieldCopyWithImpl<PdfFormField>(this as PdfFormField, _$identity);

  /// Serializes this PdfFormField to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PdfFormField&&(identical(other.fieldType, fieldType) || other.fieldType == fieldType)&&(identical(other.fullName, fullName) || other.fullName == fullName)&&(identical(other.name, name) || other.name == name)&&(identical(other.bbox, bbox) || other.bbox == bbox)&&(identical(other.defaultValue, defaultValue) || other.defaultValue == defaultValue)&&(identical(other.flags, flags) || other.flags == flags)&&(identical(other.maxLength, maxLength) || other.maxLength == maxLength)&&(identical(other.page, page) || other.page == page)&&(identical(other.tooltip, tooltip) || other.tooltip == tooltip)&&(identical(other.value, value) || other.value == value));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,fieldType,fullName,name,bbox,defaultValue,flags,maxLength,page,tooltip,value);

@override
String toString() {
  return 'PdfFormField(fieldType: $fieldType, fullName: $fullName, name: $name, bbox: $bbox, defaultValue: $defaultValue, flags: $flags, maxLength: $maxLength, page: $page, tooltip: $tooltip, value: $value)';
}


}

/// @nodoc
abstract mixin class $PdfFormFieldCopyWith<$Res>  {
  factory $PdfFormFieldCopyWith(PdfFormField value, $Res Function(PdfFormField) _then) = _$PdfFormFieldCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'field_type') FormFieldType fieldType,@JsonKey(name: 'full_name') String fullName, String name, BoundingBox? bbox,@JsonKey(name: 'default_value') String? defaultValue, int? flags,@JsonKey(name: 'max_length') int? maxLength, int? page, String? tooltip, String? value
});


$BoundingBoxCopyWith<$Res>? get bbox;

}
/// @nodoc
class _$PdfFormFieldCopyWithImpl<$Res>
    implements $PdfFormFieldCopyWith<$Res> {
  _$PdfFormFieldCopyWithImpl(this._self, this._then);

  final PdfFormField _self;
  final $Res Function(PdfFormField) _then;

/// Create a copy of PdfFormField
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? fieldType = null,Object? fullName = null,Object? name = null,Object? bbox = freezed,Object? defaultValue = freezed,Object? flags = freezed,Object? maxLength = freezed,Object? page = freezed,Object? tooltip = freezed,Object? value = freezed,}) {
  return _then(_self.copyWith(
fieldType: null == fieldType ? _self.fieldType : fieldType // ignore: cast_nullable_to_non_nullable
as FormFieldType,fullName: null == fullName ? _self.fullName : fullName // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,bbox: freezed == bbox ? _self.bbox : bbox // ignore: cast_nullable_to_non_nullable
as BoundingBox?,defaultValue: freezed == defaultValue ? _self.defaultValue : defaultValue // ignore: cast_nullable_to_non_nullable
as String?,flags: freezed == flags ? _self.flags : flags // ignore: cast_nullable_to_non_nullable
as int?,maxLength: freezed == maxLength ? _self.maxLength : maxLength // ignore: cast_nullable_to_non_nullable
as int?,page: freezed == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int?,tooltip: freezed == tooltip ? _self.tooltip : tooltip // ignore: cast_nullable_to_non_nullable
as String?,value: freezed == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of PdfFormField
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BoundingBoxCopyWith<$Res>? get bbox {
    if (_self.bbox == null) {
    return null;
  }

  return $BoundingBoxCopyWith<$Res>(_self.bbox!, (value) {
    return _then(_self.copyWith(bbox: value));
  });
}
}


/// Adds pattern-matching-related methods to [PdfFormField].
extension PdfFormFieldPatterns on PdfFormField {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PdfFormField value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PdfFormField() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PdfFormField value)  $default,){
final _that = this;
switch (_that) {
case _PdfFormField():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PdfFormField value)?  $default,){
final _that = this;
switch (_that) {
case _PdfFormField() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'field_type')  FormFieldType fieldType, @JsonKey(name: 'full_name')  String fullName,  String name,  BoundingBox? bbox, @JsonKey(name: 'default_value')  String? defaultValue,  int? flags, @JsonKey(name: 'max_length')  int? maxLength,  int? page,  String? tooltip,  String? value)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PdfFormField() when $default != null:
return $default(_that.fieldType,_that.fullName,_that.name,_that.bbox,_that.defaultValue,_that.flags,_that.maxLength,_that.page,_that.tooltip,_that.value);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'field_type')  FormFieldType fieldType, @JsonKey(name: 'full_name')  String fullName,  String name,  BoundingBox? bbox, @JsonKey(name: 'default_value')  String? defaultValue,  int? flags, @JsonKey(name: 'max_length')  int? maxLength,  int? page,  String? tooltip,  String? value)  $default,) {final _that = this;
switch (_that) {
case _PdfFormField():
return $default(_that.fieldType,_that.fullName,_that.name,_that.bbox,_that.defaultValue,_that.flags,_that.maxLength,_that.page,_that.tooltip,_that.value);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'field_type')  FormFieldType fieldType, @JsonKey(name: 'full_name')  String fullName,  String name,  BoundingBox? bbox, @JsonKey(name: 'default_value')  String? defaultValue,  int? flags, @JsonKey(name: 'max_length')  int? maxLength,  int? page,  String? tooltip,  String? value)?  $default,) {final _that = this;
switch (_that) {
case _PdfFormField() when $default != null:
return $default(_that.fieldType,_that.fullName,_that.name,_that.bbox,_that.defaultValue,_that.flags,_that.maxLength,_that.page,_that.tooltip,_that.value);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PdfFormField implements PdfFormField {
  const _PdfFormField({@JsonKey(name: 'field_type') required this.fieldType, @JsonKey(name: 'full_name') required this.fullName, required this.name, this.bbox, @JsonKey(name: 'default_value') this.defaultValue, this.flags, @JsonKey(name: 'max_length') this.maxLength, this.page, this.tooltip, this.value});
  factory _PdfFormField.fromJson(Map<String, dynamic> json) => _$PdfFormFieldFromJson(json);

/// Classified field type.
@override@JsonKey(name: 'field_type') final  FormFieldType fieldType;
/// Fully-qualified field name (dotted path from the form root).
@override@JsonKey(name: 'full_name') final  String fullName;
/// Partial field name (the leaf name within the field hierarchy).
@override final  String name;
/// Widget bounding box on its page, if known.
@override final  BoundingBox? bbox;
/// Default field value, if any.
@override@JsonKey(name: 'default_value') final  String? defaultValue;
/// Raw field-flags bitmask (read-only, required, multiline, …).
@override final  int? flags;
/// Maximum input length for text fields, if specified.
@override@JsonKey(name: 'max_length') final  int? maxLength;
/// 1-indexed page the field's widget appears on. Currently always `None` for.
/// AcroForm fields; page assignment is a deferred enhancement requiring spatial.
/// analysis of widget annotations per page.
@override final  int? page;
/// Tooltip / alternate field description, if present.
@override final  String? tooltip;
/// Current field value, if any.
@override final  String? value;

/// Create a copy of PdfFormField
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PdfFormFieldCopyWith<_PdfFormField> get copyWith => __$PdfFormFieldCopyWithImpl<_PdfFormField>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PdfFormFieldToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PdfFormField&&(identical(other.fieldType, fieldType) || other.fieldType == fieldType)&&(identical(other.fullName, fullName) || other.fullName == fullName)&&(identical(other.name, name) || other.name == name)&&(identical(other.bbox, bbox) || other.bbox == bbox)&&(identical(other.defaultValue, defaultValue) || other.defaultValue == defaultValue)&&(identical(other.flags, flags) || other.flags == flags)&&(identical(other.maxLength, maxLength) || other.maxLength == maxLength)&&(identical(other.page, page) || other.page == page)&&(identical(other.tooltip, tooltip) || other.tooltip == tooltip)&&(identical(other.value, value) || other.value == value));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,fieldType,fullName,name,bbox,defaultValue,flags,maxLength,page,tooltip,value);

@override
String toString() {
  return 'PdfFormField(fieldType: $fieldType, fullName: $fullName, name: $name, bbox: $bbox, defaultValue: $defaultValue, flags: $flags, maxLength: $maxLength, page: $page, tooltip: $tooltip, value: $value)';
}


}

/// @nodoc
abstract mixin class _$PdfFormFieldCopyWith<$Res> implements $PdfFormFieldCopyWith<$Res> {
  factory _$PdfFormFieldCopyWith(_PdfFormField value, $Res Function(_PdfFormField) _then) = __$PdfFormFieldCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'field_type') FormFieldType fieldType,@JsonKey(name: 'full_name') String fullName, String name, BoundingBox? bbox,@JsonKey(name: 'default_value') String? defaultValue, int? flags,@JsonKey(name: 'max_length') int? maxLength, int? page, String? tooltip, String? value
});


@override $BoundingBoxCopyWith<$Res>? get bbox;

}
/// @nodoc
class __$PdfFormFieldCopyWithImpl<$Res>
    implements _$PdfFormFieldCopyWith<$Res> {
  __$PdfFormFieldCopyWithImpl(this._self, this._then);

  final _PdfFormField _self;
  final $Res Function(_PdfFormField) _then;

/// Create a copy of PdfFormField
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? fieldType = null,Object? fullName = null,Object? name = null,Object? bbox = freezed,Object? defaultValue = freezed,Object? flags = freezed,Object? maxLength = freezed,Object? page = freezed,Object? tooltip = freezed,Object? value = freezed,}) {
  return _then(_PdfFormField(
fieldType: null == fieldType ? _self.fieldType : fieldType // ignore: cast_nullable_to_non_nullable
as FormFieldType,fullName: null == fullName ? _self.fullName : fullName // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,bbox: freezed == bbox ? _self.bbox : bbox // ignore: cast_nullable_to_non_nullable
as BoundingBox?,defaultValue: freezed == defaultValue ? _self.defaultValue : defaultValue // ignore: cast_nullable_to_non_nullable
as String?,flags: freezed == flags ? _self.flags : flags // ignore: cast_nullable_to_non_nullable
as int?,maxLength: freezed == maxLength ? _self.maxLength : maxLength // ignore: cast_nullable_to_non_nullable
as int?,page: freezed == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int?,tooltip: freezed == tooltip ? _self.tooltip : tooltip // ignore: cast_nullable_to_non_nullable
as String?,value: freezed == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of PdfFormField
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BoundingBoxCopyWith<$Res>? get bbox {
    if (_self.bbox == null) {
    return null;
  }

  return $BoundingBoxCopyWith<$Res>(_self.bbox!, (value) {
    return _then(_self.copyWith(bbox: value));
  });
}
}

// dart format on
