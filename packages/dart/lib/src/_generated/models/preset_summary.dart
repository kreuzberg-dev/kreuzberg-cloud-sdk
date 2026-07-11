// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'preset_call_mode.dart';
import 'preset_category.dart';

part 'preset_summary.freezed.dart';
part 'preset_summary.g.dart';

/// Lightweight projection of a preset, returned by `GET /v1/presets`.
@Freezed()
abstract class PresetSummary with _$PresetSummary {
  const factory PresetSummary({
    required PresetCategory category,
    required String description,
    @JsonKey(name: 'emit_citations') required bool emitCitations,

    /// Stable sha256 fingerprint used by clients to detect updates.
    required String fingerprint,
    required String id,
    @JsonKey(name: 'preferred_call_mode')
    required PresetCallMode preferredCallMode,
    @JsonKey(name: 'schema_name') required String schemaName,
    required String version,
    List<String>? tags,
  }) = _PresetSummary;

  factory PresetSummary.fromJson(Map<String, Object?> json) =>
      _$PresetSummaryFromJson(json);
}
