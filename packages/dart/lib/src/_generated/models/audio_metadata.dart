// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'format_metadata.dart';

part 'audio_metadata.freezed.dart';
part 'audio_metadata.g.dart';

/// Audio/video file metadata.
///
/// Populated from container tags (ID3v2, MP4 atoms, Vorbis comments, etc.) and.
/// PCM decode properties. Available when the `transcription-types` feature is enabled.
@Freezed()
abstract class AudioMetadata with _$AudioMetadata {
  const factory AudioMetadata({
    /// Audio bitrate in kbps from the source file tags/properties.
    int? bitrate,

    /// Number of audio channels (1 = mono, 2 = stereo).
    int? channels,

    /// Audio codec (e.g. "mp3", "aac", "opus", "flac").
    String? codec,

    /// Container format (e.g. "mpeg", "mp4", "ogg", "wav").
    String? container,

    /// Duration in milliseconds derived from the decoded audio stream.
    @JsonKey(name: 'duration_ms') int? durationMs,

    /// Sample rate in Hz after decode (always 16000 when resampled for Whisper).
    @JsonKey(name: 'sample_rate_hz') int? sampleRateHz,
  }) = _AudioMetadata;

  factory AudioMetadata.fromJson(Map<String, Object?> json) =>
      _$AudioMetadataFromJson(json);
}
