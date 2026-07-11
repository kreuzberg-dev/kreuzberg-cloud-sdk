// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_document_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CreateDocumentResponse _$CreateDocumentResponseFromJson(
  Map<String, dynamic> json,
) => _CreateDocumentResponse(
  chunkCount: (json['chunk_count'] as num).toInt(),
  collection: json['collection'] as String,
  documentId: json['document_id'] as String,
  embeddingDim: (json['embedding_dim'] as num).toInt(),
  ingestedAt: json['ingested_at'] as String,
  externalId: json['external_id'] as String?,
);

Map<String, dynamic> _$CreateDocumentResponseToJson(
  _CreateDocumentResponse instance,
) => <String, dynamic>{
  'chunk_count': instance.chunkCount,
  'collection': instance.collection,
  'document_id': instance.documentId,
  'embedding_dim': instance.embeddingDim,
  'ingested_at': instance.ingestedAt,
  'external_id': instance.externalId,
};
