// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'primary_score.dart';

part 'score_breakdown.freezed.dart';
part 'score_breakdown.g.dart';

/// Score detail for a single returned chunk.
@Freezed()
abstract class ScoreBreakdown with _$ScoreBreakdown {
  const factory ScoreBreakdown({
    /// Primary-stage score discriminant + value(s).
    required PrimaryScore primary,

    /// Rank position after reranking (1-indexed). Equal to.
    /// `rank_primary` when rerank was off or fell back.
    @JsonKey(name: 'rank_final') required int rankFinal,

    /// Rank position in the primary-stage result set (1-indexed).
    @JsonKey(name: 'rank_primary') required int rankPrimary,

    /// Reranker score when rerank was applied. `None` otherwise.
    double? rerank,

    /// Reason rerank was skipped or fell back, if applicable.
    /// Values: `"timeout"`.
    @JsonKey(name: 'rerank_fallback') String? rerankFallback,
  }) = _ScoreBreakdown;

  factory ScoreBreakdown.fromJson(Map<String, Object?> json) =>
      _$ScoreBreakdownFromJson(json);
}
