// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'classification_label.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ClassificationLabel _$ClassificationLabelFromJson(Map<String, dynamic> json) =>
    _ClassificationLabel(
      label: json['label'] as String,
      confidence: (json['confidence'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$ClassificationLabelToJson(
  _ClassificationLabel instance,
) => <String, dynamic>{
  'label': instance.label,
  'confidence': instance.confidence,
};
