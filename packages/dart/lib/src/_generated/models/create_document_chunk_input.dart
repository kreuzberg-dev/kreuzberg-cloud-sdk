// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_document_chunk_input.freezed.dart';
part 'create_document_chunk_input.g.dart';

/// Caller-supplied chunk for bring-your-own-chunks ingest
@Freezed()
abstract class CreateDocumentChunkInput with _$CreateDocumentChunkInput {
  const factory CreateDocumentChunkInput({
    /// Chunk content (text)
    required String content,

    /// Caller-supplied embedding vector. When present on every chunk in the.
    /// request, triggers synchronous write (200). When absent on any chunk,.
    /// the entire request goes async and the worker embeds all chunks.
    List<double>? embedding,

    /// External identifier for this chunk (optional)
    @JsonKey(name: 'external_id') String? externalId,

    /// Metadata attached to this chunk
    dynamic metadata,

    /// Position in the document (0-indexed)
    int? ordinal,
  }) = _CreateDocumentChunkInput;

  factory CreateDocumentChunkInput.fromJson(Map<String, Object?> json) =>
      _$CreateDocumentChunkInputFromJson(json);
}
