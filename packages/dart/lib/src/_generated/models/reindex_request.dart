// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'webhook_config.dart';

part 'reindex_request.freezed.dart';
part 'reindex_request.g.dart';

/// Request to reindex a document (re-chunk, re-enrich, re-embed)
@Freezed()
abstract class ReindexRequest with _$ReindexRequest {
  const factory ReindexRequest({
    /// If true, re-extract from source object via xberg before re-chunking
    @JsonKey(name: 're_extract') bool? reExtract,

    /// Optional webhook for reindex completion/failure delivery.
    WebhookConfig? webhook,
  }) = _ReindexRequest;

  factory ReindexRequest.fromJson(Map<String, Object?> json) =>
      _$ReindexRequestFromJson(json);
}
