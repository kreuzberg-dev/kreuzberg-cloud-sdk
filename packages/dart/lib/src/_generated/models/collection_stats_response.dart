// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'collection_stats_response.freezed.dart';
part 'collection_stats_response.g.dart';

/// Collection statistics response
@Freezed()
abstract class CollectionStatsResponse with _$CollectionStatsResponse {
  const factory CollectionStatsResponse({
    /// Total chunks across all documents
    @JsonKey(name: 'chunk_count') required int chunkCount,

    /// Total documents in collection
    @JsonKey(name: 'document_count') required int documentCount,

    /// Last ingestion timestamp (RFC3339)
    @JsonKey(name: 'last_ingested_at') String? lastIngestedAt,
  }) = _CollectionStatsResponse;

  factory CollectionStatsResponse.fromJson(Map<String, Object?> json) =>
      _$CollectionStatsResponseFromJson(json);
}
