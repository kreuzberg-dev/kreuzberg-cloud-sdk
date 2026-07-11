// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'dbf_field_info.freezed.dart';
part 'dbf_field_info.g.dart';

/// dBASE field information.
@Freezed()
abstract class DbfFieldInfo with _$DbfFieldInfo {
  const factory DbfFieldInfo({
    /// dBASE field type character (e.g. `"C"` for character, `"N"` for numeric).
    @JsonKey(name: 'field_type') required String fieldType,

    /// Field (column) name.
    required String name,
  }) = _DbfFieldInfo;

  factory DbfFieldInfo.fromJson(Map<String, Object?> json) =>
      _$DbfFieldInfoFromJson(json);
}
