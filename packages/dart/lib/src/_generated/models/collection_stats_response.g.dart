// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'collection_stats_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CollectionStatsResponse _$CollectionStatsResponseFromJson(
  Map<String, dynamic> json,
) => _CollectionStatsResponse(
  chunkCount: (json['chunk_count'] as num).toInt(),
  documentCount: (json['document_count'] as num).toInt(),
  lastIngestedAt: json['last_ingested_at'] as String?,
);

Map<String, dynamic> _$CollectionStatsResponseToJson(
  _CollectionStatsResponse instance,
) => <String, dynamic>{
  'chunk_count': instance.chunkCount,
  'document_count': instance.documentCount,
  'last_ingested_at': instance.lastIngestedAt,
};
