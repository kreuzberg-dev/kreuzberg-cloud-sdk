// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'citation_metadata.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CitationMetadata _$CitationMetadataFromJson(Map<String, dynamic> json) =>
    _CitationMetadata(
      citationCount: (json['citation_count'] as num).toInt(),
      authors: (json['authors'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      dois: (json['dois'] as List<dynamic>?)?.map((e) => e as String).toList(),
      format: json['format'] as String?,
      keywords: (json['keywords'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      yearRange: json['year_range'] == null
          ? null
          : YearRange.fromJson(json['year_range'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CitationMetadataToJson(_CitationMetadata instance) =>
    <String, dynamic>{
      'citation_count': instance.citationCount,
      'authors': instance.authors,
      'dois': instance.dois,
      'format': instance.format,
      'keywords': instance.keywords,
      'year_range': instance.yearRange,
    };
