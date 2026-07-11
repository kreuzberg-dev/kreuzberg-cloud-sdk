// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'code_chunk_info.dart';
import 'format_metadata.dart';

part 'code_metadata.freezed.dart';
part 'code_metadata.g.dart';

/// Code-format metadata: the structural chunks produced by tree-sitter parsing.
///
/// Wrapped by [`FormatMetadata::Code`]. Kept as a named struct (rather than an inline.
/// enum-variant body) so serde can tag it under internal tagging and utoipa can emit a.
/// referenceable `CodeMetadata` component in the OpenAPI schema.
@Freezed()
abstract class CodeMetadata with _$CodeMetadata {
  const factory CodeMetadata({
    /// Structural code chunks (function/class/module boundaries).
    required List<CodeChunkInfo> chunks,
  }) = _CodeMetadata;

  factory CodeMetadata.fromJson(Map<String, Object?> json) =>
      _$CodeMetadataFromJson(json);
}
