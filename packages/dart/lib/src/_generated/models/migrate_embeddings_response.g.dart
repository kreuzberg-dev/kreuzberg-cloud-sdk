// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'migrate_embeddings_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_MigrateEmbeddingsResponse _$MigrateEmbeddingsResponseFromJson(
  Map<String, dynamic> json,
) => _MigrateEmbeddingsResponse(
  collectionId: json['collection_id'] as String,
  fromSource: json['from_source'] as String,
  fromVersion: (json['from_version'] as num).toInt(),
  jobId: json['job_id'] as String,
  poll: json['poll'] as String,
  status: MigrateStatus.fromJson(json['status'] as String),
  toSource: json['to_source'] as String,
  toVersion: (json['to_version'] as num).toInt(),
);

Map<String, dynamic> _$MigrateEmbeddingsResponseToJson(
  _MigrateEmbeddingsResponse instance,
) => <String, dynamic>{
  'collection_id': instance.collectionId,
  'from_source': instance.fromSource,
  'from_version': instance.fromVersion,
  'job_id': instance.jobId,
  'poll': instance.poll,
  'status': instance.status,
  'to_source': instance.toSource,
  'to_version': instance.toVersion,
};
