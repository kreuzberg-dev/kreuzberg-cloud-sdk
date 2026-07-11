// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'collection_response.dart';

part 'list_collections_response.freezed.dart';
part 'list_collections_response.g.dart';

/// Response for listing collections (paginated)
@Freezed()
abstract class ListCollectionsResponse with _$ListCollectionsResponse {
  const factory ListCollectionsResponse({
    /// List of collections
    required List<CollectionResponse> collections,

    /// Maximum results per page
    required int limit,

    /// Number of results skipped
    required int offset,

    /// Total number of collections for this project
    required int total,
  }) = _ListCollectionsResponse;

  factory ListCollectionsResponse.fromJson(Map<String, Object?> json) =>
      _$ListCollectionsResponseFromJson(json);
}
