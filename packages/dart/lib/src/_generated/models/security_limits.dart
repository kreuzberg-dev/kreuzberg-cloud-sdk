// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'security_limits.freezed.dart';
part 'security_limits.g.dart';

/// Configuration for security limits across extractors.
///
/// All limits are intentionally conservative to prevent DoS attacks.
/// while still supporting legitimate documents.
@Freezed()
abstract class SecurityLimits with _$SecurityLimits {
  const factory SecurityLimits({
    /// Maximum uncompressed size for archives (500 MB)
    @JsonKey(name: 'max_archive_size') @Default(524288000) int maxArchiveSize,

    /// Maximum compression ratio before flagging as potential bomb (100:1)
    @JsonKey(name: 'max_compression_ratio')
    @Default(100)
    int maxCompressionRatio,

    /// Maximum string growth per document (100 MB)
    @JsonKey(name: 'max_content_size') @Default(104857600) int maxContentSize,

    /// Maximum length of any single XML entity / attribute / token (1 MiB).
    /// This is a per-token cap, NOT a total cap — billion-laughs class.
    /// attacks where a single entity expands to hundreds of MB are caught.
    /// here, while normal long text content (a paragraph, a CDATA block) is.
    /// caught by `max_content_size` instead.
    @JsonKey(name: 'max_entity_length') @Default(1048576) int maxEntityLength,

    /// Maximum number of files in archive (10,000)
    @JsonKey(name: 'max_files_in_archive')
    @Default(10000)
    int maxFilesInArchive,

    /// Maximum iterations per operation
    @JsonKey(name: 'max_iterations') @Default(10000000) int maxIterations,

    /// Maximum nesting depth for structures (100)
    @JsonKey(name: 'max_nesting_depth') @Default(1024) int maxNestingDepth,

    /// Maximum cells per table (100,000)
    @JsonKey(name: 'max_table_cells') @Default(100000) int maxTableCells,

    /// Maximum XML depth (100 levels)
    @JsonKey(name: 'max_xml_depth') @Default(1024) int maxXmlDepth,
  }) = _SecurityLimits;

  factory SecurityLimits.fromJson(Map<String, Object?> json) =>
      _$SecurityLimitsFromJson(json);
}
