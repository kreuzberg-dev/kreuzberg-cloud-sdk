// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'code_chunk_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CodeChunkInfo _$CodeChunkInfoFromJson(Map<String, dynamic> json) =>
    _CodeChunkInfo(
      byteEnd: (json['byte_end'] as num).toInt(),
      byteStart: (json['byte_start'] as num).toInt(),
      contextPath: (json['context_path'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      nodeTypes: (json['node_types'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      text: json['text'] as String,
    );

Map<String, dynamic> _$CodeChunkInfoToJson(_CodeChunkInfo instance) =>
    <String, dynamic>{
      'byte_end': instance.byteEnd,
      'byte_start': instance.byteStart,
      'context_path': instance.contextPath,
      'node_types': instance.nodeTypes,
      'text': instance.text,
    };
