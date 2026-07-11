// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'security_limits.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SecurityLimits _$SecurityLimitsFromJson(
  Map<String, dynamic> json,
) => _SecurityLimits(
  maxArchiveSize: (json['max_archive_size'] as num?)?.toInt() ?? 524288000,
  maxCompressionRatio: (json['max_compression_ratio'] as num?)?.toInt() ?? 100,
  maxContentSize: (json['max_content_size'] as num?)?.toInt() ?? 104857600,
  maxEntityLength: (json['max_entity_length'] as num?)?.toInt() ?? 1048576,
  maxFilesInArchive: (json['max_files_in_archive'] as num?)?.toInt() ?? 10000,
  maxIterations: (json['max_iterations'] as num?)?.toInt() ?? 10000000,
  maxNestingDepth: (json['max_nesting_depth'] as num?)?.toInt() ?? 1024,
  maxTableCells: (json['max_table_cells'] as num?)?.toInt() ?? 100000,
  maxXmlDepth: (json['max_xml_depth'] as num?)?.toInt() ?? 1024,
);

Map<String, dynamic> _$SecurityLimitsToJson(_SecurityLimits instance) =>
    <String, dynamic>{
      'max_archive_size': instance.maxArchiveSize,
      'max_compression_ratio': instance.maxCompressionRatio,
      'max_content_size': instance.maxContentSize,
      'max_entity_length': instance.maxEntityLength,
      'max_files_in_archive': instance.maxFilesInArchive,
      'max_iterations': instance.maxIterations,
      'max_nesting_depth': instance.maxNestingDepth,
      'max_table_cells': instance.maxTableCells,
      'max_xml_depth': instance.maxXmlDepth,
    };
