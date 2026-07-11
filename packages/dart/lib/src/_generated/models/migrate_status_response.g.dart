// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'migrate_status_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_MigrateStatusResponse _$MigrateStatusResponseFromJson(
  Map<String, dynamic> json,
) => _MigrateStatusResponse(
  jobId: json['job_id'] as String,
  status: MigrateStatus.fromJson(json['status'] as String),
  error: json['error'] as String?,
  progress: json['progress'] == null
      ? null
      : MigrateProgress.fromJson(json['progress'] as Map<String, dynamic>),
);

Map<String, dynamic> _$MigrateStatusResponseToJson(
  _MigrateStatusResponse instance,
) => <String, dynamic>{
  'job_id': instance.jobId,
  'status': instance.status,
  'error': instance.error,
  'progress': instance.progress,
};
