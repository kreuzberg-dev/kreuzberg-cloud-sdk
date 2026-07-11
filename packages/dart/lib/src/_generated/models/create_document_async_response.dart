// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_document_async_response.freezed.dart';
part 'create_document_async_response.g.dart';

/// Response for asynchronous document creation
@Freezed()
abstract class CreateDocumentAsyncResponse with _$CreateDocumentAsyncResponse {
  const factory CreateDocumentAsyncResponse({
    /// The pending document ID (for reference)
    @JsonKey(name: 'document_id') required String documentId,

    /// Job identifier for polling
    @JsonKey(name: 'job_id') required String jobId,

    /// Polling endpoint
    required String poll,

    /// Lifecycle status
    required String status,
  }) = _CreateDocumentAsyncResponse;

  factory CreateDocumentAsyncResponse.fromJson(Map<String, Object?> json) =>
      _$CreateDocumentAsyncResponseFromJson(json);
}
