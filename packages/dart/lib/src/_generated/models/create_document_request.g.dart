// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_document_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CreateDocumentRequest _$CreateDocumentRequestFromJson(
  Map<String, dynamic> json,
) => _CreateDocumentRequest(
  kind: json['kind'] as String,
  chunks: (json['chunks'] as List<dynamic>?)
      ?.map((e) => CreateDocumentChunkInput.fromJson(e as Map<String, dynamic>))
      .toList(),
  enrichmentOverrides: json['enrichment_overrides'],
  externalId: json['external_id'] as String?,
  metadata: json['metadata'],
  mime: json['mime'] as String?,
  sourceObjectKey: json['source_object_key'] as String?,
  text: json['text'] as String?,
  title: json['title'] as String?,
  webhook: json['webhook'] == null
      ? null
      : WebhookConfig.fromJson(json['webhook'] as Map<String, dynamic>),
);

Map<String, dynamic> _$CreateDocumentRequestToJson(
  _CreateDocumentRequest instance,
) => <String, dynamic>{
  'kind': instance.kind,
  'chunks': instance.chunks,
  'enrichment_overrides': instance.enrichmentOverrides,
  'external_id': instance.externalId,
  'metadata': instance.metadata,
  'mime': instance.mime,
  'source_object_key': instance.sourceObjectKey,
  'text': instance.text,
  'title': instance.title,
  'webhook': instance.webhook,
};
