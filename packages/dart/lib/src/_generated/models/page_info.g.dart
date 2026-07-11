// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'page_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PageInfo _$PageInfoFromJson(Map<String, dynamic> json) => _PageInfo(
  number: (json['number'] as num).toInt(),
  hasVectorGraphics: json['has_vector_graphics'] as bool?,
  hidden: json['hidden'] as bool?,
  imageCount: (json['image_count'] as num?)?.toInt(),
  isBlank: json['is_blank'] as bool?,
  tableCount: (json['table_count'] as num?)?.toInt(),
  title: json['title'] as String?,
);

Map<String, dynamic> _$PageInfoToJson(_PageInfo instance) => <String, dynamic>{
  'number': instance.number,
  'has_vector_graphics': instance.hasVectorGraphics,
  'hidden': instance.hidden,
  'image_count': instance.imageCount,
  'is_blank': instance.isBlank,
  'table_count': instance.tableCount,
  'title': instance.title,
};
