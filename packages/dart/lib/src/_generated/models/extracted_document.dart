// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'archive_entry.dart';
import 'chunk.dart';
import 'djot_content.dart';
import 'document_counts.dart';
import 'document_revision.dart';
import 'document_structure.dart';
import 'document_summary.dart';
import 'element.dart';
import 'entity.dart';
import 'extracted_image.dart';
import 'extracted_uri.dart';
import 'extraction_confidence.dart';
import 'extraction_method.dart';
import 'formula.dart';
import 'keyword.dart';
import 'llm_usage.dart';
import 'metadata.dart';
import 'ocr_element.dart';
import 'page_classification.dart';
import 'page_content.dart';
import 'pdf_annotation.dart';
import 'pdf_form_field.dart';
import 'processing_warning.dart';
import 'redaction_report.dart';
import 'table.dart';
import 'translation.dart';

part 'extracted_document.freezed.dart';
part 'extracted_document.g.dart';

/// Document extracted by the core extraction pipeline.
///
/// `extract` and `extract_batch` return an `ExtractionResult` envelope whose.
/// `results` field contains these per-document payloads.
@Freezed()
abstract class ExtractedDocument with _$ExtractedDocument {
  const factory ExtractedDocument({
    /// Plain-text representation of the extracted document content.
    required String content,

    /// Document-level metadata (author, title, dates, format-specific fields).
    required Metadata metadata,

    /// MIME type of the source document (e.g. `"application/pdf"`).
    @JsonKey(name: 'mime_type') required String mimeType,

    /// Tables extracted from the document, each with structured cell data.
    required List<Table> tables,

    /// PDF annotations extracted from the document.
    ///
    /// When annotation extraction is enabled via `PdfConfig::extract_annotations`,.
    /// this field contains text notes, highlights, links, stamps, and other.
    /// annotations found in PDF documents.
    List<PdfAnnotation>? annotations,

    /// Nested extraction results from archive contents.
    ///
    /// When extracting archives, each processable file inside produces its own.
    /// full extraction result. Set to `None` for non-archive formats.
    /// Use `max_archive_depth` in config to control recursion depth.
    List<ArchiveEntry>? children,

    /// Text chunks when chunking is enabled.
    ///
    /// When chunking configuration is provided, the content is split into.
    /// overlapping chunks for efficient processing. Each chunk contains the text,.
    /// optional embeddings (if enabled), and metadata about its position.
    List<Chunk>? chunks,

    /// Code intelligence results from tree-sitter analysis.
    ///
    /// Populated when extracting source code files with the `tree-sitter` feature.
    /// Contains metrics, structural analysis, imports/exports, comments,.
    /// docstrings, symbols, diagnostics, and optionally chunked code segments.
    ///
    /// Stored as an opaque JSON value so that all language bindings (Go, Java,.
    /// C#, …) can deserialize it as a raw JSON object rather than a typed struct.
    /// The underlying type is `tree_sitter_language_pack::ProcessResult`.
    @JsonKey(name: 'code_intelligence') dynamic codeIntelligence,

    /// Cheap structural counts (pages, tables, images).
    ///
    /// Always populated by the extraction pipeline, even when the `pages` /.
    /// `images` collections are `None`. See [`DocumentCounts`].
    DocumentCounts? counts,

    /// ISO 639-1 language codes detected in the document content.
    @JsonKey(name: 'detected_languages') List<String>? detectedLanguages,

    /// Rich Djot content structure (when extracting Djot documents).
    ///
    /// When extracting Djot documents with structured extraction enabled,.
    /// this field contains the full semantic structure including:.
    /// - Block-level elements with nesting.
    /// - Inline formatting with attributes.
    /// - Links, images, footnotes.
    /// - Math expressions.
    /// - Complete attribute information.
    ///
    /// The `content` field still contains plain text for backward compatibility.
    ///
    /// Always `None` for non-Djot documents.
    @JsonKey(name: 'djot_content') DjotContent? djotContent,

    /// Structured document tree (when document structure extraction is enabled).
    ///
    /// When `include_document_structure` is true in `ExtractionConfig`, this field.
    /// contains the full hierarchical representation of the document including:.
    /// - Heading-driven section nesting.
    /// - Table grids with cell-level metadata.
    /// - Content layer classification (body, header, footer, footnote).
    /// - Inline text annotations (formatting, links).
    /// - Bounding boxes and page numbers.
    ///
    /// Independent of `result_format` — can be combined with Unified or ElementBased.
    DocumentStructure? document,

    /// Semantic elements when element-based result format is enabled.
    ///
    /// When result_format is set to ElementBased, this field contains semantic.
    /// elements with type classification, unique identifiers, and metadata for.
    /// Unstructured-compatible element-based processing.
    List<Element>? elements,

    /// Named entities detected in `content` by the NER post-processor.
    ///
    /// `None` when no NER backend is configured. Populated by the `xberg-gliner`.
    /// ONNX backend or the LLM-driven backend (see `crates/xberg/src/text/ner/`).
    List<Entity>? entities,

    /// Extracted keywords when keyword extraction is enabled.
    ///
    /// When keyword extraction (RAKE or YAKE) is configured, this field contains.
    /// the extracted keywords with scores, algorithm info, and position data.
    /// Previously stored in `metadata.additional["keywords"]`.
    @JsonKey(name: 'extracted_keywords') List<Keyword>? extractedKeywords,

    /// Confidence score computed by the heuristics pipeline.
    ///
    /// Populated when the `heuristics` feature is enabled and confidence.
    /// scoring has been performed.  Combines text-coverage, OCR aggregate.
    /// confidence, and schema-compliance into a single `[0, 1]` value.
    ///
    /// `None` when confidence scoring is not configured or the feature is.
    /// absent.
    @JsonKey(name: 'extraction_confidence')
    ExtractionConfidence? extractionConfidence,

    /// Extraction strategy used to produce the returned text.
    ///
    /// Populated when the extractor can reliably distinguish native text extraction,.
    /// OCR-only extraction, or mixed native/OCR output.
    @JsonKey(name: 'extraction_method') ExtractionMethod? extractionMethod,

    /// Form fields extracted from a PDF's AcroForm or XFA structure.
    ///
    /// Populated by the PDF extractor when `PdfConfig::extract_form_fields` is.
    /// enabled (default) and the document is a fillable form. Empty otherwise.
    @JsonKey(name: 'form_fields') List<PdfFormField>? formFields,

    /// Mathematical formulas recognized in the document.
    ///
    /// Populated by the layout-guided formula pipeline when the.
    /// `layout-detection` feature is enabled and the document contains regions.
    /// classified as formulas. Empty otherwise.
    List<Formula>? formulas,

    /// Extracted images from the document.
    ///
    /// When image extraction is enabled via `ImageExtractionConfig`, this field.
    /// contains all images found in the document with their raw data and metadata.
    /// Each image may optionally contain a nested `ocr_result` if OCR was performed.
    List<ExtractedImage>? images,

    /// LLM token usage and cost data for all LLM calls made during this extraction.
    ///
    /// Contains one entry per LLM call. Multiple entries are produced when.
    /// VLM OCR, structured extraction, or LLM embeddings run during.
    /// the same extraction.
    ///
    /// `None` when no LLM was used.
    @JsonKey(name: 'llm_usage') List<LlmUsage>? llmUsage,

    /// OCR elements with full spatial and confidence metadata.
    ///
    /// When OCR is performed with element extraction enabled, this field contains.
    /// the structured representation of detected text including:.
    /// - Bounding geometry (rectangles or quadrilaterals).
    /// - Confidence scores (detection and recognition).
    /// - Rotation information.
    /// - Hierarchical relationships (Tesseract only).
    ///
    /// This field preserves all metadata that would otherwise be lost when.
    /// converting to plain text or markdown output formats.
    ///
    /// Only populated when `OcrElementConfig.include_elements` is true.
    @JsonKey(name: 'ocr_elements') List<OcrElement>? ocrElements,

    /// Per-page classifications produced by the page-classification post-processor.
    ///
    /// `None` when classification is not configured.
    @JsonKey(name: 'page_classifications')
    List<PageClassification>? pageClassifications,

    /// Per-page content when page extraction is enabled.
    ///
    /// When page extraction is configured, the document is split into per-page content.
    /// with tables and images mapped to their respective pages.
    List<PageContent>? pages,

    /// Non-fatal warnings collected during processing pipeline stages.
    ///
    /// Captures errors from optional pipeline features (embedding, chunking,.
    /// language detection, output formatting) that don't prevent extraction.
    /// but may indicate degraded results.
    /// Previously stored as individual keys in `metadata.additional`.
    @JsonKey(name: 'processing_warnings')
    List<ProcessingWarning>? processingWarnings,

    /// Document quality score from quality analysis.
    ///
    /// A value between 0.0 and 1.0 indicating the overall text quality.
    /// Previously stored in `metadata.additional["quality_score"]`.
    @JsonKey(name: 'quality_score') double? qualityScore,

    /// Audit report of redactions applied by the redaction post-processor.
    ///
    /// The redaction processor rewrites `content`, `formatted_content`, every.
    /// chunk's text, and the textual fields of `entities` / `summary` / `translation` /.
    /// `page_classifications` in place. This report describes what was found and how it.
    /// was replaced. `None` when redaction is not configured.
    @JsonKey(name: 'redaction_report') RedactionReport? redactionReport,

    /// Tracked changes embedded in the source document.
    ///
    /// Populated by per-format extractors that understand change-tracking.
    /// metadata (DOCX `w:ins`/`w:del`/`w:rPrChange`, ODT `text:change-*`,.
    /// …). Every extractor defaults to `None` until its format-specific.
    /// implementation is added. Extractors that do populate this field follow.
    /// the "accepted-changes" convention: inserted text is present in.
    /// `content`, deleted text is absent — the revision list is the separate.
    /// audit trail.
    List<DocumentRevision>? revisions,

    /// Structured extraction output from LLM-based JSON schema extraction.
    ///
    /// When `structured_extraction` is configured in `ExtractionConfig`, the.
    /// extracted document content is sent to a VLM with the provided JSON schema.
    /// The response is parsed and stored here as a JSON value matching the schema.
    @JsonKey(name: 'structured_output') dynamic structuredOutput,

    /// Summary of `content` produced by the summarisation post-processor.
    ///
    /// `None` when summarisation is not configured. Populated by the TextRank.
    /// extractive backend (deterministic, no external service) or by the.
    /// liter-llm-driven abstractive backend.
    DocumentSummary? summary,

    /// Translation of `content` produced by the translation post-processor.
    ///
    /// `None` when translation is not configured.
    Translation? translation,

    /// URIs/links discovered during document extraction.
    ///
    /// Contains hyperlinks, image references, citations, email addresses, and.
    /// other URI-like references found in the document. Always extracted when.
    /// present in the source document.
    List<ExtractedUri>? uris,
  }) = _ExtractedDocument;

  factory ExtractedDocument.fromJson(Map<String, Object?> json) =>
      _$ExtractedDocumentFromJson(json);
}
