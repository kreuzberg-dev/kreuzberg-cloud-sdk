// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'format_metadata.dart';

part 'csv_metadata.freezed.dart';
part 'csv_metadata.g.dart';

/// CSV/TSV file metadata.
@Freezed()
abstract class CsvMetadata with _$CsvMetadata {
  const factory CsvMetadata({
    /// Number of columns detected.
    @JsonKey(name: 'column_count') required int columnCount,

    /// Whether the first row was treated as a header.
    @JsonKey(name: 'has_header') required bool hasHeader,

    /// Total number of data rows (excluding the header row if present).
    @JsonKey(name: 'row_count') required int rowCount,

    /// Inferred data type for each column (e.g. `"string"`, `"integer"`, `"float"`).
    @JsonKey(name: 'column_types') List<String>? columnTypes,

    /// Field delimiter character (e.g. `","` or `"\t"`).
    String? delimiter,
  }) = _CsvMetadata;

  factory CsvMetadata.fromJson(Map<String, Object?> json) =>
      _$CsvMetadataFromJson(json);
}
