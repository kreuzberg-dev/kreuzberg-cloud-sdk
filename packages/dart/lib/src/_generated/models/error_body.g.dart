// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'error_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ErrorBody _$ErrorBodyFromJson(Map<String, dynamic> json) => _ErrorBody(
  code: json['code'] as String,
  message: json['message'] as String,
  details: json['details'],
);

Map<String, dynamic> _$ErrorBodyToJson(_ErrorBody instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'details': instance.details,
    };
