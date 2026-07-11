// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dbf_metadata.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_DbfMetadata _$DbfMetadataFromJson(Map<String, dynamic> json) => _DbfMetadata(
  fieldCount: (json['field_count'] as num).toInt(),
  recordCount: (json['record_count'] as num).toInt(),
  fields: (json['fields'] as List<dynamic>?)
      ?.map((e) => DbfFieldInfo.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$DbfMetadataToJson(_DbfMetadata instance) =>
    <String, dynamic>{
      'field_count': instance.fieldCount,
      'record_count': instance.recordCount,
      'fields': instance.fields,
    };
