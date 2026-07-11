// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'pii_category.freezed.dart';
part 'pii_category.g.dart';

/// PII categories the pattern engine recognises.
@Freezed()
abstract class PiiCategory with _$PiiCategory {
  const factory PiiCategory() = _PiiCategory;

  factory PiiCategory.fromJson(Map<String, Object?> json) =>
      _$PiiCategoryFromJson(json);
}
