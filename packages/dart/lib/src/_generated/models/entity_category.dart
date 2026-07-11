// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'entity_category.freezed.dart';
part 'entity_category.g.dart';

/// Standard entity categories produced by built-in NER backends.
///
/// The `Custom(String)` variant lets caller-supplied categories (e.g. LLM.
/// schemas) flow through without losing fidelity to the consumer.
@Freezed()
abstract class EntityCategory with _$EntityCategory {
  const factory EntityCategory() = _EntityCategory;

  factory EntityCategory.fromJson(Map<String, Object?> json) =>
      _$EntityCategoryFromJson(json);
}
