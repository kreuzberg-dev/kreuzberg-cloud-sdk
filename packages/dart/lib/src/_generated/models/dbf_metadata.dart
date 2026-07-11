// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'dbf_field_info.dart';
import 'format_metadata.dart';

part 'dbf_metadata.freezed.dart';
part 'dbf_metadata.g.dart';

/// dBASE (DBF) file metadata.
@Freezed()
abstract class DbfMetadata with _$DbfMetadata {
  const factory DbfMetadata({
    /// Number of field (column) definitions.
    @JsonKey(name: 'field_count') required int fieldCount,

    /// Total number of data records in the DBF file.
    @JsonKey(name: 'record_count') required int recordCount,

    /// Descriptor for each field in the table schema.
    List<DbfFieldInfo>? fields,
  }) = _DbfMetadata;

  factory DbfMetadata.fromJson(Map<String, Object?> json) =>
      _$DbfMetadataFromJson(json);
}
