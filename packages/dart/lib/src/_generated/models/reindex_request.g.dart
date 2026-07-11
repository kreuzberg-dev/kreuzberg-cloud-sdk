// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reindex_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ReindexRequest _$ReindexRequestFromJson(Map<String, dynamic> json) =>
    _ReindexRequest(
      reExtract: json['re_extract'] as bool?,
      webhook: json['webhook'] == null
          ? null
          : WebhookConfig.fromJson(json['webhook'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ReindexRequestToJson(_ReindexRequest instance) =>
    <String, dynamic>{
      're_extract': instance.reExtract,
      'webhook': instance.webhook,
    };
