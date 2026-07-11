// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_collections_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ListCollectionsResponse _$ListCollectionsResponseFromJson(
  Map<String, dynamic> json,
) => _ListCollectionsResponse(
  collections: (json['collections'] as List<dynamic>)
      .map((e) => CollectionResponse.fromJson(e as Map<String, dynamic>))
      .toList(),
  limit: (json['limit'] as num).toInt(),
  offset: (json['offset'] as num).toInt(),
  total: (json['total'] as num).toInt(),
);

Map<String, dynamic> _$ListCollectionsResponseToJson(
  _ListCollectionsResponse instance,
) => <String, dynamic>{
  'collections': instance.collections,
  'limit': instance.limit,
  'offset': instance.offset,
  'total': instance.total,
};
