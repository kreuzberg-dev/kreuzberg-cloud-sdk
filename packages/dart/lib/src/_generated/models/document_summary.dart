// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'summary_strategy.dart';

part 'document_summary.freezed.dart';
part 'document_summary.g.dart';

/// Summary of an extracted document.
@Freezed()
abstract class DocumentSummary with _$DocumentSummary {
  const factory DocumentSummary({
    /// Strategy that produced this summary.
    required SummaryStrategy strategy,

    /// Summary text (plain prose).
    required String text,

    /// Approximate token count of the summary, when known.
    @JsonKey(name: 'token_count') int? tokenCount,
  }) = _DocumentSummary;

  factory DocumentSummary.fromJson(Map<String, Object?> json) =>
      _$DocumentSummaryFromJson(json);
}
