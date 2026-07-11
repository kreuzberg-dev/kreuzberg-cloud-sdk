// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'integration_input.freezed.dart';
part 'integration_input.g.dart';

/// A reference to a document living in a connected integration.
@Freezed()
abstract class IntegrationInput with _$IntegrationInput {
  const factory IntegrationInput({
    /// The `integrations.id` (hyphenated UUID) the document is fetched through.
    @JsonKey(name: 'integration_id') required String integrationId,

    /// Connector-specific document identifier (e.g. a Google Drive file id).
    @JsonKey(name: 'resource_id') required String resourceId,
  }) = _IntegrationInput;

  factory IntegrationInput.fromJson(Map<String, Object?> json) =>
      _$IntegrationInputFromJson(json);
}
