// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'code_chunk_info.freezed.dart';
part 'code_chunk_info.g.dart';

/// A single structurally-meaningful code chunk produced by tree-sitter parsing.
///
/// Purpose-built payload owned by xberg — deliberately does not expose the upstream.
/// `tree_sitter_language_pack` types, so binding generators never need to resolve an.
/// external crate's types across FFI/language boundaries.
@Freezed()
abstract class CodeChunkInfo with _$CodeChunkInfo {
  const factory CodeChunkInfo({
    /// Exclusive end byte offset of this chunk in the original source.
    @JsonKey(name: 'byte_end') required int byteEnd,

    /// Inclusive start byte offset of this chunk in the original source.
    @JsonKey(name: 'byte_start') required int byteStart,

    /// Hierarchical path of enclosing structural items (e.g. `["MyClass", "my_method"]`).
    @JsonKey(name: 'context_path') required List<String> contextPath,

    /// Tree-sitter node kinds that appear at the top level of this chunk (e.g.
    /// `"function_definition"`, `"class_definition"`).
    @JsonKey(name: 'node_types') required List<String> nodeTypes,

    /// The raw source text of this chunk.
    required String text,
  }) = _CodeChunkInfo;

  factory CodeChunkInfo.fromJson(Map<String, Object?> json) =>
      _$CodeChunkInfoFromJson(json);
}
