// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rag_job_status_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_RagJobStatusResponse _$RagJobStatusResponseFromJson(
  Map<String, dynamic> json,
) => _RagJobStatusResponse(
  createdAt: json['created_at'] as String,
  jobId: json['job_id'] as String,
  kind: RagJobKind.fromJson(json['kind'] as String),
  state: RagJobState.fromJson(json['state'] as String),
  collectionId: json['collection_id'] as String?,
  documentId: json['document_id'] as String?,
  error: json['error'] as String?,
  progress: json['progress'] == null
      ? null
      : RagJobProgress.fromJson(json['progress'] as Map<String, dynamic>),
);

Map<String, dynamic> _$RagJobStatusResponseToJson(
  _RagJobStatusResponse instance,
) => <String, dynamic>{
  'created_at': instance.createdAt,
  'job_id': instance.jobId,
  'kind': instance.kind,
  'state': instance.state,
  'collection_id': instance.collectionId,
  'document_id': instance.documentId,
  'error': instance.error,
  'progress': instance.progress,
};
