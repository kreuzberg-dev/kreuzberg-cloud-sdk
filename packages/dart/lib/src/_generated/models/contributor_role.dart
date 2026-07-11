// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'contributor_role.freezed.dart';
part 'contributor_role.g.dart';

/// JATS contributor with role.
@Freezed()
abstract class ContributorRole with _$ContributorRole {
  const factory ContributorRole({
    /// Contributor display name.
    required String name,

    /// Contributor role (e.g. `"author"`, `"editor"`).
    String? role,
  }) = _ContributorRole;

  factory ContributorRole.fromJson(Map<String, Object?> json) =>
      _$ContributorRoleFromJson(json);
}
