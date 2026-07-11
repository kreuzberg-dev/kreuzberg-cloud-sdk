// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'include_mask.dart';
import 'reranker_spec.dart';
import 'retrieve_mode.dart';

part 'retrieve_request.freezed.dart';
part 'retrieve_request.g.dart';

/// Retrieve request body.
@Freezed()
abstract class RetrieveRequest with _$RetrieveRequest {
  const factory RetrieveRequest({
    /// 1..=20, default 4. Ignored when rerank is inactive. The store.
    /// pulls `top_k * candidate_multiplier` candidates from the.
    /// primary stage so the reranker has more to choose from.
    @JsonKey(name: 'candidate_multiplier') int? candidateMultiplier,

    /// Filter expression (deserialized by the vectorstore Filter IR).
    dynamic filter,

    /// Collapse to one chunk per document.
    @JsonKey(name: 'group_by_document') bool? groupByDocument,

    /// Optional response field mask.
    IncludeMask? include,

    /// Retrieve mode. Defaults to `hybrid`.
    RetrieveMode? mode,

    /// Text query. Required for full_text and hybrid modes; optional.
    /// for vector mode when `query_vector` is supplied.
    String? query,

    /// BYO query vector. Length must equal the collection's.
    /// `embedding_dim`. Forbidden when `mode = full_text`.
    @JsonKey(name: 'query_vector') List<double>? queryVector,

    /// Three-state rerank: absent (collection default) | null.
    /// (disable) | present (override). The OpenAPI schema documents.
    /// this as `Option<RerankerSpec>` — callers control the third.
    /// state by simply omitting the field.
    RerankerSpec? rerank,

    /// Number of top results to return. `1..=200`, default 10.
    @JsonKey(name: 'top_k') int? topK,
  }) = _RetrieveRequest;

  factory RetrieveRequest.fromJson(Map<String, Object?> json) =>
      _$RetrieveRequestFromJson(json);
}
