// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'primary_score.freezed.dart';
part 'primary_score.g.dart';

/// JSON-friendly mirror of vectorstore's internal `PrimaryScore`.
@Freezed(unionKey: 'kind')
sealed class PrimaryScore with _$PrimaryScore {
  /// Vector similarity score.
  const factory PrimaryScore.vector({required double score}) =
      PrimaryScoreVector;

  /// Full-text rank score.
  @FreezedUnionValue('full_text')
  const factory PrimaryScore.fullText({required double score}) =
      PrimaryScoreFullText;

  /// RRF-fused vector + full-text.
  const factory PrimaryScore.hybrid({
    /// Vector component.
    required double vector,

    /// Full-text component.
    @JsonKey(name: 'full_text') required double fullText,

    /// Reciprocal-rank-fusion combined score.
    required double rrf,
  }) = PrimaryScoreHybrid;

  factory PrimaryScore.fromJson(Map<String, Object?> json) =>
      _$PrimaryScoreFromJson(json);
}
