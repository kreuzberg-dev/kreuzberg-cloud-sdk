// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'page_classification.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PageClassification _$PageClassificationFromJson(Map<String, dynamic> json) =>
    _PageClassification(
      labels: (json['labels'] as List<dynamic>)
          .map((e) => ClassificationLabel.fromJson(e as Map<String, dynamic>))
          .toList(),
      pageNumber: (json['page_number'] as num).toInt(),
    );

Map<String, dynamic> _$PageClassificationToJson(_PageClassification instance) =>
    <String, dynamic>{
      'labels': instance.labels,
      'page_number': instance.pageNumber,
    };
