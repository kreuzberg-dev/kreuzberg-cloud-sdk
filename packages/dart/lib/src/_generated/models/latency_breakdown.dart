// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'latency_breakdown.freezed.dart';
part 'latency_breakdown.g.dart';

/// Latency breakdown (milliseconds) for a single retrieve call.
@Freezed()
abstract class LatencyBreakdown with _$LatencyBreakdown {
  const factory LatencyBreakdown({
    /// Primary-stage retrieve (vector / fts / hybrid).
    @JsonKey(name: 'retrieve_ms') required int retrieveMs,

    /// End-to-end including response serialization.
    @JsonKey(name: 'total_ms') required int totalMs,

    /// Reranker call (when active). `None` when rerank was off or.
    /// fell back to primary order.
    @JsonKey(name: 'rerank_ms') int? rerankMs,
  }) = _LatencyBreakdown;

  factory LatencyBreakdown.fromJson(Map<String, Object?> json) =>
      _$LatencyBreakdownFromJson(json);
}
