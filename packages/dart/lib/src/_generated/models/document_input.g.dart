// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'document_input.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_DocumentInput _$DocumentInputFromJson(Map<String, dynamic> json) =>
    _DocumentInput(
      filename: json['filename'] as String,
      mimeType: json['mime_type'] as String,
      data: json['data'] as String?,
      documentId: json['document_id'] as String?,
      integration: json['integration'] == null
          ? null
          : IntegrationInput.fromJson(
              json['integration'] as Map<String, dynamic>,
            ),
    );

Map<String, dynamic> _$DocumentInputToJson(_DocumentInput instance) =>
    <String, dynamic>{
      'filename': instance.filename,
      'mime_type': instance.mimeType,
      'data': instance.data,
      'document_id': instance.documentId,
      'integration': instance.integration,
    };
