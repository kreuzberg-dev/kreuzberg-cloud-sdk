// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_document_response.freezed.dart';
part 'create_document_response.g.dart';

/// Response for synchronous document creation (BYO-vector fast path)
@Freezed()
abstract class CreateDocumentResponse with _$CreateDocumentResponse {
  const factory CreateDocumentResponse({
    /// Number of chunks created
    @JsonKey(name: 'chunk_count') required int chunkCount,

    /// Collection name
    required String collection,

    /// Unique document identifier
    @JsonKey(name: 'document_id') required String documentId,

    /// Embedding dimension (from collection spec)
    @JsonKey(name: 'embedding_dim') required int embeddingDim,

    /// Ingestion timestamp (RFC3339)
    @JsonKey(name: 'ingested_at') required String ingestedAt,

    /// Caller-supplied external ID (if provided)
    @JsonKey(name: 'external_id') String? externalId,
  }) = _CreateDocumentResponse;

  factory CreateDocumentResponse.fromJson(Map<String, Object?> json) =>
      _$CreateDocumentResponseFromJson(json);
}
