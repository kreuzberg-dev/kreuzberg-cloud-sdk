// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'qr_code.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_QrCode _$QrCodeFromJson(Map<String, dynamic> json) => _QrCode(
  payload: json['payload'] as String,
  bbox: json['bbox'] == null
      ? null
      : QrBoundingBox.fromJson(json['bbox'] as Map<String, dynamic>),
  confidence: (json['confidence'] as num?)?.toDouble(),
);

Map<String, dynamic> _$QrCodeToJson(_QrCode instance) => <String, dynamic>{
  'payload': instance.payload,
  'bbox': instance.bbox,
  'confidence': instance.confidence,
};
