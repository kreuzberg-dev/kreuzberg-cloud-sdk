// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'translation.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Translation _$TranslationFromJson(Map<String, dynamic> json) => _Translation(
  content: json['content'] as String,
  targetLang: json['target_lang'] as String,
  formattedContent: json['formatted_content'] as String?,
  sourceLang: json['source_lang'] as String?,
);

Map<String, dynamic> _$TranslationToJson(_Translation instance) =>
    <String, dynamic>{
      'content': instance.content,
      'target_lang': instance.targetLang,
      'formatted_content': instance.formattedContent,
      'source_lang': instance.sourceLang,
    };
