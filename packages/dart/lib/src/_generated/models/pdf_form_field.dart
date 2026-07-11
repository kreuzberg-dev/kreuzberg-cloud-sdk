// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'bounding_box.dart';
import 'form_field_type.dart';

part 'pdf_form_field.freezed.dart';
part 'pdf_form_field.g.dart';

/// A form field extracted from a PDF's AcroForm or XFA structure.
///
/// Populated by the PDF extractor when [`PdfConfig::extract_form_fields`] is.
/// enabled and the document is a fillable form. Supports both AcroForm (standard).
/// and XFA (XML Forms Architecture) layers. When both are present, AcroForm fields.
/// take priority (canonical fallback per PDF spec), and XFA-only fields are appended.
/// The collection is empty for non-form PDFs and for non-PDF formats.
///
/// [`PdfConfig::extract_form_fields`]: crate::core::config::PdfConfig::extract_form_fields.
@Freezed()
abstract class PdfFormField with _$PdfFormField {
  const factory PdfFormField({
    /// Classified field type.
    @JsonKey(name: 'field_type') required FormFieldType fieldType,

    /// Fully-qualified field name (dotted path from the form root).
    @JsonKey(name: 'full_name') required String fullName,

    /// Partial field name (the leaf name within the field hierarchy).
    required String name,

    /// Widget bounding box on its page, if known.
    BoundingBox? bbox,

    /// Default field value, if any.
    @JsonKey(name: 'default_value') String? defaultValue,

    /// Raw field-flags bitmask (read-only, required, multiline, …).
    int? flags,

    /// Maximum input length for text fields, if specified.
    @JsonKey(name: 'max_length') int? maxLength,

    /// 1-indexed page the field's widget appears on. Currently always `None` for.
    /// AcroForm fields; page assignment is a deferred enhancement requiring spatial.
    /// analysis of widget annotations per page.
    int? page,

    /// Tooltip / alternate field description, if present.
    String? tooltip,

    /// Current field value, if any.
    String? value,
  }) = _PdfFormField;

  factory PdfFormField.fromJson(Map<String, Object?> json) =>
      _$PdfFormFieldFromJson(json);
}
