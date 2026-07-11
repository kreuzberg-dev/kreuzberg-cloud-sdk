// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'webhook_event.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_WebhookEvent _$WebhookEventFromJson(Map<String, dynamic> json) =>
    _WebhookEvent(
      event: json['event'] as String,
      jobId: json['job_id'] as String,
      timestamp: json['timestamp'] as String,
      error: json['error'] == null
          ? null
          : WebhookEventError.fromJson(json['error'] as Map<String, dynamic>),
      metadata: (json['metadata'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as String),
      ),
      results: json['results'],
    );

Map<String, dynamic> _$WebhookEventToJson(_WebhookEvent instance) =>
    <String, dynamic>{
      'event': instance.event,
      'job_id': instance.jobId,
      'timestamp': instance.timestamp,
      'error': instance.error,
      'metadata': instance.metadata,
      'results': instance.results,
    };
