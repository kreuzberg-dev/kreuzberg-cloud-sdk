// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'reranker_spec.freezed.dart';
part 'reranker_spec.g.dart';

/// Caller-specified reranker.
@Freezed(unionKey: 'type')
sealed class RerankerSpec with _$RerankerSpec {
  /// Local ONNX cross-encoder preset.
  const factory RerankerSpec.preset({
    /// Preset name: `fast | balanced | quality | multilingual`.
    required String name,
  }) = RerankerSpecPreset;

  /// Platform-managed LLM reranker.
  const factory RerankerSpec.llm({
    /// Optional model override. When omitted, the platform default is used.
    String? model,
  }) = RerankerSpecLlm;

  factory RerankerSpec.fromJson(Map<String, Object?> json) =>
  _$RerankerSpecFromJson(json);
}
