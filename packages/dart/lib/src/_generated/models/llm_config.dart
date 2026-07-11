// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'llm_config.freezed.dart';
part 'llm_config.g.dart';

/// LLM provider configuration routed through liter-llm.
@Freezed()
abstract class LlmConfig with _$LlmConfig {
  const factory LlmConfig({
    /// liter-llm routing identifier, e.g. "openai/gpt-4o-mini".
    required String model,

    /// API key for the provider. Mutually exclusive with `use_managed = true`.
    /// Treated as a secret — never logged.
    @JsonKey(name: 'api_key') String? apiKey,

    /// Override the provider base URL.
    @JsonKey(name: 'base_url') String? baseUrl,

    /// Max retry attempts.
    @JsonKey(name: 'max_retries') int? maxRetries,

    /// Maximum tokens to generate.
    @JsonKey(name: 'max_tokens') int? maxTokens,

    /// Sampling temperature.
    double? temperature,

    /// Request timeout in seconds.
    @JsonKey(name: 'timeout_secs') int? timeoutSecs,

    /// When true, the worker substitutes the Xberg-managed provider key.
    /// from the worker environment (resolved by provider prefix of `model`).
    /// Requires the project to have `llm_managed_keys_enabled` set.
    @JsonKey(name: 'use_managed') bool? useManaged,
  }) = _LlmConfig;

  factory LlmConfig.fromJson(Map<String, Object?> json) =>
      _$LlmConfigFromJson(json);
}
