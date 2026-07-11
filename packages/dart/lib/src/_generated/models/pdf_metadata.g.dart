// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pdf_metadata.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PdfMetadata _$PdfMetadataFromJson(Map<String, dynamic> json) => _PdfMetadata(
  height: (json['height'] as num?)?.toInt(),
  isEncrypted: json['is_encrypted'] as bool?,
  pageCount: (json['page_count'] as num?)?.toInt(),
  pdfVersion: json['pdf_version'] as String?,
  producer: json['producer'] as String?,
  width: (json['width'] as num?)?.toInt(),
);

Map<String, dynamic> _$PdfMetadataToJson(_PdfMetadata instance) =>
    <String, dynamic>{
      'height': instance.height,
      'is_encrypted': instance.isEncrypted,
      'page_count': instance.pageCount,
      'pdf_version': instance.pdfVersion,
      'producer': instance.producer,
      'width': instance.width,
    };
