// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'migrate_progress.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_MigrateProgress _$MigrateProgressFromJson(Map<String, dynamic> json) =>
    _MigrateProgress(
      currentPhase: json['current_phase'] as String,
      documentsDualWritten: (json['documents_dual_written'] as num).toInt(),
      documentsTotal: (json['documents_total'] as num).toInt(),
    );

Map<String, dynamic> _$MigrateProgressToJson(_MigrateProgress instance) =>
    <String, dynamic>{
      'current_phase': instance.currentPhase,
      'documents_dual_written': instance.documentsDualWritten,
      'documents_total': instance.documentsTotal,
    };
