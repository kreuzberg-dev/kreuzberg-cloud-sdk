// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_document_async_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CreateDocumentAsyncResponse _$CreateDocumentAsyncResponseFromJson(
  Map<String, dynamic> json,
) => _CreateDocumentAsyncResponse(
  documentId: json['document_id'] as String,
  jobId: json['job_id'] as String,
  poll: json['poll'] as String,
  status: json['status'] as String,
);

Map<String, dynamic> _$CreateDocumentAsyncResponseToJson(
  _CreateDocumentAsyncResponse instance,
) => <String, dynamic>{
  'document_id': instance.documentId,
  'job_id': instance.jobId,
  'poll': instance.poll,
  'status': instance.status,
};
