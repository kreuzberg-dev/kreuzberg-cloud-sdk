// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'classification_label.dart';

part 'page_classification.freezed.dart';
part 'page_classification.g.dart';

/// Classification result for a single page.
@Freezed()
abstract class PageClassification with _$PageClassification {
  const factory PageClassification({
    /// Labels assigned to the page. Single-label classification yields exactly one.
    /// entry; multi-label classification yields any subset of the configured label set.
    required List<ClassificationLabel> labels,

    /// 1-indexed page number this classification belongs to.
    @JsonKey(name: 'page_number') required int pageNumber,
  }) = _PageClassification;

  factory PageClassification.fromJson(Map<String, Object?> json) =>
      _$PageClassificationFromJson(json);
}
