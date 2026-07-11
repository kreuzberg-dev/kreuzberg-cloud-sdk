// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'format_metadata.dart';
import 'year_range.dart';

part 'bibtex_metadata.freezed.dart';
part 'bibtex_metadata.g.dart';

/// BibTeX bibliography metadata.
@Freezed()
abstract class BibtexMetadata with _$BibtexMetadata {
  const factory BibtexMetadata({
    /// Number of entries in the bibliography.
    @JsonKey(name: 'entry_count') required int entryCount,

    /// Author names collected across all bibliography entries.
    List<String>? authors,

    /// BibTeX citation keys (e.g. `"knuth1984"`) for all entries.
    @JsonKey(name: 'citation_keys') List<String>? citationKeys,

    /// Count of entries grouped by BibTeX entry type (e.g. `"article"` → 5).
    @JsonKey(name: 'entry_types') Map<String, int>? entryTypes,

    /// Earliest and latest publication years found in the bibliography.
    @JsonKey(name: 'year_range') YearRange? yearRange,
  }) = _BibtexMetadata;

  factory BibtexMetadata.fromJson(Map<String, Object?> json) =>
      _$BibtexMetadataFromJson(json);
}
