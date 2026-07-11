// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'error_body.freezed.dart';
part 'error_body.g.dart';

/// Error body containing code, message, and optional details.
@Freezed()
abstract class ErrorBody with _$ErrorBody {
  const factory ErrorBody({
    /// Stable string error code (e.g., "rag.vector.dim_mismatch", "not_found")
    required String code,

    /// Human-readable error message
    required String message,

    /// Optional detailed error information (context-specific)
    dynamic details,
  }) = _ErrorBody;

  factory ErrorBody.fromJson(Map<String, Object?> json) =>
      _$ErrorBodyFromJson(json);
}
