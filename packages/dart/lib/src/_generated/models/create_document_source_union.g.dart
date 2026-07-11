// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_document_source_union.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CreateDocumentSourceUnionVariant1 _$CreateDocumentSourceUnionVariant1FromJson(
  Map<String, dynamic> json,
) => CreateDocumentSourceUnionVariant1(
  kind: CreateDocumentSourceUnionVariant1Kind.fromJson(json['kind'] as String),
  text: json['text'] as String,
  enrichmentOverrides: json['enrichment_overrides'],
  $type: json['runtimeType'] as String?,
);

Map<String, dynamic> _$CreateDocumentSourceUnionVariant1ToJson(
  CreateDocumentSourceUnionVariant1 instance,
) => <String, dynamic>{
  'kind': instance.kind,
  'text': instance.text,
  'enrichment_overrides': instance.enrichmentOverrides,
  'runtimeType': instance.$type,
};

CreateDocumentSourceUnionVariant2 _$CreateDocumentSourceUnionVariant2FromJson(
  Map<String, dynamic> json,
) => CreateDocumentSourceUnionVariant2(
  chunks: (json['chunks'] as List<dynamic>)
      .map((e) => CreateDocumentChunkInput.fromJson(e as Map<String, dynamic>))
      .toList(),
  kind: CreateDocumentSourceUnionVariant2Kind.fromJson(json['kind'] as String),
  enrichmentOverrides: json['enrichment_overrides'],
  $type: json['runtimeType'] as String?,
);

Map<String, dynamic> _$CreateDocumentSourceUnionVariant2ToJson(
  CreateDocumentSourceUnionVariant2 instance,
) => <String, dynamic>{
  'chunks': instance.chunks,
  'kind': instance.kind,
  'enrichment_overrides': instance.enrichmentOverrides,
  'runtimeType': instance.$type,
};
