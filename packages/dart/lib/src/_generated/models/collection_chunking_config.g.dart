// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'collection_chunking_config.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CollectionChunkingConfig _$CollectionChunkingConfigFromJson(
  Map<String, dynamic> json,
) => _CollectionChunkingConfig(
  chunkerType: json['chunker_type'] as String?,
  maxCharacters: (json['max_characters'] as num?)?.toInt(),
  overlap: (json['overlap'] as num?)?.toInt(),
  topicThreshold: (json['topic_threshold'] as num?)?.toDouble(),
  trim: json['trim'] as bool?,
);

Map<String, dynamic> _$CollectionChunkingConfigToJson(
  _CollectionChunkingConfig instance,
) => <String, dynamic>{
  'chunker_type': instance.chunkerType,
  'max_characters': instance.maxCharacters,
  'overlap': instance.overlap,
  'topic_threshold': instance.topicThreshold,
  'trim': instance.trim,
};
