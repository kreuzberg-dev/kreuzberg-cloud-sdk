// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rake_params.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_RakeParams _$RakeParamsFromJson(Map<String, dynamic> json) => _RakeParams(
  maxWordsPerPhrase: (json['max_words_per_phrase'] as num).toInt(),
  minWordLength: (json['min_word_length'] as num).toInt(),
);

Map<String, dynamic> _$RakeParamsToJson(_RakeParams instance) =>
    <String, dynamic>{
      'max_words_per_phrase': instance.maxWordsPerPhrase,
      'min_word_length': instance.minWordLength,
    };
