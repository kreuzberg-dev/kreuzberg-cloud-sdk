// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'format_metadata.dart';

part 'pdf_metadata.freezed.dart';
part 'pdf_metadata.g.dart';

/// PDF-specific metadata.
///
/// Contains metadata fields specific to PDF documents that are not in the common.
/// `Metadata` structure. Common fields like title, authors, keywords, and dates.
/// are at the `Metadata` level.
@Freezed()
abstract class PdfMetadata with _$PdfMetadata {
  const factory PdfMetadata({
    /// First page height in points (1/72 inch)
    int? height,

    /// Whether the PDF is encrypted/password-protected
    @JsonKey(name: 'is_encrypted') bool? isEncrypted,

    /// Total number of pages in the PDF document
    @JsonKey(name: 'page_count') int? pageCount,

    /// PDF version (e.g., "1.7", "2.0")
    @JsonKey(name: 'pdf_version') String? pdfVersion,

    /// PDF producer (application that created the PDF)
    String? producer,

    /// First page width in points (1/72 inch)
    int? width,
  }) = _PdfMetadata;

  factory PdfMetadata.fromJson(Map<String, Object?> json) =>
      _$PdfMetadataFromJson(json);
}
