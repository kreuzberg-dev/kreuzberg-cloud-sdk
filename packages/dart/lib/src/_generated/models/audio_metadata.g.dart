// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'audio_metadata.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AudioMetadata _$AudioMetadataFromJson(Map<String, dynamic> json) =>
    _AudioMetadata(
      bitrate: (json['bitrate'] as num?)?.toInt(),
      channels: (json['channels'] as num?)?.toInt(),
      codec: json['codec'] as String?,
      container: json['container'] as String?,
      durationMs: (json['duration_ms'] as num?)?.toInt(),
      sampleRateHz: (json['sample_rate_hz'] as num?)?.toInt(),
    );

Map<String, dynamic> _$AudioMetadataToJson(_AudioMetadata instance) =>
    <String, dynamic>{
      'bitrate': instance.bitrate,
      'channels': instance.channels,
      'codec': instance.codec,
      'container': instance.container,
      'duration_ms': instance.durationMs,
      'sample_rate_hz': instance.sampleRateHz,
    };
