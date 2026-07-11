// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'format_metadata.dart';

part 'fiction_book_metadata.freezed.dart';
part 'fiction_book_metadata.g.dart';

/// FictionBook (FB2) metadata.
@Freezed()
abstract class FictionBookMetadata with _$FictionBookMetadata {
  const factory FictionBookMetadata({
    /// Short annotation / summary from the FB2 `<annotation>` element.
    String? annotation,

    /// Genre tags as declared in the FB2 `<genre>` elements.
    List<String>? genres,

    /// Book series (sequence) names, if any.
    List<String>? sequences,
  }) = _FictionBookMetadata;

  factory FictionBookMetadata.fromJson(Map<String, Object?> json) =>
      _$FictionBookMetadataFromJson(json);
}
