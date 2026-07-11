// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'redaction_report.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_RedactionReport _$RedactionReportFromJson(Map<String, dynamic> json) =>
    _RedactionReport(
      findings: (json['findings'] as List<dynamic>)
          .map((e) => RedactionFinding.fromJson(e as Map<String, dynamic>))
          .toList(),
      totalRedacted: (json['total_redacted'] as num).toInt(),
    );

Map<String, dynamic> _$RedactionReportToJson(_RedactionReport instance) =>
    <String, dynamic>{
      'findings': instance.findings,
      'total_redacted': instance.totalRedacted,
    };
