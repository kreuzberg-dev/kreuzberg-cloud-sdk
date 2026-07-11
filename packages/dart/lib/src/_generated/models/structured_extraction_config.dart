// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'llm_config.dart';

part 'structured_extraction_config.freezed.dart';
part 'structured_extraction_config.g.dart';

/// LLM-driven structured extraction.
///
/// When set, the worker passes the extracted document text and the supplied.
/// JSON schema to an LLM provider (routed through liter-llm) and returns the.
/// validated JSON on `ExtractionResult::structured_output`.
@Freezed()
abstract class StructuredExtractionConfig with _$StructuredExtractionConfig {
  const factory StructuredExtractionConfig({
    /// LLM provider + model configuration.
    required LlmConfig llm,

    /// JSON Schema (draft-07) the structured output must conform to.
    required dynamic schema,

    /// Custom Jinja2 prompt template. When omitted, the xberg default is used.
    String? prompt,

    /// Optional human-readable schema description supplied to the LLM.
    @JsonKey(name: 'schema_description') String? schemaDescription,

    /// Schema name passed to the LLM's structured-output mode. Defaults to "extraction".
    @JsonKey(name: 'schema_name') String? schemaName,

    /// Strict mode — output must match the schema exactly (provider-dependent).
    bool? strict,
  }) = _StructuredExtractionConfig;

  factory StructuredExtractionConfig.fromJson(Map<String, Object?> json) =>
      _$StructuredExtractionConfigFromJson(json);
}
