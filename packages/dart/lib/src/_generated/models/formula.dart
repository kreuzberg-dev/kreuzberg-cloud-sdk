// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'bounding_box.dart';

part 'formula.freezed.dart';
part 'formula.g.dart';

/// A mathematical formula detected and recognized in a document.
///
/// Populated by the layout-guided formula pipeline: regions classified as.
/// `LayoutClass::Formula` are routed to the formula OCR task, which returns the.
/// LaTeX source for the region. The field is always present on.
/// [`ExtractedDocument`](super::extraction::ExtractedDocument) but only populated.
/// when the `layout-detection` feature is active and the document contains.
/// formula regions.
@Freezed()
abstract class Formula with _$Formula {
  const factory Formula({
    /// Bounding box of the formula region on its page, in rendered-image pixel coordinates.
    ///
    /// The coordinates are in the space of the OCR-rendered page image at the OCR DPI.
    /// (typically 300 DPI). These coordinates are NOT comparable to bounding boxes from.
    /// native PDF text extraction, which use PDF point coordinates.
    required BoundingBox bbox,

    /// LaTeX source of the recognized formula, without surrounding `$$` delimiters.
    ///
    /// This field contains the raw LaTeX code as produced by the OCR backend.
    /// To render the formula in Markdown or other formats, wrap with `$$..$$` delimiters as needed.
    required String latex,

    /// 1-indexed page number the formula appears on in the document.
    ///
    /// This is set by the extraction pipeline based on which page the formula was found on.
    required int page,
  }) = _Formula;

  factory Formula.fromJson(Map<String, Object?> json) =>
      _$FormulaFromJson(json);
}
