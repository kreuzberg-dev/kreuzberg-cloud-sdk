// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'contributor_role.dart';
import 'format_metadata.dart';

part 'jats_metadata.freezed.dart';
part 'jats_metadata.g.dart';

/// JATS (Journal Article Tag Suite) metadata.
@Freezed()
abstract class JatsMetadata with _$JatsMetadata {
  const factory JatsMetadata({
    /// Authors and contributors with their stated roles.
    @JsonKey(name: 'contributor_roles') List<ContributorRole>? contributorRoles,

    /// Copyright statement from the article's `<permissions>` element.
    String? copyright,

    /// Publication history dates keyed by event type (e.g. `"received"`, `"accepted"`).
    @JsonKey(name: 'history_dates') Map<String, String>? historyDates,

    /// Open-access license URI from the article's `<license>` element.
    String? license,
  }) = _JatsMetadata;

  factory JatsMetadata.fromJson(Map<String, Object?> json) =>
      _$JatsMetadataFromJson(json);
}
