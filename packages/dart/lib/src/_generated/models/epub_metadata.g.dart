// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'epub_metadata.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_EpubMetadata _$EpubMetadataFromJson(Map<String, dynamic> json) =>
    _EpubMetadata(
      coverImage: json['cover_image'] as String?,
      coverage: json['coverage'] as String?,
      dcFormat: json['dc_format'] as String?,
      dcType: json['dc_type'] as String?,
      relation: json['relation'] as String?,
      source: json['source'] as String?,
    );

Map<String, dynamic> _$EpubMetadataToJson(_EpubMetadata instance) =>
    <String, dynamic>{
      'cover_image': instance.coverImage,
      'coverage': instance.coverage,
      'dc_format': instance.dcFormat,
      'dc_type': instance.dcType,
      'relation': instance.relation,
      'source': instance.source,
    };
