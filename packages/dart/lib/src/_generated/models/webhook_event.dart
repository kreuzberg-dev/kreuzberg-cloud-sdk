// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'webhook_event_error.dart';

part 'webhook_event.freezed.dart';
part 'webhook_event.g.dart';

/// Webhook event payload delivered to customer endpoints on job completion/failure.
///
/// This is the exact JSON payload sent via HTTP POST to the webhook URL.
/// The payload is signed with HMAC-SHA256 (see `X-Webhook-Signature` header).
/// if a secret was configured.
///
/// The `results` field is present for successful extraction jobs and contains.
/// the extracted document data. For failed jobs, `error` is populated instead.
@Freezed()
abstract class WebhookEvent with _$WebhookEvent {
  const factory WebhookEvent({
    /// Event type: "job.completed" or "job.failed".
    required String event,

    /// The job ID that triggered this webhook.
    @JsonKey(name: 'job_id') required String jobId,

    /// RFC3339-formatted timestamp when the job completed.
    required String timestamp,

    /// Optional error details (present only if job failed or had partial failure).
    WebhookEventError? error,

    /// Optional key-value metadata from the webhook configuration,.
    /// echoed back for request correlation.
    Map<String, String>? metadata,

    /// Optional extraction results (present only if job succeeded).
    /// The shape depends on the extraction config (e.g., structured output,.
    /// table detection, OCR results). Consumers should inspect the `event` type.
    /// to determine expected fields.
    dynamic results,
  }) = _WebhookEvent;

  factory WebhookEvent.fromJson(Map<String, Object?> json) =>
      _$WebhookEventFromJson(json);
}
