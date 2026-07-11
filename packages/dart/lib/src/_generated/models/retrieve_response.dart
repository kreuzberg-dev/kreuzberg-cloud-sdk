// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'latency_breakdown.dart';
import 'reranker_kind.dart';
import 'retrieve_mode.dart';
import 'retrieved_chunk.dart';

part 'retrieve_response.freezed.dart';
part 'retrieve_response.g.dart';

/// Retrieve response body.
@Freezed()
abstract class RetrieveResponse with _$RetrieveResponse {
  const factory RetrieveResponse({
    /// Result chunks (relevance-ordered).
    required List<RetrievedChunk> chunks,

    /// Latency breakdown.
    @JsonKey(name: 'latency_breakdown')
    required LatencyBreakdown latencyBreakdown,

    /// Mode used.
    required RetrieveMode mode,

    /// Which reranker (if any) was actually applied. `None` if rerank.
    /// was off; also `None` if rerank was active but fell back to the.
    /// primary order — in that case `chunks[i].score_breakdown.rerank_fallback`.
    /// records the reason.
    @JsonKey(name: 'rerank_applied') RerankerKind? rerankApplied,
  }) = _RetrieveResponse;

  factory RetrieveResponse.fromJson(Map<String, Object?> json) =>
      _$RetrieveResponseFromJson(json);
}
