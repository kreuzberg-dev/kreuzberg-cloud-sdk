// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fiction_book_metadata.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_FictionBookMetadata _$FictionBookMetadataFromJson(Map<String, dynamic> json) =>
    _FictionBookMetadata(
      annotation: json['annotation'] as String?,
      genres: (json['genres'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      sequences: (json['sequences'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$FictionBookMetadataToJson(
  _FictionBookMetadata instance,
) => <String, dynamic>{
  'annotation': instance.annotation,
  'genres': instance.genres,
  'sequences': instance.sequences,
};
