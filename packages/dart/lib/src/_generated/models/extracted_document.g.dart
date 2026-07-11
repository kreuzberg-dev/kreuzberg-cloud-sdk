// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'extracted_document.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ExtractedDocument _$ExtractedDocumentFromJson(Map<String, dynamic> json) =>
    _ExtractedDocument(
      content: json['content'] as String,
      metadata: Metadata.fromJson(json['metadata'] as Map<String, dynamic>),
      mimeType: json['mime_type'] as String,
      tables: (json['tables'] as List<dynamic>)
          .map((e) => Table.fromJson(e as Map<String, dynamic>))
          .toList(),
      annotations: (json['annotations'] as List<dynamic>?)
          ?.map((e) => PdfAnnotation.fromJson(e as Map<String, dynamic>))
          .toList(),
      children: (json['children'] as List<dynamic>?)
          ?.map((e) => ArchiveEntry.fromJson(e as Map<String, dynamic>))
          .toList(),
      chunks: (json['chunks'] as List<dynamic>?)
          ?.map((e) => Chunk.fromJson(e as Map<String, dynamic>))
          .toList(),
      codeIntelligence: json['code_intelligence'],
      counts: json['counts'] == null
          ? null
          : DocumentCounts.fromJson(json['counts'] as Map<String, dynamic>),
      detectedLanguages: (json['detected_languages'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      djotContent: json['djot_content'] == null
          ? null
          : DjotContent.fromJson(json['djot_content'] as Map<String, dynamic>),
      document: json['document'] == null
          ? null
          : DocumentStructure.fromJson(
              json['document'] as Map<String, dynamic>,
            ),
      elements: (json['elements'] as List<dynamic>?)
          ?.map((e) => Element.fromJson(e as Map<String, dynamic>))
          .toList(),
      entities: (json['entities'] as List<dynamic>?)
          ?.map((e) => Entity.fromJson(e as Map<String, dynamic>))
          .toList(),
      extractedKeywords: (json['extracted_keywords'] as List<dynamic>?)
          ?.map((e) => Keyword.fromJson(e as Map<String, dynamic>))
          .toList(),
      extractionConfidence: json['extraction_confidence'] == null
          ? null
          : ExtractionConfidence.fromJson(
              json['extraction_confidence'] as Map<String, dynamic>,
            ),
      extractionMethod: json['extraction_method'] == null
          ? null
          : ExtractionMethod.fromJson(json['extraction_method'] as String),
      formFields: (json['form_fields'] as List<dynamic>?)
          ?.map((e) => PdfFormField.fromJson(e as Map<String, dynamic>))
          .toList(),
      formulas: (json['formulas'] as List<dynamic>?)
          ?.map((e) => Formula.fromJson(e as Map<String, dynamic>))
          .toList(),
      images: (json['images'] as List<dynamic>?)
          ?.map((e) => ExtractedImage.fromJson(e as Map<String, dynamic>))
          .toList(),
      llmUsage: (json['llm_usage'] as List<dynamic>?)
          ?.map((e) => LlmUsage.fromJson(e as Map<String, dynamic>))
          .toList(),
      ocrElements: (json['ocr_elements'] as List<dynamic>?)
          ?.map((e) => OcrElement.fromJson(e as Map<String, dynamic>))
          .toList(),
      pageClassifications: (json['page_classifications'] as List<dynamic>?)
          ?.map((e) => PageClassification.fromJson(e as Map<String, dynamic>))
          .toList(),
      pages: (json['pages'] as List<dynamic>?)
          ?.map((e) => PageContent.fromJson(e as Map<String, dynamic>))
          .toList(),
      processingWarnings: (json['processing_warnings'] as List<dynamic>?)
          ?.map((e) => ProcessingWarning.fromJson(e as Map<String, dynamic>))
          .toList(),
      qualityScore: (json['quality_score'] as num?)?.toDouble(),
      redactionReport: json['redaction_report'] == null
          ? null
          : RedactionReport.fromJson(
              json['redaction_report'] as Map<String, dynamic>,
            ),
      revisions: (json['revisions'] as List<dynamic>?)
          ?.map((e) => DocumentRevision.fromJson(e as Map<String, dynamic>))
          .toList(),
      structuredOutput: json['structured_output'],
      summary: json['summary'] == null
          ? null
          : DocumentSummary.fromJson(json['summary'] as Map<String, dynamic>),
      translation: json['translation'] == null
          ? null
          : Translation.fromJson(json['translation'] as Map<String, dynamic>),
      uris: (json['uris'] as List<dynamic>?)
          ?.map((e) => ExtractedUri.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ExtractedDocumentToJson(_ExtractedDocument instance) =>
    <String, dynamic>{
      'content': instance.content,
      'metadata': instance.metadata,
      'mime_type': instance.mimeType,
      'tables': instance.tables,
      'annotations': instance.annotations,
      'children': instance.children,
      'chunks': instance.chunks,
      'code_intelligence': instance.codeIntelligence,
      'counts': instance.counts,
      'detected_languages': instance.detectedLanguages,
      'djot_content': instance.djotContent,
      'document': instance.document,
      'elements': instance.elements,
      'entities': instance.entities,
      'extracted_keywords': instance.extractedKeywords,
      'extraction_confidence': instance.extractionConfidence,
      'extraction_method': instance.extractionMethod,
      'form_fields': instance.formFields,
      'formulas': instance.formulas,
      'images': instance.images,
      'llm_usage': instance.llmUsage,
      'ocr_elements': instance.ocrElements,
      'page_classifications': instance.pageClassifications,
      'pages': instance.pages,
      'processing_warnings': instance.processingWarnings,
      'quality_score': instance.qualityScore,
      'redaction_report': instance.redactionReport,
      'revisions': instance.revisions,
      'structured_output': instance.structuredOutput,
      'summary': instance.summary,
      'translation': instance.translation,
      'uris': instance.uris,
    };
