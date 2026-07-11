// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'translation.freezed.dart';
part 'translation.g.dart';

/// Translation of the extracted content.
///
/// Holds the translated rendition of `ExtractedDocument::content` and (when.
/// `preserve_markup` was requested) the translated `formatted_content`. Chunks.
/// are translated in place inside `ExtractedDocument::chunks[*].content` rather.
/// than duplicated here.
@Freezed()
abstract class Translation with _$Translation {
  const factory Translation({
    /// Translated plain-text body. Matches the shape of `ExtractedDocument::content`.
    required String content,

    /// BCP-47 language tag the translation was produced into (e.g. `"de"`, `"fr-CA"`).
    @JsonKey(name: 'target_lang') required String targetLang,

    /// Translated markup body (Markdown / HTML / etc.) when `preserve_markup` was.
    /// enabled on the config. `None` otherwise.
    @JsonKey(name: 'formatted_content') String? formattedContent,

    /// BCP-47 source language. `None` when the translation backend was asked to detect.
    @JsonKey(name: 'source_lang') String? sourceLang,
  }) = _Translation;

  factory Translation.fromJson(Map<String, Object?> json) =>
      _$TranslationFromJson(json);
}
