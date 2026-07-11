// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'format_metadata.dart';

part 'docx_metadata.freezed.dart';
part 'docx_metadata.g.dart';

/// Word document metadata.
///
/// Extracted from DOCX files using shared Office Open XML metadata extraction.
/// Integrates with `office_metadata` module for core/app/custom properties.
@Freezed()
abstract class DocxMetadata with _$DocxMetadata {
  const factory DocxMetadata({
    /// Application properties from docProps/app.xml (Word-specific statistics).
    ///
    /// Contains word count, page count, paragraph count, editing time, etc.
    /// DOCX-specific variant of Office application properties.
    @JsonKey(name: 'app_properties') dynamic appProperties,

    /// Core properties from docProps/core.xml (Dublin Core metadata).
    ///
    /// Contains title, creator, subject, keywords, dates, etc.
    /// Shared format across DOCX/PPTX/XLSX documents.
    @JsonKey(name: 'core_properties') dynamic coreProperties,

    /// Custom properties from docProps/custom.xml (user-defined properties).
    ///
    /// Contains key-value pairs defined by users or applications.
    /// Values can be strings, numbers, booleans, or dates.
    @JsonKey(name: 'custom_properties') Map<String, dynamic>? customProperties,
  }) = _DocxMetadata;

  factory DocxMetadata.fromJson(Map<String, Object?> json) =>
      _$DocxMetadataFromJson(json);
}
