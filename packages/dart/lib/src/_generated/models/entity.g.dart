// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Entity _$EntityFromJson(Map<String, dynamic> json) => _Entity(
  category: EntityCategory.fromJson(json['category'] as Map<String, dynamic>),
  end: (json['end'] as num).toInt(),
  start: (json['start'] as num).toInt(),
  text: json['text'] as String,
  confidence: (json['confidence'] as num?)?.toDouble(),
);

Map<String, dynamic> _$EntityToJson(_Entity instance) => <String, dynamic>{
  'category': instance.category,
  'end': instance.end,
  'start': instance.start,
  'text': instance.text,
  'confidence': instance.confidence,
};
