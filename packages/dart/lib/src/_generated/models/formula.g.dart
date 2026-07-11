// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'formula.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Formula _$FormulaFromJson(Map<String, dynamic> json) => _Formula(
  bbox: BoundingBox.fromJson(json['bbox'] as Map<String, dynamic>),
  latex: json['latex'] as String,
  page: (json['page'] as num).toInt(),
);

Map<String, dynamic> _$FormulaToJson(_Formula instance) => <String, dynamic>{
  'bbox': instance.bbox,
  'latex': instance.latex,
  'page': instance.page,
};
