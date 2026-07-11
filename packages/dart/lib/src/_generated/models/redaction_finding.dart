// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'pii_category.dart';
import 'redaction_strategy.dart';

part 'redaction_finding.freezed.dart';
part 'redaction_finding.g.dart';

/// One redaction event: which span was rewritten, why, and with what.
@Freezed()
abstract class RedactionFinding with _$RedactionFinding {
  const factory RedactionFinding({
    /// PII category that fired this redaction.
    required PiiCategory category,

    /// Byte-offset end (exclusive) in the original `ExtractedDocument::content`.
    required int end,

    /// String that replaced the original mention. Always present; for `Drop` the.
    /// replacement is the empty string.
    @JsonKey(name: 'replacement_token') required String replacementToken,

    /// Byte-offset start in the original (pre-redaction) `ExtractedDocument::content`.
    required int start,

    /// Strategy applied to this finding (mask, hash, token-replace, drop).
    required RedactionStrategy strategy,
  }) = _RedactionFinding;

  factory RedactionFinding.fromJson(Map<String, Object?> json) =>
      _$RedactionFindingFromJson(json);
}
