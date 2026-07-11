// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'score_breakdown.dart';

part 'retrieved_chunk.freezed.dart';
part 'retrieved_chunk.g.dart';

/// Single retrieved chunk in the response.
@Freezed()
abstract class RetrievedChunk with _$RetrievedChunk {
  const factory RetrievedChunk({
    /// Chunk-level metadata.
    @JsonKey(name: 'chunk_metadata') required dynamic chunkMetadata,

    /// Parent document ID.
    @JsonKey(name: 'document_id') required String documentId,

    /// Chunk ID.
    required String id,

    /// Position within document.
    required int ordinal,

    /// Effective score after rerank (or primary score when rerank off).
    required double score,

    /// Chunk content. Present iff `include.content`.
    String? content,

    /// Parent document summary. Present iff `include.document`.
    dynamic document,

    /// Caller-supplied external_id, if any.
    @JsonKey(name: 'external_id') String? externalId,

    /// Score detail. Present iff `include.score_breakdown`.
    @JsonKey(name: 'score_breakdown') ScoreBreakdown? scoreBreakdown,
  }) = _RetrievedChunk;

  factory RetrievedChunk.fromJson(Map<String, Object?> json) =>
      _$RetrievedChunkFromJson(json);
}
