// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'keyword_algorithm.dart';
import 'rake_params.dart';
import 'yake_params.dart';

part 'keyword_config.freezed.dart';
part 'keyword_config.g.dart';

/// Keyword extraction configuration.
@Freezed()
abstract class KeywordConfig with _$KeywordConfig {
  const factory KeywordConfig({
    /// Algorithm to use for extraction.
    KeywordAlgorithm? algorithm,

    /// Language code for stopword filtering (e.g., "en", "de", "fr").
    ///
    /// If None, no stopword filtering is applied.
    String? language,

    /// Maximum number of keywords to extract (default: 10).
    @JsonKey(name: 'max_keywords') int? maxKeywords,

    /// Minimum score threshold (0.0-1.0, default: 0.0).
    ///
    /// Keywords with scores below this threshold are filtered out.
    /// Note: Score ranges differ between algorithms.
    @JsonKey(name: 'min_score') double? minScore,

    /// N-gram range for keyword extraction (min, max).
    ///
    /// (1, 1) = unigrams only.
    /// (1, 2) = unigrams and bigrams.
    /// (1, 3) = unigrams, bigrams, and trigrams (default).
    @JsonKey(name: 'ngram_range') List<int>? ngramRange,

    /// RAKE-specific tuning parameters.
    @JsonKey(name: 'rake_params') RakeParams? rakeParams,

    /// YAKE-specific tuning parameters.
    @JsonKey(name: 'yake_params') YakeParams? yakeParams,
  }) = _KeywordConfig;

  factory KeywordConfig.fromJson(Map<String, Object?> json) =>
      _$KeywordConfigFromJson(json);
}
