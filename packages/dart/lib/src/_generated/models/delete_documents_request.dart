// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'delete_documents_request.freezed.dart';
part 'delete_documents_request.g.dart';

/// OpenAPI schema for [`DeleteDocumentsRequest`].
@Freezed()
abstract class DeleteDocumentsRequest with _$DeleteDocumentsRequest {
  const factory DeleteDocumentsRequest({
    /// Vectorstore filter expression.
    dynamic filter,

    /// List of document UUIDs to delete.
    List<String>? ids,
  }) = _DeleteDocumentsRequest;

  factory DeleteDocumentsRequest.fromJson(Map<String, Object?> json) =>
      _$DeleteDocumentsRequestFromJson(json);
}
