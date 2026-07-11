// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'extraction_config.dart';

part 'extraction_options.freezed.dart';
part 'extraction_options.g.dart';

/// Extraction options (shared by JSON and multipart requests)
@Freezed()
abstract class ExtractionOptions with _$ExtractionOptions {
  const factory ExtractionOptions({
    /// Free-form context map merged into the preset's `context_template`.
    /// (Mustache `{{key}}`) before the system prompt is sent to the model.
    /// Ignored when `preset` is not set.
    Map<String, String>? context,

    /// Xberg extraction configuration (optional, null = defaults).
    @JsonKey(name: 'extraction_config') ExtractionConfig? extractionConfig,

    /// Preset identifier (matches `crates/presets/library/<id>/v1.json`).
    /// When set, the worker resolves the preset for structured-extraction.
    /// configuration. Mutually compatible with `extraction_config`.
    String? preset,

    /// Saved preset ID (project-scoped user-created preset).
    /// When set, the preset's schema, system_prompt, context_template,.
    /// preferred_call_mode, and emit_citations are merged into extraction_config.
    /// Mutually exclusive with `preset` and raw `extraction_config.structured_extraction.schema`.
    @JsonKey(name: 'saved_preset_id') String? savedPresetId,

    /// When set to true and the document is a PDF, enable multi-document.
    /// boundary detection and fan-out orchestration.
    @JsonKey(name: 'split_documents') bool? splitDocuments,
  }) = _ExtractionOptions;

  factory ExtractionOptions.fromJson(Map<String, Object?> json) =>
      _$ExtractionOptionsFromJson(json);
}
