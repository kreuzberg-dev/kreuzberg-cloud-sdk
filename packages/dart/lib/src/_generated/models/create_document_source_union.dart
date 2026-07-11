// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

import 'create_document_chunk_input.dart';
import 'create_document_source_union_variant1_kind.dart';
import 'create_document_source_union_variant2_kind.dart';

part 'create_document_source_union.freezed.dart';
part 'create_document_source_union.g.dart';

/// Document source variant for ingest
@Freezed()
sealed class CreateDocumentSourceUnion with _$CreateDocumentSourceUnion {
  @JsonSerializable()
  const factory CreateDocumentSourceUnion.variant1({
    required CreateDocumentSourceUnionVariant1Kind kind,

    /// Raw text content
    required String text,

    /// Pre-computed enrichments (keywords, entities, labels) to skip server's pass
    @JsonKey(name: 'enrichment_overrides') dynamic enrichmentOverrides,
  }) = CreateDocumentSourceUnionVariant1;

  @JsonSerializable()
  const factory CreateDocumentSourceUnion.variant2({
    /// List of pre-split chunks
    required List<CreateDocumentChunkInput> chunks,
    required CreateDocumentSourceUnionVariant2Kind kind,

    /// Pre-computed enrichments to skip server's pass
    @JsonKey(name: 'enrichment_overrides') dynamic enrichmentOverrides,
  }) = CreateDocumentSourceUnionVariant2;

  factory CreateDocumentSourceUnion.fromJson(Map<String, Object?> json) =>
      // TODO: No discriminator in OpenAPI spec - you must implement this manually.
      //
      // Inspect the JSON and return the matching variant. Each variant has a fromJson:
      //   CreateDocumentSourceUnionVariantName.fromJson(json)
      //
      // Example pattern (check for unique fields):
      //   json.containsKey('uniqueFieldA') ? CreateDocumentSourceUnionTypeA.fromJson(json) :
      //   json.containsKey('uniqueFieldB') ? CreateDocumentSourceUnionTypeB.fromJson(json) :
      //   CreateDocumentSourceUnionDefault.fromJson(json);
      //
      // IMPORTANT: Keep the => arrow syntax. Converting to a { } body will cause
      // freezed to skip generating toJson/fromJson for this class.
      throw UnimplementedError();
}
