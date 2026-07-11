// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'rake_params.freezed.dart';
part 'rake_params.g.dart';

/// RAKE-specific parameters.
@Freezed()
abstract class RakeParams with _$RakeParams {
  const factory RakeParams({
    /// Maximum words in a keyword phrase (default: 3).
    @JsonKey(name: 'max_words_per_phrase') required int maxWordsPerPhrase,

    /// Minimum word length to consider (default: 1).
    @JsonKey(name: 'min_word_length') required int minWordLength,
  }) = _RakeParams;

  factory RakeParams.fromJson(Map<String, Object?> json) =>
      _$RakeParamsFromJson(json);
}
