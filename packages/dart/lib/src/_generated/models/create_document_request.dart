// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'create_document_chunk_input.dart';
import 'webhook_config.dart';

part 'create_document_request.freezed.dart';
part 'create_document_request.g.dart';

/// OpenAPI schema for [`CreateDocumentRequest`].
///
/// This DTO keeps the published request schema as the flat JSON object accepted.
/// by the handler while runtime deserialization still uses [`CreateDocumentRequest`].
@Freezed()
abstract class CreateDocumentRequest with _$CreateDocumentRequest {
  const factory CreateDocumentRequest({
    /// Source variant: `"text"` or `"chunks"`
    required String kind,

    /// Pre-split chunks for `kind: "chunks"`
    List<CreateDocumentChunkInput>? chunks,

    /// Pre-computed enrichments to skip the server's pass
    @JsonKey(name: 'enrichment_overrides') dynamic enrichmentOverrides,

    /// Caller-supplied external identifier for the document
    @JsonKey(name: 'external_id') String? externalId,

    /// Caller-supplied metadata stored alongside the document
    dynamic metadata,

    /// MIME type of the source document for audit purposes
    String? mime,

    /// GCS/S3 object key for the source document
    @JsonKey(name: 'source_object_key') String? sourceObjectKey,

    /// Raw text content for `kind: "text"`
    String? text,

    /// Human-readable document title
    String? title,

    /// Optional webhook for ingest completion/failure delivery
    WebhookConfig? webhook,
  }) = _CreateDocumentRequest;

  factory CreateDocumentRequest.fromJson(Map<String, Object?> json) =>
      _$CreateDocumentRequestFromJson(json);
}
