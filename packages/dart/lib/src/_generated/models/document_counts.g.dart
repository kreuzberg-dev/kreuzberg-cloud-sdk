// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'document_counts.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_DocumentCounts _$DocumentCountsFromJson(Map<String, dynamic> json) =>
    _DocumentCounts(
      images: (json['images'] as num).toInt(),
      pages: (json['pages'] as num).toInt(),
      tables: (json['tables'] as num).toInt(),
    );

Map<String, dynamic> _$DocumentCountsToJson(_DocumentCounts instance) =>
    <String, dynamic>{
      'images': instance.images,
      'pages': instance.pages,
      'tables': instance.tables,
    };
