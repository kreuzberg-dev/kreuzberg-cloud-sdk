// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'collection_chunking_config.freezed.dart';
part 'collection_chunking_config.g.dart';

/// Per-collection text chunking configuration.
///
/// Mirrors the tunable knobs of xberg's chunker. Every field is optional;.
/// omitted fields fall back to the ingest pipeline's defaults. The API layer.
/// converts this into xberg's native `ChunkingConfig` before persisting it.
/// to the collection, so the ingest pipeline consumes the canonical type.
@Freezed()
abstract class CollectionChunkingConfig with _$CollectionChunkingConfig {
  const factory CollectionChunkingConfig({
    /// Chunker strategy: `text`, `markdown`, `yaml`, or `semantic`. Default `text`.
    @JsonKey(name: 'chunker_type') String? chunkerType,

    /// Maximum characters per chunk (must be greater than `overlap`). Default 1000.
    @JsonKey(name: 'max_characters') int? maxCharacters,

    /// Overlap between adjacent chunks in characters (must be less than.
    /// `max_characters`). Default 200.
    int? overlap,

    /// Cosine-similarity threshold (0.0–1.0) for the `semantic` chunker's topic.
    /// boundary detection. Ignored by other chunker types.
    @JsonKey(name: 'topic_threshold') double? topicThreshold,

    /// Trim whitespace from chunk boundaries. Default true.
    bool? trim,
  }) = _CollectionChunkingConfig;

  factory CollectionChunkingConfig.fromJson(Map<String, Object?> json) =>
      _$CollectionChunkingConfigFromJson(json);
}
