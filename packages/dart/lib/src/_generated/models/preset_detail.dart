// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'preset_call_mode.dart';
import 'preset_category.dart';
import 'preset_sample_ref.dart';

part 'preset_detail.freezed.dart';
part 'preset_detail.g.dart';

/// Full preset detail, returned by `GET /v1/presets/{id}`.
@Freezed()
abstract class PresetDetail with _$PresetDetail {
  const factory PresetDetail({
    required PresetCategory category,
    required String description,
    @JsonKey(name: 'emit_citations') required bool emitCitations,
    required String fingerprint,
    required String id,
    @JsonKey(name: 'preferred_call_mode')
    required PresetCallMode preferredCallMode,

    /// JSON Schema (Draft 2020-12) describing the structured output shape.
    required dynamic schema,
    @JsonKey(name: 'schema_name') required String schemaName,
    @JsonKey(name: 'system_prompt') required String systemPrompt,
    required String version,
    @JsonKey(name: 'context_template') String? contextTemplate,
    PresetSampleRef? sample,
    List<String>? tags,
  }) = _PresetDetail;

  factory PresetDetail.fromJson(Map<String, Object?> json) =>
      _$PresetDetailFromJson(json);
}
