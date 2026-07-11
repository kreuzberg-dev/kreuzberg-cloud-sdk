// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'classification_label.freezed.dart';
part 'classification_label.g.dart';

/// A single label + confidence pair.
@Freezed()
abstract class ClassificationLabel with _$ClassificationLabel {
  const factory ClassificationLabel({
    /// Label name as configured in `PageClassificationConfig::labels`.
    required String label,

    /// Backend-reported confidence in `[0.0, 1.0]`. `None` when the backend (e.g. an LLM.
    /// prompt without explicit confidence schema) did not report one.
    double? confidence,
  }) = _ClassificationLabel;

  factory ClassificationLabel.fromJson(Map<String, Object?> json) =>
      _$ClassificationLabelFromJson(json);
}
