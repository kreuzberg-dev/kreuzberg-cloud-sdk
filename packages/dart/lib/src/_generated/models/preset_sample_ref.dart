// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'preset_sample_ref.freezed.dart';
part 'preset_sample_ref.g.dart';

/// Public pointer to bundled sample data exposed via `GET /v1/presets/{id}/sample`.
@Freezed()
abstract class PresetSampleRef with _$PresetSampleRef {
  const factory PresetSampleRef({
    /// URL path (relative to the API root) to fetch the sample input bytes.
    @JsonKey(name: 'input_url') required String inputUrl,

    /// URL path (relative to the API root) to fetch the reference output JSON.
    @JsonKey(name: 'output_url') required String outputUrl,
  }) = _PresetSampleRef;

  factory PresetSampleRef.fromJson(Map<String, Object?> json) =>
      _$PresetSampleRefFromJson(json);
}
