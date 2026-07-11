// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'redaction_finding.dart';

part 'redaction_report.freezed.dart';
part 'redaction_report.g.dart';

/// Audit report describing what the redaction processor found and how it replaced it.
///
/// The redactor returns this alongside the rewritten content so compliance, replay, and.
/// audit-log consumers can see exactly what fired. Offsets are relative to the *original*.
/// pre-redaction `content` and are intended for audit reconstruction only — the original.
/// bytes are dropped at the end of the pipeline.
@Freezed()
abstract class RedactionReport with _$RedactionReport {
  const factory RedactionReport({
    /// Individual redaction findings in original-source byte order.
    required List<RedactionFinding> findings,

    /// Total number of redactions applied across the document.
    @JsonKey(name: 'total_redacted') required int totalRedacted,
  }) = _RedactionReport;

  factory RedactionReport.fromJson(Map<String, Object?> json) =>
      _$RedactionReportFromJson(json);
}
