// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'format_metadata.dart';
import 'year_range.dart';

part 'citation_metadata.freezed.dart';
part 'citation_metadata.g.dart';

/// Citation file metadata (RIS, PubMed, EndNote).
@Freezed()
abstract class CitationMetadata with _$CitationMetadata {
  const factory CitationMetadata({
    /// Total number of citation records in the file.
    @JsonKey(name: 'citation_count') required int citationCount,

    /// Author names collected across all citation records.
    List<String>? authors,

    /// DOI identifiers found in the citation records.
    List<String>? dois,

    /// Detected citation file format (e.g. `"ris"`, `"pubmed"`, `"endnote"`).
    String? format,

    /// Keywords collected from all citation records.
    List<String>? keywords,

    /// Earliest and latest publication years found in the file.
    @JsonKey(name: 'year_range') YearRange? yearRange,
  }) = _CitationMetadata;

  factory CitationMetadata.fromJson(Map<String, Object?> json) =>
      _$CitationMetadataFromJson(json);
}
