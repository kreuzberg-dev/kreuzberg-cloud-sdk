// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'integration_input.dart';

part 'document_input.freezed.dart';
part 'document_input.g.dart';

/// Document input for JSON extraction requests.
///
/// A document is sourced **either** inline (`data`, base64-encoded) **or** by.
/// reference to a connected integration (`integration`). Exactly one of the two.
/// must be present; supplying both or neither is a 400.
@Freezed()
abstract class DocumentInput with _$DocumentInput {
  const factory DocumentInput({
    /// Original filename
    required String filename,

    /// MIME type of the document. For an integration-sourced document this is a.
    /// hint only — the worker prefers the connector-reported type at fetch time.
    @JsonKey(name: 'mime_type') required String mimeType,

    /// Base64-encoded document data. Mutually exclusive with `integration`.
    String? data,

    /// Optional client-supplied document identifier. When provided, this.
    /// extraction is recorded as a version of that logical document and the.
    /// response carries `document_id` + `version_sequence`. Server mints a.
    /// new UUID when absent. Not supported with `integration` (versioning needs.
    /// a content hash the integration source has not fetched yet) — the combo.
    /// is rejected with 400.
    @JsonKey(name: 'document_id') String? documentId,

    /// Reference to a document in a connected integration. Mutually exclusive.
    /// with `data`; the worker resolves the bytes through the integration's.
    /// source connector at fetch time.
    IntegrationInput? integration,
  }) = _DocumentInput;

  factory DocumentInput.fromJson(Map<String, Object?> json) =>
      _$DocumentInputFromJson(json);
}
