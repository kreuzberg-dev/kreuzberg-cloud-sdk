// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_document_chunk_input.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CreateDocumentChunkInput _$CreateDocumentChunkInputFromJson(
  Map<String, dynamic> json,
) => _CreateDocumentChunkInput(
  content: json['content'] as String,
  embedding: (json['embedding'] as List<dynamic>?)
      ?.map((e) => (e as num).toDouble())
      .toList(),
  externalId: json['external_id'] as String?,
  metadata: json['metadata'],
  ordinal: (json['ordinal'] as num?)?.toInt(),
);

Map<String, dynamic> _$CreateDocumentChunkInputToJson(
  _CreateDocumentChunkInput instance,
) => <String, dynamic>{
  'content': instance.content,
  'embedding': instance.embedding,
  'external_id': instance.externalId,
  'metadata': instance.metadata,
  'ordinal': instance.ordinal,
};
