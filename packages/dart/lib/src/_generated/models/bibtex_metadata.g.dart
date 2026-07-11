// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bibtex_metadata.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_BibtexMetadata _$BibtexMetadataFromJson(Map<String, dynamic> json) =>
    _BibtexMetadata(
      entryCount: (json['entry_count'] as num).toInt(),
      authors: (json['authors'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      citationKeys: (json['citation_keys'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      entryTypes: (json['entry_types'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, (e as num).toInt()),
      ),
      yearRange: json['year_range'] == null
          ? null
          : YearRange.fromJson(json['year_range'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$BibtexMetadataToJson(_BibtexMetadata instance) =>
    <String, dynamic>{
      'entry_count': instance.entryCount,
      'authors': instance.authors,
      'citation_keys': instance.citationKeys,
      'entry_types': instance.entryTypes,
      'year_range': instance.yearRange,
    };
