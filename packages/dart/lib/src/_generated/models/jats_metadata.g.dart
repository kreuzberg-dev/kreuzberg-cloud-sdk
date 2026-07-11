// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'jats_metadata.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_JatsMetadata _$JatsMetadataFromJson(Map<String, dynamic> json) =>
    _JatsMetadata(
      contributorRoles: (json['contributor_roles'] as List<dynamic>?)
          ?.map((e) => ContributorRole.fromJson(e as Map<String, dynamic>))
          .toList(),
      copyright: json['copyright'] as String?,
      historyDates: (json['history_dates'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as String),
      ),
      license: json['license'] as String?,
    );

Map<String, dynamic> _$JatsMetadataToJson(_JatsMetadata instance) =>
    <String, dynamic>{
      'contributor_roles': instance.contributorRoles,
      'copyright': instance.copyright,
      'history_dates': instance.historyDates,
      'license': instance.license,
    };
