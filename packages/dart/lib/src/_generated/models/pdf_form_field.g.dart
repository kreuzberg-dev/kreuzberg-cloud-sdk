// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pdf_form_field.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PdfFormField _$PdfFormFieldFromJson(Map<String, dynamic> json) =>
    _PdfFormField(
      fieldType: FormFieldType.fromJson(json['field_type'] as String),
      fullName: json['full_name'] as String,
      name: json['name'] as String,
      bbox: json['bbox'] == null
          ? null
          : BoundingBox.fromJson(json['bbox'] as Map<String, dynamic>),
      defaultValue: json['default_value'] as String?,
      flags: (json['flags'] as num?)?.toInt(),
      maxLength: (json['max_length'] as num?)?.toInt(),
      page: (json['page'] as num?)?.toInt(),
      tooltip: json['tooltip'] as String?,
      value: json['value'] as String?,
    );

Map<String, dynamic> _$PdfFormFieldToJson(_PdfFormField instance) =>
    <String, dynamic>{
      'field_type': instance.fieldType,
      'full_name': instance.fullName,
      'name': instance.name,
      'bbox': instance.bbox,
      'default_value': instance.defaultValue,
      'flags': instance.flags,
      'max_length': instance.maxLength,
      'page': instance.page,
      'tooltip': instance.tooltip,
      'value': instance.value,
    };
