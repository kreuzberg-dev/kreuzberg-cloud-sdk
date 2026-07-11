// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'document_counts.freezed.dart';
part 'document_counts.g.dart';

/// Cheap structural counts for an extracted document.
///
/// Populated on every [`ExtractedDocument`] returned by `extract` /.
/// `extract_batch`, regardless of whether the heavy `pages` / `images`.
/// collections are materialized. A caller that only needs "how many pages /.
/// tables / images did this document have?" (reporting, cost estimation,.
/// progress, quotas) can read these without enabling per-page or per-image.
/// extraction.
///
/// The page count comes from the parse (the extractor already walks the page.
/// tree); it does not require opting into per-page content. `pages` is `0` for.
/// inputs that are not page-addressable (e.g. plain text).
@Freezed()
abstract class DocumentCounts with _$DocumentCounts {
  const factory DocumentCounts({
    /// Images detected in the document.
    required int images,

    /// Total pages in the source document (`0` when not page-addressable).
    required int pages,

    /// Tables detected in the document.
    required int tables,
  }) = _DocumentCounts;

  factory DocumentCounts.fromJson(Map<String, Object?> json) =>
      _$DocumentCountsFromJson(json);
}
