// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'retrieved_chunk.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_RetrievedChunk _$RetrievedChunkFromJson(Map<String, dynamic> json) =>
    _RetrievedChunk(
      chunkMetadata: json['chunk_metadata'],
      documentId: json['document_id'] as String,
      id: json['id'] as String,
      ordinal: (json['ordinal'] as num).toInt(),
      score: (json['score'] as num).toDouble(),
      content: json['content'] as String?,
      document: json['document'],
      externalId: json['external_id'] as String?,
      scoreBreakdown: json['score_breakdown'] == null
          ? null
          : ScoreBreakdown.fromJson(
              json['score_breakdown'] as Map<String, dynamic>,
            ),
    );

Map<String, dynamic> _$RetrievedChunkToJson(_RetrievedChunk instance) =>
    <String, dynamic>{
      'chunk_metadata': instance.chunkMetadata,
      'document_id': instance.documentId,
      'id': instance.id,
      'ordinal': instance.ordinal,
      'score': instance.score,
      'content': instance.content,
      'document': instance.document,
      'external_id': instance.externalId,
      'score_breakdown': instance.scoreBreakdown,
    };
