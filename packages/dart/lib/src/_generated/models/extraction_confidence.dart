// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'schema_compliance.dart';

part 'extraction_confidence.freezed.dart';
part 'extraction_confidence.g.dart';

/// Combined confidence on `[0, 1]`.
///
/// When OCR did not run, the `ocr_aggregate` weight folds into `text_coverage`.
/// so the weighted sum still totals 1.0.
@Freezed()
abstract class ExtractionConfidence with _$ExtractionConfidence {
  const factory ExtractionConfidence({
    /// Weighted blend in `[0, 1]`.  The value compared against the fallback threshold.
    required double combined,

    /// Whether the merged output validates against the preset schema.
    @JsonKey(name: 'schema_compliance')
    required SchemaCompliance schemaCompliance,

    /// Fraction of pages with a usable text layer.
    @JsonKey(name: 'text_coverage') required double textCoverage,

    /// Mean OCR per-element recognition confidence when OCR ran; `None` when it did not.
    @JsonKey(name: 'ocr_aggregate') double? ocrAggregate,
  }) = _ExtractionConfidence;

  factory ExtractionConfidence.fromJson(Map<String, Object?> json) =>
      _$ExtractionConfidenceFromJson(json);
}
