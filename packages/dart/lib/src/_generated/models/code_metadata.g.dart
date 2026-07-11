// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'code_metadata.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CodeMetadata _$CodeMetadataFromJson(Map<String, dynamic> json) =>
    _CodeMetadata(
      chunks: (json['chunks'] as List<dynamic>)
          .map((e) => CodeChunkInfo.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$CodeMetadataToJson(_CodeMetadata instance) =>
    <String, dynamic>{'chunks': instance.chunks};
