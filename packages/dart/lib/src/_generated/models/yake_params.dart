// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'yake_params.freezed.dart';
part 'yake_params.g.dart';

/// YAKE-specific parameters.
@Freezed()
abstract class YakeParams with _$YakeParams {
  const factory YakeParams({
    /// Window size for co-occurrence analysis (default: 2).
    ///
    /// Controls the context window for computing co-occurrence statistics.
    @JsonKey(name: 'window_size') required int windowSize,
  }) = _YakeParams;

  factory YakeParams.fromJson(Map<String, Object?> json) =>
      _$YakeParamsFromJson(json);
}
