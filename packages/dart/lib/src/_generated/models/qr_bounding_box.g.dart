// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'qr_bounding_box.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_QrBoundingBox _$QrBoundingBoxFromJson(Map<String, dynamic> json) =>
    _QrBoundingBox(
      height: (json['height'] as num).toInt(),
      width: (json['width'] as num).toInt(),
      x: (json['x'] as num).toInt(),
      y: (json['y'] as num).toInt(),
    );

Map<String, dynamic> _$QrBoundingBoxToJson(_QrBoundingBox instance) =>
    <String, dynamic>{
      'height': instance.height,
      'width': instance.width,
      'x': instance.x,
      'y': instance.y,
    };
