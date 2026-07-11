// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delete_documents_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_DeleteDocumentsRequest _$DeleteDocumentsRequestFromJson(
  Map<String, dynamic> json,
) => _DeleteDocumentsRequest(
  filter: json['filter'],
  ids: (json['ids'] as List<dynamic>?)?.map((e) => e as String).toList(),
);

Map<String, dynamic> _$DeleteDocumentsRequestToJson(
  _DeleteDocumentsRequest instance,
) => <String, dynamic>{'filter': instance.filter, 'ids': instance.ids};
