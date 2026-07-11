// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'collection_chunking_config.dart';
import 'reranker_spec.dart';

part 'create_collection_request.freezed.dart';
part 'create_collection_request.g.dart';

/// Request to create a new RAG collection.
@Freezed()
abstract class CreateCollectionRequest with _$CreateCollectionRequest {
  const factory CreateCollectionRequest({
    /// Embedding dimension (e.g., 384 for mxbai-embed-large-v1)
    @JsonKey(name: 'embedding_dim') required int embeddingDim,

    /// Collection name (unique per project)
    required String name,

    /// Per-collection text chunking configuration.
    ///
    /// Omit any field to inherit the ingest pipeline's built-in default.
    /// (max 1000 characters, 200-character overlap, text chunker).
    @JsonKey(name: 'chunking_config') CollectionChunkingConfig? chunkingConfig,

    /// Distance metric for similarity search ("cosine", "l2", "inner_product")
    @JsonKey(name: 'distance_metric') String? distanceMetric,

    /// Embedding source for the collection.
    ///
    /// Omit to use the deployment-wide default (usually "managed_local").
    /// When provided, overrides the deployment default.
    @JsonKey(name: 'embedding_source') String? embeddingSource,

    /// Vector index method ("diskann" or "hnsw").
    ///
    /// Omit to inherit the deployment-wide default.
    /// (`XBERG_VECTORSTORE_DEFAULT_INDEX_METHOD` env var, Helm value.
    /// `vectorstore.defaultIndexMethod`). The API layer is responsible for.
    /// filling the default before persisting the collection.
    @JsonKey(name: 'index_method') String? indexMethod,

    /// Confidence threshold (0.0–1.0) for classify_text. Default 0.5 when.
    /// None and label_vocabulary is Some.
    @JsonKey(name: 'label_classifier_threshold')
    double? labelClassifierThreshold,

    /// Labels vocabulary for xberg's classify_text. When None, auto-.
    /// classification is disabled and labels remain pass-through-only.
    /// Length cap: 100 strings; each up to 64 chars.
    @JsonKey(name: 'label_vocabulary') List<String>? labelVocabulary,

    /// Maximum documents quota for this collection
    @JsonKey(name: 'quota_max_documents') int? quotaMaxDocuments,

    /// Default reranker spec for retrieve operations on this collection.
    ///
    /// When present, this reranker is used as the default unless the.
    /// retrieve request overrides it. Can be a Preset (ONNX cross-encoder).
    /// or Llm (platform-managed LLM).
    @JsonKey(name: 'rerank_default') RerankerSpec? rerankDefault,
  }) = _CreateCollectionRequest;

  factory CreateCollectionRequest.fromJson(Map<String, Object?> json) =>
      _$CreateCollectionRequestFromJson(json);
}
