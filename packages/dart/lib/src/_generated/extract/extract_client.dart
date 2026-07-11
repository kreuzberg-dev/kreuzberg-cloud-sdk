// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../models/extract_response.dart';
import '../models/extraction_options.dart';
import '../models/webhook_config.dart';

part 'extract_client.g.dart';

@RestApi()
abstract class ExtractClient {
  factory ExtractClient(Dio dio, {String? baseUrl}) = _ExtractClient;

  /// `POST /v1/extract` — Submit documents for extraction.
  ///
  /// Accepts `application/json` or `multipart/form-data`.
  ///
  /// **JSON body**: `{"documents": [...], "options": {...}, "webhook": {"url": "...", "secret": "...", "metadata": {...}}}`.
  ///
  /// **Multipart**: file parts (binary) + `webhook` part (JSON string) + optional `options` part (JSON string).
  ///
  /// Returns 202 Accepted with job IDs. Results are delivered via the configured webhook.
  ///
  /// [file] - A document file. Repeat with one binary part per file; the part's field.
  /// name (or filename) becomes the document filename and its `Content-Type`.
  /// the document MIME type.
  ///
  /// [options] - Optional `options` part — a JSON-encoded [`ExtractionOptions`].
  ///
  /// [webhook] - Optional `webhook` part — a JSON-encoded [`WebhookConfig`] for async.
  /// result delivery.
  @MultiPart()
  @POST('/v1/extract')
  Future<ExtractResponse> extract({
    @Part(name: 'file') required List<int> file,
    @Part(name: 'options') ExtractionOptions? options,
    @Part(name: 'webhook') WebhookConfig? webhook,
  });
}
