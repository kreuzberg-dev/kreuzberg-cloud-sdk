// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'year_range.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_YearRange _$YearRangeFromJson(Map<String, dynamic> json) => _YearRange(
  max: (json['max'] as num?)?.toInt(),
  min: (json['min'] as num?)?.toInt(),
  years: (json['years'] as List<dynamic>?)
      ?.map((e) => (e as num).toInt())
      .toList(),
);

Map<String, dynamic> _$YearRangeToJson(_YearRange instance) =>
    <String, dynamic>{
      'max': instance.max,
      'min': instance.min,
      'years': instance.years,
    };
