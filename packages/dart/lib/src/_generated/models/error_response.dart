// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'error_body.dart';

part 'error_response.freezed.dart';
part 'error_response.g.dart';

/// Canonical error response body.
///
/// Wraps the nested error envelope required by all API error paths.
@Freezed()
abstract class ErrorResponse with _$ErrorResponse {
  const factory ErrorResponse({
    /// The nested error body with code, message, and optional details.
    required ErrorBody error,
  }) = _ErrorResponse;

  factory ErrorResponse.fromJson(Map<String, Object?> json) =>
      _$ErrorResponseFromJson(json);
}
