// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'delete_documents_response.freezed.dart';
part 'delete_documents_response.g.dart';

/// Response for deletion operation
@Freezed()
abstract class DeleteDocumentsResponse with _$DeleteDocumentsResponse {
  const factory DeleteDocumentsResponse({
    /// Number of documents deleted
    @JsonKey(name: 'deleted_count') required int deletedCount,
  }) = _DeleteDocumentsResponse;

  factory DeleteDocumentsResponse.fromJson(Map<String, Object?> json) =>
      _$DeleteDocumentsResponseFromJson(json);
}
