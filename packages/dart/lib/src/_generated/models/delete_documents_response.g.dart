// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delete_documents_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_DeleteDocumentsResponse _$DeleteDocumentsResponseFromJson(
  Map<String, dynamic> json,
) => _DeleteDocumentsResponse(
  deletedCount: (json['deleted_count'] as num).toInt(),
);

Map<String, dynamic> _$DeleteDocumentsResponseToJson(
  _DeleteDocumentsResponse instance,
) => <String, dynamic>{'deleted_count': instance.deletedCount};
