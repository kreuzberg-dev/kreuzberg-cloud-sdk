// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'format_metadata.dart';

part 'epub_metadata.freezed.dart';
part 'epub_metadata.g.dart';

/// EPUB metadata (Dublin Core extensions).
@Freezed()
abstract class EpubMetadata with _$EpubMetadata {
  const factory EpubMetadata({
    /// Path or identifier of the cover image within the EPUB container.
    @JsonKey(name: 'cover_image') String? coverImage,

    /// Dublin Core `coverage` field (geographic or temporal scope).
    String? coverage,

    /// Dublin Core `format` field (media type of the resource).
    @JsonKey(name: 'dc_format') String? dcFormat,

    /// Dublin Core `type` field (nature or genre of the resource).
    @JsonKey(name: 'dc_type') String? dcType,

    /// Dublin Core `relation` field (related resource identifier).
    String? relation,

    /// Dublin Core `source` field (origin resource identifier).
    String? source,
  }) = _EpubMetadata;

  factory EpubMetadata.fromJson(Map<String, Object?> json) =>
      _$EpubMetadataFromJson(json);
}
