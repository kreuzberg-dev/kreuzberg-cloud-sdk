// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'collection_chunking_config.dart';
import 'collection_stats_response.dart';
import 'reranker_spec.dart';

part 'collection_response.freezed.dart';
part 'collection_response.g.dart';

/// Response for collection retrieval / listing
@Freezed()
abstract class CollectionResponse with _$CollectionResponse {
  const factory CollectionResponse({
    /// Distance metric
    @JsonKey(name: 'distance_metric') required String distanceMetric,

    /// Embedding dimension
    @JsonKey(name: 'embedding_dim') required int embeddingDim,

    /// Collection unique identifier
    required String id,

    /// Vector index method
    @JsonKey(name: 'index_method') required String indexMethod,

    /// Collection name
    required String name,

    /// Per-collection text chunking configuration
    @JsonKey(name: 'chunking_config') CollectionChunkingConfig? chunkingConfig,

    /// Embedding source for this collection
    @JsonKey(name: 'embedding_source') String? embeddingSource,

    /// Maximum documents quota
    @JsonKey(name: 'quota_max_documents') int? quotaMaxDocuments,

    /// Default reranker spec for retrieve operations on this collection
    @JsonKey(name: 'rerank_default') RerankerSpec? rerankDefault,

    /// Collection statistics. Populated on the single-collection detail view.
    /// (`GET /v1/rag/collections/{name}`); omitted from the list view, which is.
    /// intentionally lightweight and does not run per-collection counts.
    CollectionStatsResponse? stats,
  }) = _CollectionResponse;

  factory CollectionResponse.fromJson(Map<String, Object?> json) =>
      _$CollectionResponseFromJson(json);
}
