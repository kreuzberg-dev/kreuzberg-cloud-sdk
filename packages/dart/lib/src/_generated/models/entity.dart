// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'entity_category.dart';

part 'entity.freezed.dart';
part 'entity.g.dart';

/// A single named entity detected in the extracted text.
@Freezed()
abstract class Entity with _$Entity {
  const factory Entity({
    /// Canonical category the entity belongs to (PERSON, ORG, LOCATION, etc.).
    required EntityCategory category,

    /// Byte-offset span in `ExtractedDocument::content` where the mention ends (exclusive).
    required int end,

    /// Byte-offset span in `ExtractedDocument::content` where the mention starts.
    required int start,

    /// Raw mention text exactly as it appeared in the source.
    required String text,

    /// Backend-reported confidence in `[0.0, 1.0]`. `None` when the backend does not.
    /// expose confidence scores.
    double? confidence,
  }) = _Entity;

  factory Entity.fromJson(Map<String, Object?> json) => _$EntityFromJson(json);
}
