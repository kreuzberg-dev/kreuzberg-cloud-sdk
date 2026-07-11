// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'webhook_event_error.freezed.dart';
part 'webhook_event_error.g.dart';

/// Error information included in webhook completion events.
@Freezed()
abstract class WebhookEventError with _$WebhookEventError {
  const factory WebhookEventError({
    /// Error code string carried from the job's `ErrorInfo` (e.g. "2001").
    required String code,

    /// Human-readable error message.
    required String message,
  }) = _WebhookEventError;

  factory WebhookEventError.fromJson(Map<String, Object?> json) =>
      _$WebhookEventErrorFromJson(json);
}
