// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'archive_metadata.dart';
import 'audio_metadata.dart';
import 'bibtex_metadata.dart';
import 'citation_metadata.dart';
import 'code_chunk_info.dart';
import 'code_metadata.dart';
import 'contributor_role.dart';
import 'csv_metadata.dart';
import 'dbf_field_info.dart';
import 'dbf_metadata.dart';
import 'docx_metadata.dart';
import 'email_metadata.dart';
import 'epub_metadata.dart';
import 'excel_metadata.dart';
import 'fiction_book_metadata.dart';
import 'header_metadata.dart';
import 'html_metadata.dart';
import 'image_metadata.dart';
import 'image_metadata_type.dart';
import 'jats_metadata.dart';
import 'link_metadata.dart';
import 'ocr_metadata.dart';
import 'pdf_metadata.dart';
import 'pptx_metadata.dart';
import 'pst_metadata.dart';
import 'structured_data.dart';
import 'text_direction.dart';
import 'text_metadata.dart';
import 'xml_metadata.dart';
import 'year_range.dart';

part 'format_metadata.freezed.dart';
part 'format_metadata.g.dart';

/// Format-specific metadata (discriminated union). Only one format type can exist per extraction result.
@Freezed(unionKey: 'format_type')
sealed class FormatMetadata with _$FormatMetadata {
  @FreezedUnionValue('archive')
  const factory FormatMetadata.archive({
    /// Total number of files in the archive
    @JsonKey(name: 'file_count') required int fileCount,

    /// List of file paths within the archive
    @JsonKey(name: 'file_list') required List<String> fileList,

    /// Archive format ("ZIP", "TAR", "7Z", etc.)
    required String format,

    /// Total uncompressed size in bytes
    @JsonKey(name: 'total_size') required int totalSize,

    /// Compressed size in bytes (if available)
    @JsonKey(name: 'compressed_size') int? compressedSize,
  }) = FormatMetadataArchive;

  @FreezedUnionValue('audio')
  const factory FormatMetadata.audio({
    /// Audio bitrate in kbps from the source file tags/properties.
    int? bitrate,

    /// Number of audio channels (1 = mono, 2 = stereo).
    int? channels,

    /// Audio codec (e.g. "mp3", "aac", "opus", "flac").
    String? codec,

    /// Container format (e.g. "mpeg", "mp4", "ogg", "wav").
    String? container,

    /// Duration in milliseconds derived from the decoded audio stream.
    @JsonKey(name: 'duration_ms') int? durationMs,

    /// Sample rate in Hz after decode (always 16000 when resampled for Whisper).
    @JsonKey(name: 'sample_rate_hz') int? sampleRateHz,
  }) = FormatMetadataAudio;

  @FreezedUnionValue('bibtex')
  const factory FormatMetadata.bibtex({
    /// Number of entries in the bibliography.
    @JsonKey(name: 'entry_count') required int entryCount,

    /// Author names collected across all bibliography entries.
    List<String>? authors,

    /// BibTeX citation keys (e.g. `"knuth1984"`) for all entries.
    @JsonKey(name: 'citation_keys') List<String>? citationKeys,

    /// Count of entries grouped by BibTeX entry type (e.g. `"article"` → 5).
    @JsonKey(name: 'entry_types') Map<String, int>? entryTypes,

    /// Earliest and latest publication years found in the bibliography.
    @JsonKey(name: 'year_range') YearRange? yearRange,
  }) = FormatMetadataBibtex;

  @FreezedUnionValue('citation')
  const factory FormatMetadata.citation({
    /// Total number of citation records in the file.
    @JsonKey(name: 'citation_count') required int citationCount,

    /// Author names collected across all citation records.
    List<String>? authors,

    /// DOI identifiers found in the citation records.
    List<String>? dois,

    /// Detected citation file format (e.g. `"ris"`, `"pubmed"`, `"endnote"`).
    String? format,

    /// Keywords collected from all citation records.
    List<String>? keywords,

    /// Earliest and latest publication years found in the file.
    @JsonKey(name: 'year_range') YearRange? yearRange,
  }) = FormatMetadataCitation;

  @FreezedUnionValue('code')
  const factory FormatMetadata.code({
    /// Structural code chunks (function/class/module boundaries).
    required List<CodeChunkInfo> chunks,
  }) = FormatMetadataCode;

  @FreezedUnionValue('csv')
  const factory FormatMetadata.csv({
    /// Number of columns detected.
    @JsonKey(name: 'column_count') required int columnCount,

    /// Whether the first row was treated as a header.
    @JsonKey(name: 'has_header') required bool hasHeader,

    /// Total number of data rows (excluding the header row if present).
    @JsonKey(name: 'row_count') required int rowCount,

    /// Inferred data type for each column (e.g. `"string"`, `"integer"`, `"float"`).
    @JsonKey(name: 'column_types') List<String>? columnTypes,

    /// Field delimiter character (e.g. `","` or `"\t"`).
    String? delimiter,
  }) = FormatMetadataCsv;

  @FreezedUnionValue('dbf')
  const factory FormatMetadata.dbf({
    /// Number of field (column) definitions.
    @JsonKey(name: 'field_count') required int fieldCount,

    /// Total number of data records in the DBF file.
    @JsonKey(name: 'record_count') required int recordCount,

    /// Descriptor for each field in the table schema.
    List<DbfFieldInfo>? fields,
  }) = FormatMetadataDbf;

  @FreezedUnionValue('docx')
  const factory FormatMetadata.docx({
    /// Application properties from docProps/app.xml (Word-specific statistics).
    ///
    /// Contains word count, page count, paragraph count, editing time, etc.
    /// DOCX-specific variant of Office application properties.
    @JsonKey(name: 'app_properties') dynamic appProperties,

    /// Core properties from docProps/core.xml (Dublin Core metadata).
    ///
    /// Contains title, creator, subject, keywords, dates, etc.
    /// Shared format across DOCX/PPTX/XLSX documents.
    @JsonKey(name: 'core_properties') dynamic coreProperties,

    /// Custom properties from docProps/custom.xml (user-defined properties).
    ///
    /// Contains key-value pairs defined by users or applications.
    /// Values can be strings, numbers, booleans, or dates.
    @JsonKey(name: 'custom_properties') Map<String, dynamic>? customProperties,
  }) = FormatMetadataDocx;

  @FreezedUnionValue('email')
  const factory FormatMetadata.email({
    /// List of attachment filenames
    required List<String> attachments,

    /// BCC recipients
    @JsonKey(name: 'bcc_emails') required List<String> bccEmails,

    /// CC recipients
    @JsonKey(name: 'cc_emails') required List<String> ccEmails,

    /// Primary recipients
    @JsonKey(name: 'to_emails') required List<String> toEmails,

    /// Sender's email address
    @JsonKey(name: 'from_email') String? fromEmail,

    /// Sender's display name
    @JsonKey(name: 'from_name') String? fromName,

    /// Message-ID header value
    @JsonKey(name: 'message_id') String? messageId,
  }) = FormatMetadataEmail;

  @FreezedUnionValue('epub')
  const factory FormatMetadata.epub({
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
  }) = FormatMetadataEpub;

  @FreezedUnionValue('excel')
  const factory FormatMetadata.excel({
    /// Number of sheets in the workbook.
    @JsonKey(name: 'sheet_count') int? sheetCount,

    /// Names of all sheets in the workbook.
    @JsonKey(name: 'sheet_names') List<String>? sheetNames,
  }) = FormatMetadataExcel;

  @FreezedUnionValue('fiction_book')
  const factory FormatMetadata.fictionBook({
    /// Short annotation / summary from the FB2 `<annotation>` element.
    String? annotation,

    /// Genre tags as declared in the FB2 `<genre>` elements.
    List<String>? genres,

    /// Book series (sequence) names, if any.
    List<String>? sequences,
  }) = FormatMetadataFictionBook;

  @FreezedUnionValue('html')
  const factory FormatMetadata.html({
    /// Document author from `<meta name="author">` tag
    String? author,

    /// Base URL from `<base href="">` tag for resolving relative URLs
    @JsonKey(name: 'base_href') String? baseHref,

    /// Canonical URL from `<link rel="canonical">` tag
    @JsonKey(name: 'canonical_url') String? canonicalUrl,

    /// Document description from `<meta name="description">` tag
    String? description,

    /// Extracted header elements with hierarchy
    List<HeaderMetadata>? headers,

    /// Extracted images with source and dimensions
    List<ImageMetadataType>? images,

    /// Document keywords from `<meta name="keywords">` tag, split on commas
    List<String>? keywords,

    /// Document language from `lang` attribute
    String? language,

    /// Extracted hyperlinks with type classification
    List<LinkMetadata>? links,

    /// Additional meta tags not covered by specific fields.
    /// Keys are meta name/property attributes, values are content.
    @JsonKey(name: 'meta_tags') Map<String, String>? metaTags,

    /// Open Graph metadata (og:* properties) for social media.
    /// Keys like "title", "description", "image", "url", etc.
    @JsonKey(name: 'open_graph') Map<String, String>? openGraph,

    /// Extracted structured data blocks
    @JsonKey(name: 'structured_data') List<StructuredData>? structuredData,

    /// Document text direction from `dir` attribute
    @JsonKey(name: 'text_direction') TextDirection? textDirection,

    /// Document title from `<title>` tag
    String? title,

    /// Twitter Card metadata (twitter:* properties).
    /// Keys like "card", "site", "creator", "title", "description", "image", etc.
    @JsonKey(name: 'twitter_card') Map<String, String>? twitterCard,
  }) = FormatMetadataHtml;

  @FreezedUnionValue('image')
  const factory FormatMetadata.image({
    /// EXIF metadata tags
    required Map<String, String> exif,

    /// Image format (e.g., "PNG", "JPEG", "TIFF")
    required String format,

    /// Image height in pixels
    required int height,

    /// Image width in pixels
    required int width,
  }) = FormatMetadataImage;

  @FreezedUnionValue('jats')
  const factory FormatMetadata.jats({
    /// Authors and contributors with their stated roles.
    @JsonKey(name: 'contributor_roles') List<ContributorRole>? contributorRoles,

    /// Copyright statement from the article's `<permissions>` element.
    String? copyright,

    /// Publication history dates keyed by event type (e.g. `"received"`, `"accepted"`).
    @JsonKey(name: 'history_dates') Map<String, String>? historyDates,

    /// Open-access license URI from the article's `<license>` element.
    String? license,
  }) = FormatMetadataJats;

  @FreezedUnionValue('ocr')
  const factory FormatMetadata.ocr({
    /// OCR language code(s) used
    required String language,

    /// Output format (e.g., "text", "hocr")
    @JsonKey(name: 'output_format') required String outputFormat,

    /// Tesseract Page Segmentation Mode (PSM)
    required int psm,

    /// Number of tables detected
    @JsonKey(name: 'table_count') required int tableCount,

    /// Number of columns in the detected table (if a single table was found).
    @JsonKey(name: 'table_cols') int? tableCols,

    /// Number of rows in the detected table (if a single table was found).
    @JsonKey(name: 'table_rows') int? tableRows,
  }) = FormatMetadataOcr;

  @FreezedUnionValue('pdf')
  const factory FormatMetadata.pdf({
    /// First page height in points (1/72 inch)
    int? height,

    /// Whether the PDF is encrypted/password-protected
    @JsonKey(name: 'is_encrypted') bool? isEncrypted,

    /// Total number of pages in the PDF document
    @JsonKey(name: 'page_count') int? pageCount,

    /// PDF version (e.g., "1.7", "2.0")
    @JsonKey(name: 'pdf_version') String? pdfVersion,

    /// PDF producer (application that created the PDF)
    String? producer,

    /// First page width in points (1/72 inch)
    int? width,
  }) = FormatMetadataPdf;

  @FreezedUnionValue('pptx')
  const factory FormatMetadata.pptx({
    /// Total number of slides in the presentation
    @JsonKey(name: 'slide_count') required int slideCount,

    /// Names of slides (if available)
    @JsonKey(name: 'slide_names') required List<String> slideNames,

    /// Number of embedded images
    @JsonKey(name: 'image_count') int? imageCount,

    /// Number of tables
    @JsonKey(name: 'table_count') int? tableCount,
  }) = FormatMetadataPptx;

  @FreezedUnionValue('pst')
  const factory FormatMetadata.pst({
    /// Total number of email messages found in the PST archive.
    @JsonKey(name: 'message_count') required int messageCount,
  }) = FormatMetadataPst;

  @FreezedUnionValue('text')
  const factory FormatMetadata.text({
    /// Number of characters
    @JsonKey(name: 'character_count') required int characterCount,

    /// Number of lines in the document
    @JsonKey(name: 'line_count') required int lineCount,

    /// Number of words
    @JsonKey(name: 'word_count') required int wordCount,

    /// Code blocks as (language, code) tuples (for Markdown files)
    @JsonKey(name: 'code_blocks') List<List<String>>? codeBlocks,

    /// Markdown headers (headings text only, for Markdown files)
    List<String>? headers,

    /// Markdown links as (text, url) tuples (for Markdown files)
    List<List<String>>? links,
  }) = FormatMetadataText;

  @FreezedUnionValue('xml')
  const factory FormatMetadata.xml({
    /// Total number of XML elements processed
    @JsonKey(name: 'element_count') required int elementCount,

    /// List of unique element tag names (sorted)
    @JsonKey(name: 'unique_elements') required List<String> uniqueElements,
  }) = FormatMetadataXml;

  factory FormatMetadata.fromJson(Map<String, Object?> json) =>
      _$FormatMetadataFromJson(json);
}
