// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'docx_metadata.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_DocxMetadata _$DocxMetadataFromJson(Map<String, dynamic> json) =>
    _DocxMetadata(
      appProperties: json['app_properties'],
      coreProperties: json['core_properties'],
      customProperties: json['custom_properties'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$DocxMetadataToJson(_DocxMetadata instance) =>
    <String, dynamic>{
      'app_properties': instance.appProperties,
      'core_properties': instance.coreProperties,
      'custom_properties': instance.customProperties,
    };
