// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rag_job_progress.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_RagJobProgress _$RagJobProgressFromJson(Map<String, dynamic> json) =>
    _RagJobProgress(
      currentPhase: json['current_phase'] as String,
      documentsProcessed: (json['documents_processed'] as num).toInt(),
      documentsTotal: (json['documents_total'] as num).toInt(),
    );

Map<String, dynamic> _$RagJobProgressToJson(_RagJobProgress instance) =>
    <String, dynamic>{
      'current_phase': instance.currentPhase,
      'documents_processed': instance.documentsProcessed,
      'documents_total': instance.documentsTotal,
    };
