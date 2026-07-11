// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'format_metadata.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
FormatMetadata _$FormatMetadataFromJson(
  Map<String, dynamic> json
) {
        switch (json['format_type']) {
                  case 'archive':
          return FormatMetadataArchive.fromJson(
            json
          );
                case 'audio':
          return FormatMetadataAudio.fromJson(
            json
          );
                case 'bibtex':
          return FormatMetadataBibtex.fromJson(
            json
          );
                case 'citation':
          return FormatMetadataCitation.fromJson(
            json
          );
                case 'code':
          return FormatMetadataCode.fromJson(
            json
          );
                case 'csv':
          return FormatMetadataCsv.fromJson(
            json
          );
                case 'dbf':
          return FormatMetadataDbf.fromJson(
            json
          );
                case 'docx':
          return FormatMetadataDocx.fromJson(
            json
          );
                case 'email':
          return FormatMetadataEmail.fromJson(
            json
          );
                case 'epub':
          return FormatMetadataEpub.fromJson(
            json
          );
                case 'excel':
          return FormatMetadataExcel.fromJson(
            json
          );
                case 'fiction_book':
          return FormatMetadataFictionBook.fromJson(
            json
          );
                case 'html':
          return FormatMetadataHtml.fromJson(
            json
          );
                case 'image':
          return FormatMetadataImage.fromJson(
            json
          );
                case 'jats':
          return FormatMetadataJats.fromJson(
            json
          );
                case 'ocr':
          return FormatMetadataOcr.fromJson(
            json
          );
                case 'pdf':
          return FormatMetadataPdf.fromJson(
            json
          );
                case 'pptx':
          return FormatMetadataPptx.fromJson(
            json
          );
                case 'pst':
          return FormatMetadataPst.fromJson(
            json
          );
                case 'text':
          return FormatMetadataText.fromJson(
            json
          );
                case 'xml':
          return FormatMetadataXml.fromJson(
            json
          );

          default:
            throw CheckedFromJsonException(
  json,
  'format_type',
  'FormatMetadata',
  'Invalid union type "${json['format_type']}"!'
);
        }

}

/// @nodoc
mixin _$FormatMetadata {



  /// Serializes this FormatMetadata to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FormatMetadata);
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'FormatMetadata()';
}


}

/// @nodoc
class $FormatMetadataCopyWith<$Res>  {
$FormatMetadataCopyWith(FormatMetadata _, $Res Function(FormatMetadata) __);
}


/// Adds pattern-matching-related methods to [FormatMetadata].
extension FormatMetadataPatterns on FormatMetadata {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( FormatMetadataArchive value)?  archive,TResult Function( FormatMetadataAudio value)?  audio,TResult Function( FormatMetadataBibtex value)?  bibtex,TResult Function( FormatMetadataCitation value)?  citation,TResult Function( FormatMetadataCode value)?  code,TResult Function( FormatMetadataCsv value)?  csv,TResult Function( FormatMetadataDbf value)?  dbf,TResult Function( FormatMetadataDocx value)?  docx,TResult Function( FormatMetadataEmail value)?  email,TResult Function( FormatMetadataEpub value)?  epub,TResult Function( FormatMetadataExcel value)?  excel,TResult Function( FormatMetadataFictionBook value)?  fictionBook,TResult Function( FormatMetadataHtml value)?  html,TResult Function( FormatMetadataImage value)?  image,TResult Function( FormatMetadataJats value)?  jats,TResult Function( FormatMetadataOcr value)?  ocr,TResult Function( FormatMetadataPdf value)?  pdf,TResult Function( FormatMetadataPptx value)?  pptx,TResult Function( FormatMetadataPst value)?  pst,TResult Function( FormatMetadataText value)?  text,TResult Function( FormatMetadataXml value)?  xml,required TResult orElse(),}){
final _that = this;
switch (_that) {
case FormatMetadataArchive() when archive != null:
return archive(_that);case FormatMetadataAudio() when audio != null:
return audio(_that);case FormatMetadataBibtex() when bibtex != null:
return bibtex(_that);case FormatMetadataCitation() when citation != null:
return citation(_that);case FormatMetadataCode() when code != null:
return code(_that);case FormatMetadataCsv() when csv != null:
return csv(_that);case FormatMetadataDbf() when dbf != null:
return dbf(_that);case FormatMetadataDocx() when docx != null:
return docx(_that);case FormatMetadataEmail() when email != null:
return email(_that);case FormatMetadataEpub() when epub != null:
return epub(_that);case FormatMetadataExcel() when excel != null:
return excel(_that);case FormatMetadataFictionBook() when fictionBook != null:
return fictionBook(_that);case FormatMetadataHtml() when html != null:
return html(_that);case FormatMetadataImage() when image != null:
return image(_that);case FormatMetadataJats() when jats != null:
return jats(_that);case FormatMetadataOcr() when ocr != null:
return ocr(_that);case FormatMetadataPdf() when pdf != null:
return pdf(_that);case FormatMetadataPptx() when pptx != null:
return pptx(_that);case FormatMetadataPst() when pst != null:
return pst(_that);case FormatMetadataText() when text != null:
return text(_that);case FormatMetadataXml() when xml != null:
return xml(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( FormatMetadataArchive value)  archive,required TResult Function( FormatMetadataAudio value)  audio,required TResult Function( FormatMetadataBibtex value)  bibtex,required TResult Function( FormatMetadataCitation value)  citation,required TResult Function( FormatMetadataCode value)  code,required TResult Function( FormatMetadataCsv value)  csv,required TResult Function( FormatMetadataDbf value)  dbf,required TResult Function( FormatMetadataDocx value)  docx,required TResult Function( FormatMetadataEmail value)  email,required TResult Function( FormatMetadataEpub value)  epub,required TResult Function( FormatMetadataExcel value)  excel,required TResult Function( FormatMetadataFictionBook value)  fictionBook,required TResult Function( FormatMetadataHtml value)  html,required TResult Function( FormatMetadataImage value)  image,required TResult Function( FormatMetadataJats value)  jats,required TResult Function( FormatMetadataOcr value)  ocr,required TResult Function( FormatMetadataPdf value)  pdf,required TResult Function( FormatMetadataPptx value)  pptx,required TResult Function( FormatMetadataPst value)  pst,required TResult Function( FormatMetadataText value)  text,required TResult Function( FormatMetadataXml value)  xml,}){
final _that = this;
switch (_that) {
case FormatMetadataArchive():
return archive(_that);case FormatMetadataAudio():
return audio(_that);case FormatMetadataBibtex():
return bibtex(_that);case FormatMetadataCitation():
return citation(_that);case FormatMetadataCode():
return code(_that);case FormatMetadataCsv():
return csv(_that);case FormatMetadataDbf():
return dbf(_that);case FormatMetadataDocx():
return docx(_that);case FormatMetadataEmail():
return email(_that);case FormatMetadataEpub():
return epub(_that);case FormatMetadataExcel():
return excel(_that);case FormatMetadataFictionBook():
return fictionBook(_that);case FormatMetadataHtml():
return html(_that);case FormatMetadataImage():
return image(_that);case FormatMetadataJats():
return jats(_that);case FormatMetadataOcr():
return ocr(_that);case FormatMetadataPdf():
return pdf(_that);case FormatMetadataPptx():
return pptx(_that);case FormatMetadataPst():
return pst(_that);case FormatMetadataText():
return text(_that);case FormatMetadataXml():
return xml(_that);}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( FormatMetadataArchive value)?  archive,TResult? Function( FormatMetadataAudio value)?  audio,TResult? Function( FormatMetadataBibtex value)?  bibtex,TResult? Function( FormatMetadataCitation value)?  citation,TResult? Function( FormatMetadataCode value)?  code,TResult? Function( FormatMetadataCsv value)?  csv,TResult? Function( FormatMetadataDbf value)?  dbf,TResult? Function( FormatMetadataDocx value)?  docx,TResult? Function( FormatMetadataEmail value)?  email,TResult? Function( FormatMetadataEpub value)?  epub,TResult? Function( FormatMetadataExcel value)?  excel,TResult? Function( FormatMetadataFictionBook value)?  fictionBook,TResult? Function( FormatMetadataHtml value)?  html,TResult? Function( FormatMetadataImage value)?  image,TResult? Function( FormatMetadataJats value)?  jats,TResult? Function( FormatMetadataOcr value)?  ocr,TResult? Function( FormatMetadataPdf value)?  pdf,TResult? Function( FormatMetadataPptx value)?  pptx,TResult? Function( FormatMetadataPst value)?  pst,TResult? Function( FormatMetadataText value)?  text,TResult? Function( FormatMetadataXml value)?  xml,}){
final _that = this;
switch (_that) {
case FormatMetadataArchive() when archive != null:
return archive(_that);case FormatMetadataAudio() when audio != null:
return audio(_that);case FormatMetadataBibtex() when bibtex != null:
return bibtex(_that);case FormatMetadataCitation() when citation != null:
return citation(_that);case FormatMetadataCode() when code != null:
return code(_that);case FormatMetadataCsv() when csv != null:
return csv(_that);case FormatMetadataDbf() when dbf != null:
return dbf(_that);case FormatMetadataDocx() when docx != null:
return docx(_that);case FormatMetadataEmail() when email != null:
return email(_that);case FormatMetadataEpub() when epub != null:
return epub(_that);case FormatMetadataExcel() when excel != null:
return excel(_that);case FormatMetadataFictionBook() when fictionBook != null:
return fictionBook(_that);case FormatMetadataHtml() when html != null:
return html(_that);case FormatMetadataImage() when image != null:
return image(_that);case FormatMetadataJats() when jats != null:
return jats(_that);case FormatMetadataOcr() when ocr != null:
return ocr(_that);case FormatMetadataPdf() when pdf != null:
return pdf(_that);case FormatMetadataPptx() when pptx != null:
return pptx(_that);case FormatMetadataPst() when pst != null:
return pst(_that);case FormatMetadataText() when text != null:
return text(_that);case FormatMetadataXml() when xml != null:
return xml(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function(@JsonKey(name: 'file_count')  int fileCount, @JsonKey(name: 'file_list')  List<String> fileList,  String format, @JsonKey(name: 'total_size')  int totalSize, @JsonKey(name: 'compressed_size')  int? compressedSize)?  archive,TResult Function( int? bitrate,  int? channels,  String? codec,  String? container, @JsonKey(name: 'duration_ms')  int? durationMs, @JsonKey(name: 'sample_rate_hz')  int? sampleRateHz)?  audio,TResult Function(@JsonKey(name: 'entry_count')  int entryCount,  List<String>? authors, @JsonKey(name: 'citation_keys')  List<String>? citationKeys, @JsonKey(name: 'entry_types')  Map<String, int>? entryTypes, @JsonKey(name: 'year_range')  YearRange? yearRange)?  bibtex,TResult Function(@JsonKey(name: 'citation_count')  int citationCount,  List<String>? authors,  List<String>? dois,  String? format,  List<String>? keywords, @JsonKey(name: 'year_range')  YearRange? yearRange)?  citation,TResult Function( List<CodeChunkInfo> chunks)?  code,TResult Function(@JsonKey(name: 'column_count')  int columnCount, @JsonKey(name: 'has_header')  bool hasHeader, @JsonKey(name: 'row_count')  int rowCount, @JsonKey(name: 'column_types')  List<String>? columnTypes,  String? delimiter)?  csv,TResult Function(@JsonKey(name: 'field_count')  int fieldCount, @JsonKey(name: 'record_count')  int recordCount,  List<DbfFieldInfo>? fields)?  dbf,TResult Function(@JsonKey(name: 'app_properties')  dynamic appProperties, @JsonKey(name: 'core_properties')  dynamic coreProperties, @JsonKey(name: 'custom_properties')  Map<String, dynamic>? customProperties)?  docx,TResult Function( List<String> attachments, @JsonKey(name: 'bcc_emails')  List<String> bccEmails, @JsonKey(name: 'cc_emails')  List<String> ccEmails, @JsonKey(name: 'to_emails')  List<String> toEmails, @JsonKey(name: 'from_email')  String? fromEmail, @JsonKey(name: 'from_name')  String? fromName, @JsonKey(name: 'message_id')  String? messageId)?  email,TResult Function(@JsonKey(name: 'cover_image')  String? coverImage,  String? coverage, @JsonKey(name: 'dc_format')  String? dcFormat, @JsonKey(name: 'dc_type')  String? dcType,  String? relation,  String? source)?  epub,TResult Function(@JsonKey(name: 'sheet_count')  int? sheetCount, @JsonKey(name: 'sheet_names')  List<String>? sheetNames)?  excel,TResult Function( String? annotation,  List<String>? genres,  List<String>? sequences)?  fictionBook,TResult Function( String? author, @JsonKey(name: 'base_href')  String? baseHref, @JsonKey(name: 'canonical_url')  String? canonicalUrl,  String? description,  List<HeaderMetadata>? headers,  List<ImageMetadataType>? images,  List<String>? keywords,  String? language,  List<LinkMetadata>? links, @JsonKey(name: 'meta_tags')  Map<String, String>? metaTags, @JsonKey(name: 'open_graph')  Map<String, String>? openGraph, @JsonKey(name: 'structured_data')  List<StructuredData>? structuredData, @JsonKey(name: 'text_direction')  TextDirection? textDirection,  String? title, @JsonKey(name: 'twitter_card')  Map<String, String>? twitterCard)?  html,TResult Function( Map<String, String> exif,  String format,  int height,  int width)?  image,TResult Function(@JsonKey(name: 'contributor_roles')  List<ContributorRole>? contributorRoles,  String? copyright, @JsonKey(name: 'history_dates')  Map<String, String>? historyDates,  String? license)?  jats,TResult Function( String language, @JsonKey(name: 'output_format')  String outputFormat,  int psm, @JsonKey(name: 'table_count')  int tableCount, @JsonKey(name: 'table_cols')  int? tableCols, @JsonKey(name: 'table_rows')  int? tableRows)?  ocr,TResult Function( int? height, @JsonKey(name: 'is_encrypted')  bool? isEncrypted, @JsonKey(name: 'page_count')  int? pageCount, @JsonKey(name: 'pdf_version')  String? pdfVersion,  String? producer,  int? width)?  pdf,TResult Function(@JsonKey(name: 'slide_count')  int slideCount, @JsonKey(name: 'slide_names')  List<String> slideNames, @JsonKey(name: 'image_count')  int? imageCount, @JsonKey(name: 'table_count')  int? tableCount)?  pptx,TResult Function(@JsonKey(name: 'message_count')  int messageCount)?  pst,TResult Function(@JsonKey(name: 'character_count')  int characterCount, @JsonKey(name: 'line_count')  int lineCount, @JsonKey(name: 'word_count')  int wordCount, @JsonKey(name: 'code_blocks')  List<List<String>>? codeBlocks,  List<String>? headers,  List<List<String>>? links)?  text,TResult Function(@JsonKey(name: 'element_count')  int elementCount, @JsonKey(name: 'unique_elements')  List<String> uniqueElements)?  xml,required TResult orElse(),}) {final _that = this;
switch (_that) {
case FormatMetadataArchive() when archive != null:
return archive(_that.fileCount,_that.fileList,_that.format,_that.totalSize,_that.compressedSize);case FormatMetadataAudio() when audio != null:
return audio(_that.bitrate,_that.channels,_that.codec,_that.container,_that.durationMs,_that.sampleRateHz);case FormatMetadataBibtex() when bibtex != null:
return bibtex(_that.entryCount,_that.authors,_that.citationKeys,_that.entryTypes,_that.yearRange);case FormatMetadataCitation() when citation != null:
return citation(_that.citationCount,_that.authors,_that.dois,_that.format,_that.keywords,_that.yearRange);case FormatMetadataCode() when code != null:
return code(_that.chunks);case FormatMetadataCsv() when csv != null:
return csv(_that.columnCount,_that.hasHeader,_that.rowCount,_that.columnTypes,_that.delimiter);case FormatMetadataDbf() when dbf != null:
return dbf(_that.fieldCount,_that.recordCount,_that.fields);case FormatMetadataDocx() when docx != null:
return docx(_that.appProperties,_that.coreProperties,_that.customProperties);case FormatMetadataEmail() when email != null:
return email(_that.attachments,_that.bccEmails,_that.ccEmails,_that.toEmails,_that.fromEmail,_that.fromName,_that.messageId);case FormatMetadataEpub() when epub != null:
return epub(_that.coverImage,_that.coverage,_that.dcFormat,_that.dcType,_that.relation,_that.source);case FormatMetadataExcel() when excel != null:
return excel(_that.sheetCount,_that.sheetNames);case FormatMetadataFictionBook() when fictionBook != null:
return fictionBook(_that.annotation,_that.genres,_that.sequences);case FormatMetadataHtml() when html != null:
return html(_that.author,_that.baseHref,_that.canonicalUrl,_that.description,_that.headers,_that.images,_that.keywords,_that.language,_that.links,_that.metaTags,_that.openGraph,_that.structuredData,_that.textDirection,_that.title,_that.twitterCard);case FormatMetadataImage() when image != null:
return image(_that.exif,_that.format,_that.height,_that.width);case FormatMetadataJats() when jats != null:
return jats(_that.contributorRoles,_that.copyright,_that.historyDates,_that.license);case FormatMetadataOcr() when ocr != null:
return ocr(_that.language,_that.outputFormat,_that.psm,_that.tableCount,_that.tableCols,_that.tableRows);case FormatMetadataPdf() when pdf != null:
return pdf(_that.height,_that.isEncrypted,_that.pageCount,_that.pdfVersion,_that.producer,_that.width);case FormatMetadataPptx() when pptx != null:
return pptx(_that.slideCount,_that.slideNames,_that.imageCount,_that.tableCount);case FormatMetadataPst() when pst != null:
return pst(_that.messageCount);case FormatMetadataText() when text != null:
return text(_that.characterCount,_that.lineCount,_that.wordCount,_that.codeBlocks,_that.headers,_that.links);case FormatMetadataXml() when xml != null:
return xml(_that.elementCount,_that.uniqueElements);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function(@JsonKey(name: 'file_count')  int fileCount, @JsonKey(name: 'file_list')  List<String> fileList,  String format, @JsonKey(name: 'total_size')  int totalSize, @JsonKey(name: 'compressed_size')  int? compressedSize)  archive,required TResult Function( int? bitrate,  int? channels,  String? codec,  String? container, @JsonKey(name: 'duration_ms')  int? durationMs, @JsonKey(name: 'sample_rate_hz')  int? sampleRateHz)  audio,required TResult Function(@JsonKey(name: 'entry_count')  int entryCount,  List<String>? authors, @JsonKey(name: 'citation_keys')  List<String>? citationKeys, @JsonKey(name: 'entry_types')  Map<String, int>? entryTypes, @JsonKey(name: 'year_range')  YearRange? yearRange)  bibtex,required TResult Function(@JsonKey(name: 'citation_count')  int citationCount,  List<String>? authors,  List<String>? dois,  String? format,  List<String>? keywords, @JsonKey(name: 'year_range')  YearRange? yearRange)  citation,required TResult Function( List<CodeChunkInfo> chunks)  code,required TResult Function(@JsonKey(name: 'column_count')  int columnCount, @JsonKey(name: 'has_header')  bool hasHeader, @JsonKey(name: 'row_count')  int rowCount, @JsonKey(name: 'column_types')  List<String>? columnTypes,  String? delimiter)  csv,required TResult Function(@JsonKey(name: 'field_count')  int fieldCount, @JsonKey(name: 'record_count')  int recordCount,  List<DbfFieldInfo>? fields)  dbf,required TResult Function(@JsonKey(name: 'app_properties')  dynamic appProperties, @JsonKey(name: 'core_properties')  dynamic coreProperties, @JsonKey(name: 'custom_properties')  Map<String, dynamic>? customProperties)  docx,required TResult Function( List<String> attachments, @JsonKey(name: 'bcc_emails')  List<String> bccEmails, @JsonKey(name: 'cc_emails')  List<String> ccEmails, @JsonKey(name: 'to_emails')  List<String> toEmails, @JsonKey(name: 'from_email')  String? fromEmail, @JsonKey(name: 'from_name')  String? fromName, @JsonKey(name: 'message_id')  String? messageId)  email,required TResult Function(@JsonKey(name: 'cover_image')  String? coverImage,  String? coverage, @JsonKey(name: 'dc_format')  String? dcFormat, @JsonKey(name: 'dc_type')  String? dcType,  String? relation,  String? source)  epub,required TResult Function(@JsonKey(name: 'sheet_count')  int? sheetCount, @JsonKey(name: 'sheet_names')  List<String>? sheetNames)  excel,required TResult Function( String? annotation,  List<String>? genres,  List<String>? sequences)  fictionBook,required TResult Function( String? author, @JsonKey(name: 'base_href')  String? baseHref, @JsonKey(name: 'canonical_url')  String? canonicalUrl,  String? description,  List<HeaderMetadata>? headers,  List<ImageMetadataType>? images,  List<String>? keywords,  String? language,  List<LinkMetadata>? links, @JsonKey(name: 'meta_tags')  Map<String, String>? metaTags, @JsonKey(name: 'open_graph')  Map<String, String>? openGraph, @JsonKey(name: 'structured_data')  List<StructuredData>? structuredData, @JsonKey(name: 'text_direction')  TextDirection? textDirection,  String? title, @JsonKey(name: 'twitter_card')  Map<String, String>? twitterCard)  html,required TResult Function( Map<String, String> exif,  String format,  int height,  int width)  image,required TResult Function(@JsonKey(name: 'contributor_roles')  List<ContributorRole>? contributorRoles,  String? copyright, @JsonKey(name: 'history_dates')  Map<String, String>? historyDates,  String? license)  jats,required TResult Function( String language, @JsonKey(name: 'output_format')  String outputFormat,  int psm, @JsonKey(name: 'table_count')  int tableCount, @JsonKey(name: 'table_cols')  int? tableCols, @JsonKey(name: 'table_rows')  int? tableRows)  ocr,required TResult Function( int? height, @JsonKey(name: 'is_encrypted')  bool? isEncrypted, @JsonKey(name: 'page_count')  int? pageCount, @JsonKey(name: 'pdf_version')  String? pdfVersion,  String? producer,  int? width)  pdf,required TResult Function(@JsonKey(name: 'slide_count')  int slideCount, @JsonKey(name: 'slide_names')  List<String> slideNames, @JsonKey(name: 'image_count')  int? imageCount, @JsonKey(name: 'table_count')  int? tableCount)  pptx,required TResult Function(@JsonKey(name: 'message_count')  int messageCount)  pst,required TResult Function(@JsonKey(name: 'character_count')  int characterCount, @JsonKey(name: 'line_count')  int lineCount, @JsonKey(name: 'word_count')  int wordCount, @JsonKey(name: 'code_blocks')  List<List<String>>? codeBlocks,  List<String>? headers,  List<List<String>>? links)  text,required TResult Function(@JsonKey(name: 'element_count')  int elementCount, @JsonKey(name: 'unique_elements')  List<String> uniqueElements)  xml,}) {final _that = this;
switch (_that) {
case FormatMetadataArchive():
return archive(_that.fileCount,_that.fileList,_that.format,_that.totalSize,_that.compressedSize);case FormatMetadataAudio():
return audio(_that.bitrate,_that.channels,_that.codec,_that.container,_that.durationMs,_that.sampleRateHz);case FormatMetadataBibtex():
return bibtex(_that.entryCount,_that.authors,_that.citationKeys,_that.entryTypes,_that.yearRange);case FormatMetadataCitation():
return citation(_that.citationCount,_that.authors,_that.dois,_that.format,_that.keywords,_that.yearRange);case FormatMetadataCode():
return code(_that.chunks);case FormatMetadataCsv():
return csv(_that.columnCount,_that.hasHeader,_that.rowCount,_that.columnTypes,_that.delimiter);case FormatMetadataDbf():
return dbf(_that.fieldCount,_that.recordCount,_that.fields);case FormatMetadataDocx():
return docx(_that.appProperties,_that.coreProperties,_that.customProperties);case FormatMetadataEmail():
return email(_that.attachments,_that.bccEmails,_that.ccEmails,_that.toEmails,_that.fromEmail,_that.fromName,_that.messageId);case FormatMetadataEpub():
return epub(_that.coverImage,_that.coverage,_that.dcFormat,_that.dcType,_that.relation,_that.source);case FormatMetadataExcel():
return excel(_that.sheetCount,_that.sheetNames);case FormatMetadataFictionBook():
return fictionBook(_that.annotation,_that.genres,_that.sequences);case FormatMetadataHtml():
return html(_that.author,_that.baseHref,_that.canonicalUrl,_that.description,_that.headers,_that.images,_that.keywords,_that.language,_that.links,_that.metaTags,_that.openGraph,_that.structuredData,_that.textDirection,_that.title,_that.twitterCard);case FormatMetadataImage():
return image(_that.exif,_that.format,_that.height,_that.width);case FormatMetadataJats():
return jats(_that.contributorRoles,_that.copyright,_that.historyDates,_that.license);case FormatMetadataOcr():
return ocr(_that.language,_that.outputFormat,_that.psm,_that.tableCount,_that.tableCols,_that.tableRows);case FormatMetadataPdf():
return pdf(_that.height,_that.isEncrypted,_that.pageCount,_that.pdfVersion,_that.producer,_that.width);case FormatMetadataPptx():
return pptx(_that.slideCount,_that.slideNames,_that.imageCount,_that.tableCount);case FormatMetadataPst():
return pst(_that.messageCount);case FormatMetadataText():
return text(_that.characterCount,_that.lineCount,_that.wordCount,_that.codeBlocks,_that.headers,_that.links);case FormatMetadataXml():
return xml(_that.elementCount,_that.uniqueElements);}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function(@JsonKey(name: 'file_count')  int fileCount, @JsonKey(name: 'file_list')  List<String> fileList,  String format, @JsonKey(name: 'total_size')  int totalSize, @JsonKey(name: 'compressed_size')  int? compressedSize)?  archive,TResult? Function( int? bitrate,  int? channels,  String? codec,  String? container, @JsonKey(name: 'duration_ms')  int? durationMs, @JsonKey(name: 'sample_rate_hz')  int? sampleRateHz)?  audio,TResult? Function(@JsonKey(name: 'entry_count')  int entryCount,  List<String>? authors, @JsonKey(name: 'citation_keys')  List<String>? citationKeys, @JsonKey(name: 'entry_types')  Map<String, int>? entryTypes, @JsonKey(name: 'year_range')  YearRange? yearRange)?  bibtex,TResult? Function(@JsonKey(name: 'citation_count')  int citationCount,  List<String>? authors,  List<String>? dois,  String? format,  List<String>? keywords, @JsonKey(name: 'year_range')  YearRange? yearRange)?  citation,TResult? Function( List<CodeChunkInfo> chunks)?  code,TResult? Function(@JsonKey(name: 'column_count')  int columnCount, @JsonKey(name: 'has_header')  bool hasHeader, @JsonKey(name: 'row_count')  int rowCount, @JsonKey(name: 'column_types')  List<String>? columnTypes,  String? delimiter)?  csv,TResult? Function(@JsonKey(name: 'field_count')  int fieldCount, @JsonKey(name: 'record_count')  int recordCount,  List<DbfFieldInfo>? fields)?  dbf,TResult? Function(@JsonKey(name: 'app_properties')  dynamic appProperties, @JsonKey(name: 'core_properties')  dynamic coreProperties, @JsonKey(name: 'custom_properties')  Map<String, dynamic>? customProperties)?  docx,TResult? Function( List<String> attachments, @JsonKey(name: 'bcc_emails')  List<String> bccEmails, @JsonKey(name: 'cc_emails')  List<String> ccEmails, @JsonKey(name: 'to_emails')  List<String> toEmails, @JsonKey(name: 'from_email')  String? fromEmail, @JsonKey(name: 'from_name')  String? fromName, @JsonKey(name: 'message_id')  String? messageId)?  email,TResult? Function(@JsonKey(name: 'cover_image')  String? coverImage,  String? coverage, @JsonKey(name: 'dc_format')  String? dcFormat, @JsonKey(name: 'dc_type')  String? dcType,  String? relation,  String? source)?  epub,TResult? Function(@JsonKey(name: 'sheet_count')  int? sheetCount, @JsonKey(name: 'sheet_names')  List<String>? sheetNames)?  excel,TResult? Function( String? annotation,  List<String>? genres,  List<String>? sequences)?  fictionBook,TResult? Function( String? author, @JsonKey(name: 'base_href')  String? baseHref, @JsonKey(name: 'canonical_url')  String? canonicalUrl,  String? description,  List<HeaderMetadata>? headers,  List<ImageMetadataType>? images,  List<String>? keywords,  String? language,  List<LinkMetadata>? links, @JsonKey(name: 'meta_tags')  Map<String, String>? metaTags, @JsonKey(name: 'open_graph')  Map<String, String>? openGraph, @JsonKey(name: 'structured_data')  List<StructuredData>? structuredData, @JsonKey(name: 'text_direction')  TextDirection? textDirection,  String? title, @JsonKey(name: 'twitter_card')  Map<String, String>? twitterCard)?  html,TResult? Function( Map<String, String> exif,  String format,  int height,  int width)?  image,TResult? Function(@JsonKey(name: 'contributor_roles')  List<ContributorRole>? contributorRoles,  String? copyright, @JsonKey(name: 'history_dates')  Map<String, String>? historyDates,  String? license)?  jats,TResult? Function( String language, @JsonKey(name: 'output_format')  String outputFormat,  int psm, @JsonKey(name: 'table_count')  int tableCount, @JsonKey(name: 'table_cols')  int? tableCols, @JsonKey(name: 'table_rows')  int? tableRows)?  ocr,TResult? Function( int? height, @JsonKey(name: 'is_encrypted')  bool? isEncrypted, @JsonKey(name: 'page_count')  int? pageCount, @JsonKey(name: 'pdf_version')  String? pdfVersion,  String? producer,  int? width)?  pdf,TResult? Function(@JsonKey(name: 'slide_count')  int slideCount, @JsonKey(name: 'slide_names')  List<String> slideNames, @JsonKey(name: 'image_count')  int? imageCount, @JsonKey(name: 'table_count')  int? tableCount)?  pptx,TResult? Function(@JsonKey(name: 'message_count')  int messageCount)?  pst,TResult? Function(@JsonKey(name: 'character_count')  int characterCount, @JsonKey(name: 'line_count')  int lineCount, @JsonKey(name: 'word_count')  int wordCount, @JsonKey(name: 'code_blocks')  List<List<String>>? codeBlocks,  List<String>? headers,  List<List<String>>? links)?  text,TResult? Function(@JsonKey(name: 'element_count')  int elementCount, @JsonKey(name: 'unique_elements')  List<String> uniqueElements)?  xml,}) {final _that = this;
switch (_that) {
case FormatMetadataArchive() when archive != null:
return archive(_that.fileCount,_that.fileList,_that.format,_that.totalSize,_that.compressedSize);case FormatMetadataAudio() when audio != null:
return audio(_that.bitrate,_that.channels,_that.codec,_that.container,_that.durationMs,_that.sampleRateHz);case FormatMetadataBibtex() when bibtex != null:
return bibtex(_that.entryCount,_that.authors,_that.citationKeys,_that.entryTypes,_that.yearRange);case FormatMetadataCitation() when citation != null:
return citation(_that.citationCount,_that.authors,_that.dois,_that.format,_that.keywords,_that.yearRange);case FormatMetadataCode() when code != null:
return code(_that.chunks);case FormatMetadataCsv() when csv != null:
return csv(_that.columnCount,_that.hasHeader,_that.rowCount,_that.columnTypes,_that.delimiter);case FormatMetadataDbf() when dbf != null:
return dbf(_that.fieldCount,_that.recordCount,_that.fields);case FormatMetadataDocx() when docx != null:
return docx(_that.appProperties,_that.coreProperties,_that.customProperties);case FormatMetadataEmail() when email != null:
return email(_that.attachments,_that.bccEmails,_that.ccEmails,_that.toEmails,_that.fromEmail,_that.fromName,_that.messageId);case FormatMetadataEpub() when epub != null:
return epub(_that.coverImage,_that.coverage,_that.dcFormat,_that.dcType,_that.relation,_that.source);case FormatMetadataExcel() when excel != null:
return excel(_that.sheetCount,_that.sheetNames);case FormatMetadataFictionBook() when fictionBook != null:
return fictionBook(_that.annotation,_that.genres,_that.sequences);case FormatMetadataHtml() when html != null:
return html(_that.author,_that.baseHref,_that.canonicalUrl,_that.description,_that.headers,_that.images,_that.keywords,_that.language,_that.links,_that.metaTags,_that.openGraph,_that.structuredData,_that.textDirection,_that.title,_that.twitterCard);case FormatMetadataImage() when image != null:
return image(_that.exif,_that.format,_that.height,_that.width);case FormatMetadataJats() when jats != null:
return jats(_that.contributorRoles,_that.copyright,_that.historyDates,_that.license);case FormatMetadataOcr() when ocr != null:
return ocr(_that.language,_that.outputFormat,_that.psm,_that.tableCount,_that.tableCols,_that.tableRows);case FormatMetadataPdf() when pdf != null:
return pdf(_that.height,_that.isEncrypted,_that.pageCount,_that.pdfVersion,_that.producer,_that.width);case FormatMetadataPptx() when pptx != null:
return pptx(_that.slideCount,_that.slideNames,_that.imageCount,_that.tableCount);case FormatMetadataPst() when pst != null:
return pst(_that.messageCount);case FormatMetadataText() when text != null:
return text(_that.characterCount,_that.lineCount,_that.wordCount,_that.codeBlocks,_that.headers,_that.links);case FormatMetadataXml() when xml != null:
return xml(_that.elementCount,_that.uniqueElements);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class FormatMetadataArchive implements FormatMetadata {
  const FormatMetadataArchive({@JsonKey(name: 'file_count') required this.fileCount, @JsonKey(name: 'file_list') required final  List<String> fileList, required this.format, @JsonKey(name: 'total_size') required this.totalSize, @JsonKey(name: 'compressed_size') this.compressedSize, final  String? $type}): _fileList = fileList,$type = $type ?? 'archive';
  factory FormatMetadataArchive.fromJson(Map<String, dynamic> json) => _$FormatMetadataArchiveFromJson(json);

/// Total number of files in the archive
@JsonKey(name: 'file_count') final  int fileCount;
/// List of file paths within the archive
 final  List<String> _fileList;
/// List of file paths within the archive
@JsonKey(name: 'file_list') List<String> get fileList {
  if (_fileList is EqualUnmodifiableListView) return _fileList;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_fileList);
}

/// Archive format ("ZIP", "TAR", "7Z", etc.)
 final  String format;
/// Total uncompressed size in bytes
@JsonKey(name: 'total_size') final  int totalSize;
/// Compressed size in bytes (if available)
@JsonKey(name: 'compressed_size') final  int? compressedSize;

@JsonKey(name: 'format_type')
final String $type;


/// Create a copy of FormatMetadata
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FormatMetadataArchiveCopyWith<FormatMetadataArchive> get copyWith => _$FormatMetadataArchiveCopyWithImpl<FormatMetadataArchive>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FormatMetadataArchiveToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FormatMetadataArchive&&(identical(other.fileCount, fileCount) || other.fileCount == fileCount)&&const DeepCollectionEquality().equals(other._fileList, _fileList)&&(identical(other.format, format) || other.format == format)&&(identical(other.totalSize, totalSize) || other.totalSize == totalSize)&&(identical(other.compressedSize, compressedSize) || other.compressedSize == compressedSize));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,fileCount,const DeepCollectionEquality().hash(_fileList),format,totalSize,compressedSize);

@override
String toString() {
  return 'FormatMetadata.archive(fileCount: $fileCount, fileList: $fileList, format: $format, totalSize: $totalSize, compressedSize: $compressedSize)';
}


}

/// @nodoc
abstract mixin class $FormatMetadataArchiveCopyWith<$Res> implements $FormatMetadataCopyWith<$Res> {
  factory $FormatMetadataArchiveCopyWith(FormatMetadataArchive value, $Res Function(FormatMetadataArchive) _then) = _$FormatMetadataArchiveCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'file_count') int fileCount,@JsonKey(name: 'file_list') List<String> fileList, String format,@JsonKey(name: 'total_size') int totalSize,@JsonKey(name: 'compressed_size') int? compressedSize
});




}
/// @nodoc
class _$FormatMetadataArchiveCopyWithImpl<$Res>
    implements $FormatMetadataArchiveCopyWith<$Res> {
  _$FormatMetadataArchiveCopyWithImpl(this._self, this._then);

  final FormatMetadataArchive _self;
  final $Res Function(FormatMetadataArchive) _then;

/// Create a copy of FormatMetadata
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? fileCount = null,Object? fileList = null,Object? format = null,Object? totalSize = null,Object? compressedSize = freezed,}) {
  return _then(FormatMetadataArchive(
fileCount: null == fileCount ? _self.fileCount : fileCount // ignore: cast_nullable_to_non_nullable
as int,fileList: null == fileList ? _self._fileList : fileList // ignore: cast_nullable_to_non_nullable
as List<String>,format: null == format ? _self.format : format // ignore: cast_nullable_to_non_nullable
as String,totalSize: null == totalSize ? _self.totalSize : totalSize // ignore: cast_nullable_to_non_nullable
as int,compressedSize: freezed == compressedSize ? _self.compressedSize : compressedSize // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

/// @nodoc
@JsonSerializable()

class FormatMetadataAudio implements FormatMetadata {
  const FormatMetadataAudio({this.bitrate, this.channels, this.codec, this.container, @JsonKey(name: 'duration_ms') this.durationMs, @JsonKey(name: 'sample_rate_hz') this.sampleRateHz, final  String? $type}): $type = $type ?? 'audio';
  factory FormatMetadataAudio.fromJson(Map<String, dynamic> json) => _$FormatMetadataAudioFromJson(json);

/// Audio bitrate in kbps from the source file tags/properties.
 final  int? bitrate;
/// Number of audio channels (1 = mono, 2 = stereo).
 final  int? channels;
/// Audio codec (e.g. "mp3", "aac", "opus", "flac").
 final  String? codec;
/// Container format (e.g. "mpeg", "mp4", "ogg", "wav").
 final  String? container;
/// Duration in milliseconds derived from the decoded audio stream.
@JsonKey(name: 'duration_ms') final  int? durationMs;
/// Sample rate in Hz after decode (always 16000 when resampled for Whisper).
@JsonKey(name: 'sample_rate_hz') final  int? sampleRateHz;

@JsonKey(name: 'format_type')
final String $type;


/// Create a copy of FormatMetadata
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FormatMetadataAudioCopyWith<FormatMetadataAudio> get copyWith => _$FormatMetadataAudioCopyWithImpl<FormatMetadataAudio>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FormatMetadataAudioToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FormatMetadataAudio&&(identical(other.bitrate, bitrate) || other.bitrate == bitrate)&&(identical(other.channels, channels) || other.channels == channels)&&(identical(other.codec, codec) || other.codec == codec)&&(identical(other.container, container) || other.container == container)&&(identical(other.durationMs, durationMs) || other.durationMs == durationMs)&&(identical(other.sampleRateHz, sampleRateHz) || other.sampleRateHz == sampleRateHz));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,bitrate,channels,codec,container,durationMs,sampleRateHz);

@override
String toString() {
  return 'FormatMetadata.audio(bitrate: $bitrate, channels: $channels, codec: $codec, container: $container, durationMs: $durationMs, sampleRateHz: $sampleRateHz)';
}


}

/// @nodoc
abstract mixin class $FormatMetadataAudioCopyWith<$Res> implements $FormatMetadataCopyWith<$Res> {
  factory $FormatMetadataAudioCopyWith(FormatMetadataAudio value, $Res Function(FormatMetadataAudio) _then) = _$FormatMetadataAudioCopyWithImpl;
@useResult
$Res call({
 int? bitrate, int? channels, String? codec, String? container,@JsonKey(name: 'duration_ms') int? durationMs,@JsonKey(name: 'sample_rate_hz') int? sampleRateHz
});




}
/// @nodoc
class _$FormatMetadataAudioCopyWithImpl<$Res>
    implements $FormatMetadataAudioCopyWith<$Res> {
  _$FormatMetadataAudioCopyWithImpl(this._self, this._then);

  final FormatMetadataAudio _self;
  final $Res Function(FormatMetadataAudio) _then;

/// Create a copy of FormatMetadata
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? bitrate = freezed,Object? channels = freezed,Object? codec = freezed,Object? container = freezed,Object? durationMs = freezed,Object? sampleRateHz = freezed,}) {
  return _then(FormatMetadataAudio(
bitrate: freezed == bitrate ? _self.bitrate : bitrate // ignore: cast_nullable_to_non_nullable
as int?,channels: freezed == channels ? _self.channels : channels // ignore: cast_nullable_to_non_nullable
as int?,codec: freezed == codec ? _self.codec : codec // ignore: cast_nullable_to_non_nullable
as String?,container: freezed == container ? _self.container : container // ignore: cast_nullable_to_non_nullable
as String?,durationMs: freezed == durationMs ? _self.durationMs : durationMs // ignore: cast_nullable_to_non_nullable
as int?,sampleRateHz: freezed == sampleRateHz ? _self.sampleRateHz : sampleRateHz // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

/// @nodoc
@JsonSerializable()

class FormatMetadataBibtex implements FormatMetadata {
  const FormatMetadataBibtex({@JsonKey(name: 'entry_count') required this.entryCount, final  List<String>? authors, @JsonKey(name: 'citation_keys') final  List<String>? citationKeys, @JsonKey(name: 'entry_types') final  Map<String, int>? entryTypes, @JsonKey(name: 'year_range') this.yearRange, final  String? $type}): _authors = authors,_citationKeys = citationKeys,_entryTypes = entryTypes,$type = $type ?? 'bibtex';
  factory FormatMetadataBibtex.fromJson(Map<String, dynamic> json) => _$FormatMetadataBibtexFromJson(json);

/// Number of entries in the bibliography.
@JsonKey(name: 'entry_count') final  int entryCount;
/// Author names collected across all bibliography entries.
 final  List<String>? _authors;
/// Author names collected across all bibliography entries.
 List<String>? get authors {
  final value = _authors;
  if (value == null) return null;
  if (_authors is EqualUnmodifiableListView) return _authors;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

/// BibTeX citation keys (e.g. `"knuth1984"`) for all entries.
 final  List<String>? _citationKeys;
/// BibTeX citation keys (e.g. `"knuth1984"`) for all entries.
@JsonKey(name: 'citation_keys') List<String>? get citationKeys {
  final value = _citationKeys;
  if (value == null) return null;
  if (_citationKeys is EqualUnmodifiableListView) return _citationKeys;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

/// Count of entries grouped by BibTeX entry type (e.g. `"article"` → 5).
 final  Map<String, int>? _entryTypes;
/// Count of entries grouped by BibTeX entry type (e.g. `"article"` → 5).
@JsonKey(name: 'entry_types') Map<String, int>? get entryTypes {
  final value = _entryTypes;
  if (value == null) return null;
  if (_entryTypes is EqualUnmodifiableMapView) return _entryTypes;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}

/// Earliest and latest publication years found in the bibliography.
@JsonKey(name: 'year_range') final  YearRange? yearRange;

@JsonKey(name: 'format_type')
final String $type;


/// Create a copy of FormatMetadata
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FormatMetadataBibtexCopyWith<FormatMetadataBibtex> get copyWith => _$FormatMetadataBibtexCopyWithImpl<FormatMetadataBibtex>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FormatMetadataBibtexToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FormatMetadataBibtex&&(identical(other.entryCount, entryCount) || other.entryCount == entryCount)&&const DeepCollectionEquality().equals(other._authors, _authors)&&const DeepCollectionEquality().equals(other._citationKeys, _citationKeys)&&const DeepCollectionEquality().equals(other._entryTypes, _entryTypes)&&(identical(other.yearRange, yearRange) || other.yearRange == yearRange));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,entryCount,const DeepCollectionEquality().hash(_authors),const DeepCollectionEquality().hash(_citationKeys),const DeepCollectionEquality().hash(_entryTypes),yearRange);

@override
String toString() {
  return 'FormatMetadata.bibtex(entryCount: $entryCount, authors: $authors, citationKeys: $citationKeys, entryTypes: $entryTypes, yearRange: $yearRange)';
}


}

/// @nodoc
abstract mixin class $FormatMetadataBibtexCopyWith<$Res> implements $FormatMetadataCopyWith<$Res> {
  factory $FormatMetadataBibtexCopyWith(FormatMetadataBibtex value, $Res Function(FormatMetadataBibtex) _then) = _$FormatMetadataBibtexCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'entry_count') int entryCount, List<String>? authors,@JsonKey(name: 'citation_keys') List<String>? citationKeys,@JsonKey(name: 'entry_types') Map<String, int>? entryTypes,@JsonKey(name: 'year_range') YearRange? yearRange
});


$YearRangeCopyWith<$Res>? get yearRange;

}
/// @nodoc
class _$FormatMetadataBibtexCopyWithImpl<$Res>
    implements $FormatMetadataBibtexCopyWith<$Res> {
  _$FormatMetadataBibtexCopyWithImpl(this._self, this._then);

  final FormatMetadataBibtex _self;
  final $Res Function(FormatMetadataBibtex) _then;

/// Create a copy of FormatMetadata
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? entryCount = null,Object? authors = freezed,Object? citationKeys = freezed,Object? entryTypes = freezed,Object? yearRange = freezed,}) {
  return _then(FormatMetadataBibtex(
entryCount: null == entryCount ? _self.entryCount : entryCount // ignore: cast_nullable_to_non_nullable
as int,authors: freezed == authors ? _self._authors : authors // ignore: cast_nullable_to_non_nullable
as List<String>?,citationKeys: freezed == citationKeys ? _self._citationKeys : citationKeys // ignore: cast_nullable_to_non_nullable
as List<String>?,entryTypes: freezed == entryTypes ? _self._entryTypes : entryTypes // ignore: cast_nullable_to_non_nullable
as Map<String, int>?,yearRange: freezed == yearRange ? _self.yearRange : yearRange // ignore: cast_nullable_to_non_nullable
as YearRange?,
  ));
}

/// Create a copy of FormatMetadata
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$YearRangeCopyWith<$Res>? get yearRange {
    if (_self.yearRange == null) {
    return null;
  }

  return $YearRangeCopyWith<$Res>(_self.yearRange!, (value) {
    return _then(_self.copyWith(yearRange: value));
  });
}
}

/// @nodoc
@JsonSerializable()

class FormatMetadataCitation implements FormatMetadata {
  const FormatMetadataCitation({@JsonKey(name: 'citation_count') required this.citationCount, final  List<String>? authors, final  List<String>? dois, this.format, final  List<String>? keywords, @JsonKey(name: 'year_range') this.yearRange, final  String? $type}): _authors = authors,_dois = dois,_keywords = keywords,$type = $type ?? 'citation';
  factory FormatMetadataCitation.fromJson(Map<String, dynamic> json) => _$FormatMetadataCitationFromJson(json);

/// Total number of citation records in the file.
@JsonKey(name: 'citation_count') final  int citationCount;
/// Author names collected across all citation records.
 final  List<String>? _authors;
/// Author names collected across all citation records.
 List<String>? get authors {
  final value = _authors;
  if (value == null) return null;
  if (_authors is EqualUnmodifiableListView) return _authors;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

/// DOI identifiers found in the citation records.
 final  List<String>? _dois;
/// DOI identifiers found in the citation records.
 List<String>? get dois {
  final value = _dois;
  if (value == null) return null;
  if (_dois is EqualUnmodifiableListView) return _dois;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

/// Detected citation file format (e.g. `"ris"`, `"pubmed"`, `"endnote"`).
 final  String? format;
/// Keywords collected from all citation records.
 final  List<String>? _keywords;
/// Keywords collected from all citation records.
 List<String>? get keywords {
  final value = _keywords;
  if (value == null) return null;
  if (_keywords is EqualUnmodifiableListView) return _keywords;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

/// Earliest and latest publication years found in the file.
@JsonKey(name: 'year_range') final  YearRange? yearRange;

@JsonKey(name: 'format_type')
final String $type;


/// Create a copy of FormatMetadata
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FormatMetadataCitationCopyWith<FormatMetadataCitation> get copyWith => _$FormatMetadataCitationCopyWithImpl<FormatMetadataCitation>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FormatMetadataCitationToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FormatMetadataCitation&&(identical(other.citationCount, citationCount) || other.citationCount == citationCount)&&const DeepCollectionEquality().equals(other._authors, _authors)&&const DeepCollectionEquality().equals(other._dois, _dois)&&(identical(other.format, format) || other.format == format)&&const DeepCollectionEquality().equals(other._keywords, _keywords)&&(identical(other.yearRange, yearRange) || other.yearRange == yearRange));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,citationCount,const DeepCollectionEquality().hash(_authors),const DeepCollectionEquality().hash(_dois),format,const DeepCollectionEquality().hash(_keywords),yearRange);

@override
String toString() {
  return 'FormatMetadata.citation(citationCount: $citationCount, authors: $authors, dois: $dois, format: $format, keywords: $keywords, yearRange: $yearRange)';
}


}

/// @nodoc
abstract mixin class $FormatMetadataCitationCopyWith<$Res> implements $FormatMetadataCopyWith<$Res> {
  factory $FormatMetadataCitationCopyWith(FormatMetadataCitation value, $Res Function(FormatMetadataCitation) _then) = _$FormatMetadataCitationCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'citation_count') int citationCount, List<String>? authors, List<String>? dois, String? format, List<String>? keywords,@JsonKey(name: 'year_range') YearRange? yearRange
});


$YearRangeCopyWith<$Res>? get yearRange;

}
/// @nodoc
class _$FormatMetadataCitationCopyWithImpl<$Res>
    implements $FormatMetadataCitationCopyWith<$Res> {
  _$FormatMetadataCitationCopyWithImpl(this._self, this._then);

  final FormatMetadataCitation _self;
  final $Res Function(FormatMetadataCitation) _then;

/// Create a copy of FormatMetadata
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? citationCount = null,Object? authors = freezed,Object? dois = freezed,Object? format = freezed,Object? keywords = freezed,Object? yearRange = freezed,}) {
  return _then(FormatMetadataCitation(
citationCount: null == citationCount ? _self.citationCount : citationCount // ignore: cast_nullable_to_non_nullable
as int,authors: freezed == authors ? _self._authors : authors // ignore: cast_nullable_to_non_nullable
as List<String>?,dois: freezed == dois ? _self._dois : dois // ignore: cast_nullable_to_non_nullable
as List<String>?,format: freezed == format ? _self.format : format // ignore: cast_nullable_to_non_nullable
as String?,keywords: freezed == keywords ? _self._keywords : keywords // ignore: cast_nullable_to_non_nullable
as List<String>?,yearRange: freezed == yearRange ? _self.yearRange : yearRange // ignore: cast_nullable_to_non_nullable
as YearRange?,
  ));
}

/// Create a copy of FormatMetadata
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$YearRangeCopyWith<$Res>? get yearRange {
    if (_self.yearRange == null) {
    return null;
  }

  return $YearRangeCopyWith<$Res>(_self.yearRange!, (value) {
    return _then(_self.copyWith(yearRange: value));
  });
}
}

/// @nodoc
@JsonSerializable()

class FormatMetadataCode implements FormatMetadata {
  const FormatMetadataCode({required final  List<CodeChunkInfo> chunks, final  String? $type}): _chunks = chunks,$type = $type ?? 'code';
  factory FormatMetadataCode.fromJson(Map<String, dynamic> json) => _$FormatMetadataCodeFromJson(json);

/// Structural code chunks (function/class/module boundaries).
 final  List<CodeChunkInfo> _chunks;
/// Structural code chunks (function/class/module boundaries).
 List<CodeChunkInfo> get chunks {
  if (_chunks is EqualUnmodifiableListView) return _chunks;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_chunks);
}


@JsonKey(name: 'format_type')
final String $type;


/// Create a copy of FormatMetadata
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FormatMetadataCodeCopyWith<FormatMetadataCode> get copyWith => _$FormatMetadataCodeCopyWithImpl<FormatMetadataCode>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FormatMetadataCodeToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FormatMetadataCode&&const DeepCollectionEquality().equals(other._chunks, _chunks));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_chunks));

@override
String toString() {
  return 'FormatMetadata.code(chunks: $chunks)';
}


}

/// @nodoc
abstract mixin class $FormatMetadataCodeCopyWith<$Res> implements $FormatMetadataCopyWith<$Res> {
  factory $FormatMetadataCodeCopyWith(FormatMetadataCode value, $Res Function(FormatMetadataCode) _then) = _$FormatMetadataCodeCopyWithImpl;
@useResult
$Res call({
 List<CodeChunkInfo> chunks
});




}
/// @nodoc
class _$FormatMetadataCodeCopyWithImpl<$Res>
    implements $FormatMetadataCodeCopyWith<$Res> {
  _$FormatMetadataCodeCopyWithImpl(this._self, this._then);

  final FormatMetadataCode _self;
  final $Res Function(FormatMetadataCode) _then;

/// Create a copy of FormatMetadata
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? chunks = null,}) {
  return _then(FormatMetadataCode(
chunks: null == chunks ? _self._chunks : chunks // ignore: cast_nullable_to_non_nullable
as List<CodeChunkInfo>,
  ));
}


}

/// @nodoc
@JsonSerializable()

class FormatMetadataCsv implements FormatMetadata {
  const FormatMetadataCsv({@JsonKey(name: 'column_count') required this.columnCount, @JsonKey(name: 'has_header') required this.hasHeader, @JsonKey(name: 'row_count') required this.rowCount, @JsonKey(name: 'column_types') final  List<String>? columnTypes, this.delimiter, final  String? $type}): _columnTypes = columnTypes,$type = $type ?? 'csv';
  factory FormatMetadataCsv.fromJson(Map<String, dynamic> json) => _$FormatMetadataCsvFromJson(json);

/// Number of columns detected.
@JsonKey(name: 'column_count') final  int columnCount;
/// Whether the first row was treated as a header.
@JsonKey(name: 'has_header') final  bool hasHeader;
/// Total number of data rows (excluding the header row if present).
@JsonKey(name: 'row_count') final  int rowCount;
/// Inferred data type for each column (e.g. `"string"`, `"integer"`, `"float"`).
 final  List<String>? _columnTypes;
/// Inferred data type for each column (e.g. `"string"`, `"integer"`, `"float"`).
@JsonKey(name: 'column_types') List<String>? get columnTypes {
  final value = _columnTypes;
  if (value == null) return null;
  if (_columnTypes is EqualUnmodifiableListView) return _columnTypes;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

/// Field delimiter character (e.g. `","` or `"\t"`).
 final  String? delimiter;

@JsonKey(name: 'format_type')
final String $type;


/// Create a copy of FormatMetadata
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FormatMetadataCsvCopyWith<FormatMetadataCsv> get copyWith => _$FormatMetadataCsvCopyWithImpl<FormatMetadataCsv>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FormatMetadataCsvToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FormatMetadataCsv&&(identical(other.columnCount, columnCount) || other.columnCount == columnCount)&&(identical(other.hasHeader, hasHeader) || other.hasHeader == hasHeader)&&(identical(other.rowCount, rowCount) || other.rowCount == rowCount)&&const DeepCollectionEquality().equals(other._columnTypes, _columnTypes)&&(identical(other.delimiter, delimiter) || other.delimiter == delimiter));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,columnCount,hasHeader,rowCount,const DeepCollectionEquality().hash(_columnTypes),delimiter);

@override
String toString() {
  return 'FormatMetadata.csv(columnCount: $columnCount, hasHeader: $hasHeader, rowCount: $rowCount, columnTypes: $columnTypes, delimiter: $delimiter)';
}


}

/// @nodoc
abstract mixin class $FormatMetadataCsvCopyWith<$Res> implements $FormatMetadataCopyWith<$Res> {
  factory $FormatMetadataCsvCopyWith(FormatMetadataCsv value, $Res Function(FormatMetadataCsv) _then) = _$FormatMetadataCsvCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'column_count') int columnCount,@JsonKey(name: 'has_header') bool hasHeader,@JsonKey(name: 'row_count') int rowCount,@JsonKey(name: 'column_types') List<String>? columnTypes, String? delimiter
});




}
/// @nodoc
class _$FormatMetadataCsvCopyWithImpl<$Res>
    implements $FormatMetadataCsvCopyWith<$Res> {
  _$FormatMetadataCsvCopyWithImpl(this._self, this._then);

  final FormatMetadataCsv _self;
  final $Res Function(FormatMetadataCsv) _then;

/// Create a copy of FormatMetadata
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? columnCount = null,Object? hasHeader = null,Object? rowCount = null,Object? columnTypes = freezed,Object? delimiter = freezed,}) {
  return _then(FormatMetadataCsv(
columnCount: null == columnCount ? _self.columnCount : columnCount // ignore: cast_nullable_to_non_nullable
as int,hasHeader: null == hasHeader ? _self.hasHeader : hasHeader // ignore: cast_nullable_to_non_nullable
as bool,rowCount: null == rowCount ? _self.rowCount : rowCount // ignore: cast_nullable_to_non_nullable
as int,columnTypes: freezed == columnTypes ? _self._columnTypes : columnTypes // ignore: cast_nullable_to_non_nullable
as List<String>?,delimiter: freezed == delimiter ? _self.delimiter : delimiter // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc
@JsonSerializable()

class FormatMetadataDbf implements FormatMetadata {
  const FormatMetadataDbf({@JsonKey(name: 'field_count') required this.fieldCount, @JsonKey(name: 'record_count') required this.recordCount, final  List<DbfFieldInfo>? fields, final  String? $type}): _fields = fields,$type = $type ?? 'dbf';
  factory FormatMetadataDbf.fromJson(Map<String, dynamic> json) => _$FormatMetadataDbfFromJson(json);

/// Number of field (column) definitions.
@JsonKey(name: 'field_count') final  int fieldCount;
/// Total number of data records in the DBF file.
@JsonKey(name: 'record_count') final  int recordCount;
/// Descriptor for each field in the table schema.
 final  List<DbfFieldInfo>? _fields;
/// Descriptor for each field in the table schema.
 List<DbfFieldInfo>? get fields {
  final value = _fields;
  if (value == null) return null;
  if (_fields is EqualUnmodifiableListView) return _fields;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


@JsonKey(name: 'format_type')
final String $type;


/// Create a copy of FormatMetadata
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FormatMetadataDbfCopyWith<FormatMetadataDbf> get copyWith => _$FormatMetadataDbfCopyWithImpl<FormatMetadataDbf>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FormatMetadataDbfToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FormatMetadataDbf&&(identical(other.fieldCount, fieldCount) || other.fieldCount == fieldCount)&&(identical(other.recordCount, recordCount) || other.recordCount == recordCount)&&const DeepCollectionEquality().equals(other._fields, _fields));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,fieldCount,recordCount,const DeepCollectionEquality().hash(_fields));

@override
String toString() {
  return 'FormatMetadata.dbf(fieldCount: $fieldCount, recordCount: $recordCount, fields: $fields)';
}


}

/// @nodoc
abstract mixin class $FormatMetadataDbfCopyWith<$Res> implements $FormatMetadataCopyWith<$Res> {
  factory $FormatMetadataDbfCopyWith(FormatMetadataDbf value, $Res Function(FormatMetadataDbf) _then) = _$FormatMetadataDbfCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'field_count') int fieldCount,@JsonKey(name: 'record_count') int recordCount, List<DbfFieldInfo>? fields
});




}
/// @nodoc
class _$FormatMetadataDbfCopyWithImpl<$Res>
    implements $FormatMetadataDbfCopyWith<$Res> {
  _$FormatMetadataDbfCopyWithImpl(this._self, this._then);

  final FormatMetadataDbf _self;
  final $Res Function(FormatMetadataDbf) _then;

/// Create a copy of FormatMetadata
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? fieldCount = null,Object? recordCount = null,Object? fields = freezed,}) {
  return _then(FormatMetadataDbf(
fieldCount: null == fieldCount ? _self.fieldCount : fieldCount // ignore: cast_nullable_to_non_nullable
as int,recordCount: null == recordCount ? _self.recordCount : recordCount // ignore: cast_nullable_to_non_nullable
as int,fields: freezed == fields ? _self._fields : fields // ignore: cast_nullable_to_non_nullable
as List<DbfFieldInfo>?,
  ));
}


}

/// @nodoc
@JsonSerializable()

class FormatMetadataDocx implements FormatMetadata {
  const FormatMetadataDocx({@JsonKey(name: 'app_properties') this.appProperties, @JsonKey(name: 'core_properties') this.coreProperties, @JsonKey(name: 'custom_properties') final  Map<String, dynamic>? customProperties, final  String? $type}): _customProperties = customProperties,$type = $type ?? 'docx';
  factory FormatMetadataDocx.fromJson(Map<String, dynamic> json) => _$FormatMetadataDocxFromJson(json);

/// Application properties from docProps/app.xml (Word-specific statistics).
///
/// Contains word count, page count, paragraph count, editing time, etc.
/// DOCX-specific variant of Office application properties.
@JsonKey(name: 'app_properties') final  dynamic appProperties;
/// Core properties from docProps/core.xml (Dublin Core metadata).
///
/// Contains title, creator, subject, keywords, dates, etc.
/// Shared format across DOCX/PPTX/XLSX documents.
@JsonKey(name: 'core_properties') final  dynamic coreProperties;
/// Custom properties from docProps/custom.xml (user-defined properties).
///
/// Contains key-value pairs defined by users or applications.
/// Values can be strings, numbers, booleans, or dates.
 final  Map<String, dynamic>? _customProperties;
/// Custom properties from docProps/custom.xml (user-defined properties).
///
/// Contains key-value pairs defined by users or applications.
/// Values can be strings, numbers, booleans, or dates.
@JsonKey(name: 'custom_properties') Map<String, dynamic>? get customProperties {
  final value = _customProperties;
  if (value == null) return null;
  if (_customProperties is EqualUnmodifiableMapView) return _customProperties;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}


@JsonKey(name: 'format_type')
final String $type;


/// Create a copy of FormatMetadata
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FormatMetadataDocxCopyWith<FormatMetadataDocx> get copyWith => _$FormatMetadataDocxCopyWithImpl<FormatMetadataDocx>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FormatMetadataDocxToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FormatMetadataDocx&&const DeepCollectionEquality().equals(other.appProperties, appProperties)&&const DeepCollectionEquality().equals(other.coreProperties, coreProperties)&&const DeepCollectionEquality().equals(other._customProperties, _customProperties));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(appProperties),const DeepCollectionEquality().hash(coreProperties),const DeepCollectionEquality().hash(_customProperties));

@override
String toString() {
  return 'FormatMetadata.docx(appProperties: $appProperties, coreProperties: $coreProperties, customProperties: $customProperties)';
}


}

/// @nodoc
abstract mixin class $FormatMetadataDocxCopyWith<$Res> implements $FormatMetadataCopyWith<$Res> {
  factory $FormatMetadataDocxCopyWith(FormatMetadataDocx value, $Res Function(FormatMetadataDocx) _then) = _$FormatMetadataDocxCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'app_properties') dynamic appProperties,@JsonKey(name: 'core_properties') dynamic coreProperties,@JsonKey(name: 'custom_properties') Map<String, dynamic>? customProperties
});




}
/// @nodoc
class _$FormatMetadataDocxCopyWithImpl<$Res>
    implements $FormatMetadataDocxCopyWith<$Res> {
  _$FormatMetadataDocxCopyWithImpl(this._self, this._then);

  final FormatMetadataDocx _self;
  final $Res Function(FormatMetadataDocx) _then;

/// Create a copy of FormatMetadata
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? appProperties = freezed,Object? coreProperties = freezed,Object? customProperties = freezed,}) {
  return _then(FormatMetadataDocx(
appProperties: freezed == appProperties ? _self.appProperties : appProperties // ignore: cast_nullable_to_non_nullable
as dynamic,coreProperties: freezed == coreProperties ? _self.coreProperties : coreProperties // ignore: cast_nullable_to_non_nullable
as dynamic,customProperties: freezed == customProperties ? _self._customProperties : customProperties // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,
  ));
}


}

/// @nodoc
@JsonSerializable()

class FormatMetadataEmail implements FormatMetadata {
  const FormatMetadataEmail({required final  List<String> attachments, @JsonKey(name: 'bcc_emails') required final  List<String> bccEmails, @JsonKey(name: 'cc_emails') required final  List<String> ccEmails, @JsonKey(name: 'to_emails') required final  List<String> toEmails, @JsonKey(name: 'from_email') this.fromEmail, @JsonKey(name: 'from_name') this.fromName, @JsonKey(name: 'message_id') this.messageId, final  String? $type}): _attachments = attachments,_bccEmails = bccEmails,_ccEmails = ccEmails,_toEmails = toEmails,$type = $type ?? 'email';
  factory FormatMetadataEmail.fromJson(Map<String, dynamic> json) => _$FormatMetadataEmailFromJson(json);

/// List of attachment filenames
 final  List<String> _attachments;
/// List of attachment filenames
 List<String> get attachments {
  if (_attachments is EqualUnmodifiableListView) return _attachments;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_attachments);
}

/// BCC recipients
 final  List<String> _bccEmails;
/// BCC recipients
@JsonKey(name: 'bcc_emails') List<String> get bccEmails {
  if (_bccEmails is EqualUnmodifiableListView) return _bccEmails;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_bccEmails);
}

/// CC recipients
 final  List<String> _ccEmails;
/// CC recipients
@JsonKey(name: 'cc_emails') List<String> get ccEmails {
  if (_ccEmails is EqualUnmodifiableListView) return _ccEmails;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_ccEmails);
}

/// Primary recipients
 final  List<String> _toEmails;
/// Primary recipients
@JsonKey(name: 'to_emails') List<String> get toEmails {
  if (_toEmails is EqualUnmodifiableListView) return _toEmails;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_toEmails);
}

/// Sender's email address
@JsonKey(name: 'from_email') final  String? fromEmail;
/// Sender's display name
@JsonKey(name: 'from_name') final  String? fromName;
/// Message-ID header value
@JsonKey(name: 'message_id') final  String? messageId;

@JsonKey(name: 'format_type')
final String $type;


/// Create a copy of FormatMetadata
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FormatMetadataEmailCopyWith<FormatMetadataEmail> get copyWith => _$FormatMetadataEmailCopyWithImpl<FormatMetadataEmail>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FormatMetadataEmailToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FormatMetadataEmail&&const DeepCollectionEquality().equals(other._attachments, _attachments)&&const DeepCollectionEquality().equals(other._bccEmails, _bccEmails)&&const DeepCollectionEquality().equals(other._ccEmails, _ccEmails)&&const DeepCollectionEquality().equals(other._toEmails, _toEmails)&&(identical(other.fromEmail, fromEmail) || other.fromEmail == fromEmail)&&(identical(other.fromName, fromName) || other.fromName == fromName)&&(identical(other.messageId, messageId) || other.messageId == messageId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_attachments),const DeepCollectionEquality().hash(_bccEmails),const DeepCollectionEquality().hash(_ccEmails),const DeepCollectionEquality().hash(_toEmails),fromEmail,fromName,messageId);

@override
String toString() {
  return 'FormatMetadata.email(attachments: $attachments, bccEmails: $bccEmails, ccEmails: $ccEmails, toEmails: $toEmails, fromEmail: $fromEmail, fromName: $fromName, messageId: $messageId)';
}


}

/// @nodoc
abstract mixin class $FormatMetadataEmailCopyWith<$Res> implements $FormatMetadataCopyWith<$Res> {
  factory $FormatMetadataEmailCopyWith(FormatMetadataEmail value, $Res Function(FormatMetadataEmail) _then) = _$FormatMetadataEmailCopyWithImpl;
@useResult
$Res call({
 List<String> attachments,@JsonKey(name: 'bcc_emails') List<String> bccEmails,@JsonKey(name: 'cc_emails') List<String> ccEmails,@JsonKey(name: 'to_emails') List<String> toEmails,@JsonKey(name: 'from_email') String? fromEmail,@JsonKey(name: 'from_name') String? fromName,@JsonKey(name: 'message_id') String? messageId
});




}
/// @nodoc
class _$FormatMetadataEmailCopyWithImpl<$Res>
    implements $FormatMetadataEmailCopyWith<$Res> {
  _$FormatMetadataEmailCopyWithImpl(this._self, this._then);

  final FormatMetadataEmail _self;
  final $Res Function(FormatMetadataEmail) _then;

/// Create a copy of FormatMetadata
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? attachments = null,Object? bccEmails = null,Object? ccEmails = null,Object? toEmails = null,Object? fromEmail = freezed,Object? fromName = freezed,Object? messageId = freezed,}) {
  return _then(FormatMetadataEmail(
attachments: null == attachments ? _self._attachments : attachments // ignore: cast_nullable_to_non_nullable
as List<String>,bccEmails: null == bccEmails ? _self._bccEmails : bccEmails // ignore: cast_nullable_to_non_nullable
as List<String>,ccEmails: null == ccEmails ? _self._ccEmails : ccEmails // ignore: cast_nullable_to_non_nullable
as List<String>,toEmails: null == toEmails ? _self._toEmails : toEmails // ignore: cast_nullable_to_non_nullable
as List<String>,fromEmail: freezed == fromEmail ? _self.fromEmail : fromEmail // ignore: cast_nullable_to_non_nullable
as String?,fromName: freezed == fromName ? _self.fromName : fromName // ignore: cast_nullable_to_non_nullable
as String?,messageId: freezed == messageId ? _self.messageId : messageId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc
@JsonSerializable()

class FormatMetadataEpub implements FormatMetadata {
  const FormatMetadataEpub({@JsonKey(name: 'cover_image') this.coverImage, this.coverage, @JsonKey(name: 'dc_format') this.dcFormat, @JsonKey(name: 'dc_type') this.dcType, this.relation, this.source, final  String? $type}): $type = $type ?? 'epub';
  factory FormatMetadataEpub.fromJson(Map<String, dynamic> json) => _$FormatMetadataEpubFromJson(json);

/// Path or identifier of the cover image within the EPUB container.
@JsonKey(name: 'cover_image') final  String? coverImage;
/// Dublin Core `coverage` field (geographic or temporal scope).
 final  String? coverage;
/// Dublin Core `format` field (media type of the resource).
@JsonKey(name: 'dc_format') final  String? dcFormat;
/// Dublin Core `type` field (nature or genre of the resource).
@JsonKey(name: 'dc_type') final  String? dcType;
/// Dublin Core `relation` field (related resource identifier).
 final  String? relation;
/// Dublin Core `source` field (origin resource identifier).
 final  String? source;

@JsonKey(name: 'format_type')
final String $type;


/// Create a copy of FormatMetadata
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FormatMetadataEpubCopyWith<FormatMetadataEpub> get copyWith => _$FormatMetadataEpubCopyWithImpl<FormatMetadataEpub>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FormatMetadataEpubToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FormatMetadataEpub&&(identical(other.coverImage, coverImage) || other.coverImage == coverImage)&&(identical(other.coverage, coverage) || other.coverage == coverage)&&(identical(other.dcFormat, dcFormat) || other.dcFormat == dcFormat)&&(identical(other.dcType, dcType) || other.dcType == dcType)&&(identical(other.relation, relation) || other.relation == relation)&&(identical(other.source, source) || other.source == source));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,coverImage,coverage,dcFormat,dcType,relation,source);

@override
String toString() {
  return 'FormatMetadata.epub(coverImage: $coverImage, coverage: $coverage, dcFormat: $dcFormat, dcType: $dcType, relation: $relation, source: $source)';
}


}

/// @nodoc
abstract mixin class $FormatMetadataEpubCopyWith<$Res> implements $FormatMetadataCopyWith<$Res> {
  factory $FormatMetadataEpubCopyWith(FormatMetadataEpub value, $Res Function(FormatMetadataEpub) _then) = _$FormatMetadataEpubCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'cover_image') String? coverImage, String? coverage,@JsonKey(name: 'dc_format') String? dcFormat,@JsonKey(name: 'dc_type') String? dcType, String? relation, String? source
});




}
/// @nodoc
class _$FormatMetadataEpubCopyWithImpl<$Res>
    implements $FormatMetadataEpubCopyWith<$Res> {
  _$FormatMetadataEpubCopyWithImpl(this._self, this._then);

  final FormatMetadataEpub _self;
  final $Res Function(FormatMetadataEpub) _then;

/// Create a copy of FormatMetadata
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? coverImage = freezed,Object? coverage = freezed,Object? dcFormat = freezed,Object? dcType = freezed,Object? relation = freezed,Object? source = freezed,}) {
  return _then(FormatMetadataEpub(
coverImage: freezed == coverImage ? _self.coverImage : coverImage // ignore: cast_nullable_to_non_nullable
as String?,coverage: freezed == coverage ? _self.coverage : coverage // ignore: cast_nullable_to_non_nullable
as String?,dcFormat: freezed == dcFormat ? _self.dcFormat : dcFormat // ignore: cast_nullable_to_non_nullable
as String?,dcType: freezed == dcType ? _self.dcType : dcType // ignore: cast_nullable_to_non_nullable
as String?,relation: freezed == relation ? _self.relation : relation // ignore: cast_nullable_to_non_nullable
as String?,source: freezed == source ? _self.source : source // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc
@JsonSerializable()

class FormatMetadataExcel implements FormatMetadata {
  const FormatMetadataExcel({@JsonKey(name: 'sheet_count') this.sheetCount, @JsonKey(name: 'sheet_names') final  List<String>? sheetNames, final  String? $type}): _sheetNames = sheetNames,$type = $type ?? 'excel';
  factory FormatMetadataExcel.fromJson(Map<String, dynamic> json) => _$FormatMetadataExcelFromJson(json);

/// Number of sheets in the workbook.
@JsonKey(name: 'sheet_count') final  int? sheetCount;
/// Names of all sheets in the workbook.
 final  List<String>? _sheetNames;
/// Names of all sheets in the workbook.
@JsonKey(name: 'sheet_names') List<String>? get sheetNames {
  final value = _sheetNames;
  if (value == null) return null;
  if (_sheetNames is EqualUnmodifiableListView) return _sheetNames;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


@JsonKey(name: 'format_type')
final String $type;


/// Create a copy of FormatMetadata
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FormatMetadataExcelCopyWith<FormatMetadataExcel> get copyWith => _$FormatMetadataExcelCopyWithImpl<FormatMetadataExcel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FormatMetadataExcelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FormatMetadataExcel&&(identical(other.sheetCount, sheetCount) || other.sheetCount == sheetCount)&&const DeepCollectionEquality().equals(other._sheetNames, _sheetNames));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,sheetCount,const DeepCollectionEquality().hash(_sheetNames));

@override
String toString() {
  return 'FormatMetadata.excel(sheetCount: $sheetCount, sheetNames: $sheetNames)';
}


}

/// @nodoc
abstract mixin class $FormatMetadataExcelCopyWith<$Res> implements $FormatMetadataCopyWith<$Res> {
  factory $FormatMetadataExcelCopyWith(FormatMetadataExcel value, $Res Function(FormatMetadataExcel) _then) = _$FormatMetadataExcelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'sheet_count') int? sheetCount,@JsonKey(name: 'sheet_names') List<String>? sheetNames
});




}
/// @nodoc
class _$FormatMetadataExcelCopyWithImpl<$Res>
    implements $FormatMetadataExcelCopyWith<$Res> {
  _$FormatMetadataExcelCopyWithImpl(this._self, this._then);

  final FormatMetadataExcel _self;
  final $Res Function(FormatMetadataExcel) _then;

/// Create a copy of FormatMetadata
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? sheetCount = freezed,Object? sheetNames = freezed,}) {
  return _then(FormatMetadataExcel(
sheetCount: freezed == sheetCount ? _self.sheetCount : sheetCount // ignore: cast_nullable_to_non_nullable
as int?,sheetNames: freezed == sheetNames ? _self._sheetNames : sheetNames // ignore: cast_nullable_to_non_nullable
as List<String>?,
  ));
}


}

/// @nodoc
@JsonSerializable()

class FormatMetadataFictionBook implements FormatMetadata {
  const FormatMetadataFictionBook({this.annotation, final  List<String>? genres, final  List<String>? sequences, final  String? $type}): _genres = genres,_sequences = sequences,$type = $type ?? 'fiction_book';
  factory FormatMetadataFictionBook.fromJson(Map<String, dynamic> json) => _$FormatMetadataFictionBookFromJson(json);

/// Short annotation / summary from the FB2 `<annotation>` element.
 final  String? annotation;
/// Genre tags as declared in the FB2 `<genre>` elements.
 final  List<String>? _genres;
/// Genre tags as declared in the FB2 `<genre>` elements.
 List<String>? get genres {
  final value = _genres;
  if (value == null) return null;
  if (_genres is EqualUnmodifiableListView) return _genres;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

/// Book series (sequence) names, if any.
 final  List<String>? _sequences;
/// Book series (sequence) names, if any.
 List<String>? get sequences {
  final value = _sequences;
  if (value == null) return null;
  if (_sequences is EqualUnmodifiableListView) return _sequences;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


@JsonKey(name: 'format_type')
final String $type;


/// Create a copy of FormatMetadata
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FormatMetadataFictionBookCopyWith<FormatMetadataFictionBook> get copyWith => _$FormatMetadataFictionBookCopyWithImpl<FormatMetadataFictionBook>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FormatMetadataFictionBookToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FormatMetadataFictionBook&&(identical(other.annotation, annotation) || other.annotation == annotation)&&const DeepCollectionEquality().equals(other._genres, _genres)&&const DeepCollectionEquality().equals(other._sequences, _sequences));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,annotation,const DeepCollectionEquality().hash(_genres),const DeepCollectionEquality().hash(_sequences));

@override
String toString() {
  return 'FormatMetadata.fictionBook(annotation: $annotation, genres: $genres, sequences: $sequences)';
}


}

/// @nodoc
abstract mixin class $FormatMetadataFictionBookCopyWith<$Res> implements $FormatMetadataCopyWith<$Res> {
  factory $FormatMetadataFictionBookCopyWith(FormatMetadataFictionBook value, $Res Function(FormatMetadataFictionBook) _then) = _$FormatMetadataFictionBookCopyWithImpl;
@useResult
$Res call({
 String? annotation, List<String>? genres, List<String>? sequences
});




}
/// @nodoc
class _$FormatMetadataFictionBookCopyWithImpl<$Res>
    implements $FormatMetadataFictionBookCopyWith<$Res> {
  _$FormatMetadataFictionBookCopyWithImpl(this._self, this._then);

  final FormatMetadataFictionBook _self;
  final $Res Function(FormatMetadataFictionBook) _then;

/// Create a copy of FormatMetadata
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? annotation = freezed,Object? genres = freezed,Object? sequences = freezed,}) {
  return _then(FormatMetadataFictionBook(
annotation: freezed == annotation ? _self.annotation : annotation // ignore: cast_nullable_to_non_nullable
as String?,genres: freezed == genres ? _self._genres : genres // ignore: cast_nullable_to_non_nullable
as List<String>?,sequences: freezed == sequences ? _self._sequences : sequences // ignore: cast_nullable_to_non_nullable
as List<String>?,
  ));
}


}

/// @nodoc
@JsonSerializable()

class FormatMetadataHtml implements FormatMetadata {
  const FormatMetadataHtml({this.author, @JsonKey(name: 'base_href') this.baseHref, @JsonKey(name: 'canonical_url') this.canonicalUrl, this.description, final  List<HeaderMetadata>? headers, final  List<ImageMetadataType>? images, final  List<String>? keywords, this.language, final  List<LinkMetadata>? links, @JsonKey(name: 'meta_tags') final  Map<String, String>? metaTags, @JsonKey(name: 'open_graph') final  Map<String, String>? openGraph, @JsonKey(name: 'structured_data') final  List<StructuredData>? structuredData, @JsonKey(name: 'text_direction') this.textDirection, this.title, @JsonKey(name: 'twitter_card') final  Map<String, String>? twitterCard, final  String? $type}): _headers = headers,_images = images,_keywords = keywords,_links = links,_metaTags = metaTags,_openGraph = openGraph,_structuredData = structuredData,_twitterCard = twitterCard,$type = $type ?? 'html';
  factory FormatMetadataHtml.fromJson(Map<String, dynamic> json) => _$FormatMetadataHtmlFromJson(json);

/// Document author from `<meta name="author">` tag
 final  String? author;
/// Base URL from `<base href="">` tag for resolving relative URLs
@JsonKey(name: 'base_href') final  String? baseHref;
/// Canonical URL from `<link rel="canonical">` tag
@JsonKey(name: 'canonical_url') final  String? canonicalUrl;
/// Document description from `<meta name="description">` tag
 final  String? description;
/// Extracted header elements with hierarchy
 final  List<HeaderMetadata>? _headers;
/// Extracted header elements with hierarchy
 List<HeaderMetadata>? get headers {
  final value = _headers;
  if (value == null) return null;
  if (_headers is EqualUnmodifiableListView) return _headers;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

/// Extracted images with source and dimensions
 final  List<ImageMetadataType>? _images;
/// Extracted images with source and dimensions
 List<ImageMetadataType>? get images {
  final value = _images;
  if (value == null) return null;
  if (_images is EqualUnmodifiableListView) return _images;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

/// Document keywords from `<meta name="keywords">` tag, split on commas
 final  List<String>? _keywords;
/// Document keywords from `<meta name="keywords">` tag, split on commas
 List<String>? get keywords {
  final value = _keywords;
  if (value == null) return null;
  if (_keywords is EqualUnmodifiableListView) return _keywords;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

/// Document language from `lang` attribute
 final  String? language;
/// Extracted hyperlinks with type classification
 final  List<LinkMetadata>? _links;
/// Extracted hyperlinks with type classification
 List<LinkMetadata>? get links {
  final value = _links;
  if (value == null) return null;
  if (_links is EqualUnmodifiableListView) return _links;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

/// Additional meta tags not covered by specific fields.
/// Keys are meta name/property attributes, values are content.
 final  Map<String, String>? _metaTags;
/// Additional meta tags not covered by specific fields.
/// Keys are meta name/property attributes, values are content.
@JsonKey(name: 'meta_tags') Map<String, String>? get metaTags {
  final value = _metaTags;
  if (value == null) return null;
  if (_metaTags is EqualUnmodifiableMapView) return _metaTags;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}

/// Open Graph metadata (og:* properties) for social media.
/// Keys like "title", "description", "image", "url", etc.
 final  Map<String, String>? _openGraph;
/// Open Graph metadata (og:* properties) for social media.
/// Keys like "title", "description", "image", "url", etc.
@JsonKey(name: 'open_graph') Map<String, String>? get openGraph {
  final value = _openGraph;
  if (value == null) return null;
  if (_openGraph is EqualUnmodifiableMapView) return _openGraph;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}

/// Extracted structured data blocks
 final  List<StructuredData>? _structuredData;
/// Extracted structured data blocks
@JsonKey(name: 'structured_data') List<StructuredData>? get structuredData {
  final value = _structuredData;
  if (value == null) return null;
  if (_structuredData is EqualUnmodifiableListView) return _structuredData;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

/// Document text direction from `dir` attribute
@JsonKey(name: 'text_direction') final  TextDirection? textDirection;
/// Document title from `<title>` tag
 final  String? title;
/// Twitter Card metadata (twitter:* properties).
/// Keys like "card", "site", "creator", "title", "description", "image", etc.
 final  Map<String, String>? _twitterCard;
/// Twitter Card metadata (twitter:* properties).
/// Keys like "card", "site", "creator", "title", "description", "image", etc.
@JsonKey(name: 'twitter_card') Map<String, String>? get twitterCard {
  final value = _twitterCard;
  if (value == null) return null;
  if (_twitterCard is EqualUnmodifiableMapView) return _twitterCard;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}


@JsonKey(name: 'format_type')
final String $type;


/// Create a copy of FormatMetadata
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FormatMetadataHtmlCopyWith<FormatMetadataHtml> get copyWith => _$FormatMetadataHtmlCopyWithImpl<FormatMetadataHtml>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FormatMetadataHtmlToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FormatMetadataHtml&&(identical(other.author, author) || other.author == author)&&(identical(other.baseHref, baseHref) || other.baseHref == baseHref)&&(identical(other.canonicalUrl, canonicalUrl) || other.canonicalUrl == canonicalUrl)&&(identical(other.description, description) || other.description == description)&&const DeepCollectionEquality().equals(other._headers, _headers)&&const DeepCollectionEquality().equals(other._images, _images)&&const DeepCollectionEquality().equals(other._keywords, _keywords)&&(identical(other.language, language) || other.language == language)&&const DeepCollectionEquality().equals(other._links, _links)&&const DeepCollectionEquality().equals(other._metaTags, _metaTags)&&const DeepCollectionEquality().equals(other._openGraph, _openGraph)&&const DeepCollectionEquality().equals(other._structuredData, _structuredData)&&(identical(other.textDirection, textDirection) || other.textDirection == textDirection)&&(identical(other.title, title) || other.title == title)&&const DeepCollectionEquality().equals(other._twitterCard, _twitterCard));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,author,baseHref,canonicalUrl,description,const DeepCollectionEquality().hash(_headers),const DeepCollectionEquality().hash(_images),const DeepCollectionEquality().hash(_keywords),language,const DeepCollectionEquality().hash(_links),const DeepCollectionEquality().hash(_metaTags),const DeepCollectionEquality().hash(_openGraph),const DeepCollectionEquality().hash(_structuredData),textDirection,title,const DeepCollectionEquality().hash(_twitterCard));

@override
String toString() {
  return 'FormatMetadata.html(author: $author, baseHref: $baseHref, canonicalUrl: $canonicalUrl, description: $description, headers: $headers, images: $images, keywords: $keywords, language: $language, links: $links, metaTags: $metaTags, openGraph: $openGraph, structuredData: $structuredData, textDirection: $textDirection, title: $title, twitterCard: $twitterCard)';
}


}

/// @nodoc
abstract mixin class $FormatMetadataHtmlCopyWith<$Res> implements $FormatMetadataCopyWith<$Res> {
  factory $FormatMetadataHtmlCopyWith(FormatMetadataHtml value, $Res Function(FormatMetadataHtml) _then) = _$FormatMetadataHtmlCopyWithImpl;
@useResult
$Res call({
 String? author,@JsonKey(name: 'base_href') String? baseHref,@JsonKey(name: 'canonical_url') String? canonicalUrl, String? description, List<HeaderMetadata>? headers, List<ImageMetadataType>? images, List<String>? keywords, String? language, List<LinkMetadata>? links,@JsonKey(name: 'meta_tags') Map<String, String>? metaTags,@JsonKey(name: 'open_graph') Map<String, String>? openGraph,@JsonKey(name: 'structured_data') List<StructuredData>? structuredData,@JsonKey(name: 'text_direction') TextDirection? textDirection, String? title,@JsonKey(name: 'twitter_card') Map<String, String>? twitterCard
});




}
/// @nodoc
class _$FormatMetadataHtmlCopyWithImpl<$Res>
    implements $FormatMetadataHtmlCopyWith<$Res> {
  _$FormatMetadataHtmlCopyWithImpl(this._self, this._then);

  final FormatMetadataHtml _self;
  final $Res Function(FormatMetadataHtml) _then;

/// Create a copy of FormatMetadata
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? author = freezed,Object? baseHref = freezed,Object? canonicalUrl = freezed,Object? description = freezed,Object? headers = freezed,Object? images = freezed,Object? keywords = freezed,Object? language = freezed,Object? links = freezed,Object? metaTags = freezed,Object? openGraph = freezed,Object? structuredData = freezed,Object? textDirection = freezed,Object? title = freezed,Object? twitterCard = freezed,}) {
  return _then(FormatMetadataHtml(
author: freezed == author ? _self.author : author // ignore: cast_nullable_to_non_nullable
as String?,baseHref: freezed == baseHref ? _self.baseHref : baseHref // ignore: cast_nullable_to_non_nullable
as String?,canonicalUrl: freezed == canonicalUrl ? _self.canonicalUrl : canonicalUrl // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,headers: freezed == headers ? _self._headers : headers // ignore: cast_nullable_to_non_nullable
as List<HeaderMetadata>?,images: freezed == images ? _self._images : images // ignore: cast_nullable_to_non_nullable
as List<ImageMetadataType>?,keywords: freezed == keywords ? _self._keywords : keywords // ignore: cast_nullable_to_non_nullable
as List<String>?,language: freezed == language ? _self.language : language // ignore: cast_nullable_to_non_nullable
as String?,links: freezed == links ? _self._links : links // ignore: cast_nullable_to_non_nullable
as List<LinkMetadata>?,metaTags: freezed == metaTags ? _self._metaTags : metaTags // ignore: cast_nullable_to_non_nullable
as Map<String, String>?,openGraph: freezed == openGraph ? _self._openGraph : openGraph // ignore: cast_nullable_to_non_nullable
as Map<String, String>?,structuredData: freezed == structuredData ? _self._structuredData : structuredData // ignore: cast_nullable_to_non_nullable
as List<StructuredData>?,textDirection: freezed == textDirection ? _self.textDirection : textDirection // ignore: cast_nullable_to_non_nullable
as TextDirection?,title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,twitterCard: freezed == twitterCard ? _self._twitterCard : twitterCard // ignore: cast_nullable_to_non_nullable
as Map<String, String>?,
  ));
}


}

/// @nodoc
@JsonSerializable()

class FormatMetadataImage implements FormatMetadata {
  const FormatMetadataImage({required final  Map<String, String> exif, required this.format, required this.height, required this.width, final  String? $type}): _exif = exif,$type = $type ?? 'image';
  factory FormatMetadataImage.fromJson(Map<String, dynamic> json) => _$FormatMetadataImageFromJson(json);

/// EXIF metadata tags
 final  Map<String, String> _exif;
/// EXIF metadata tags
 Map<String, String> get exif {
  if (_exif is EqualUnmodifiableMapView) return _exif;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_exif);
}

/// Image format (e.g., "PNG", "JPEG", "TIFF")
 final  String format;
/// Image height in pixels
 final  int height;
/// Image width in pixels
 final  int width;

@JsonKey(name: 'format_type')
final String $type;


/// Create a copy of FormatMetadata
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FormatMetadataImageCopyWith<FormatMetadataImage> get copyWith => _$FormatMetadataImageCopyWithImpl<FormatMetadataImage>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FormatMetadataImageToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FormatMetadataImage&&const DeepCollectionEquality().equals(other._exif, _exif)&&(identical(other.format, format) || other.format == format)&&(identical(other.height, height) || other.height == height)&&(identical(other.width, width) || other.width == width));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_exif),format,height,width);

@override
String toString() {
  return 'FormatMetadata.image(exif: $exif, format: $format, height: $height, width: $width)';
}


}

/// @nodoc
abstract mixin class $FormatMetadataImageCopyWith<$Res> implements $FormatMetadataCopyWith<$Res> {
  factory $FormatMetadataImageCopyWith(FormatMetadataImage value, $Res Function(FormatMetadataImage) _then) = _$FormatMetadataImageCopyWithImpl;
@useResult
$Res call({
 Map<String, String> exif, String format, int height, int width
});




}
/// @nodoc
class _$FormatMetadataImageCopyWithImpl<$Res>
    implements $FormatMetadataImageCopyWith<$Res> {
  _$FormatMetadataImageCopyWithImpl(this._self, this._then);

  final FormatMetadataImage _self;
  final $Res Function(FormatMetadataImage) _then;

/// Create a copy of FormatMetadata
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? exif = null,Object? format = null,Object? height = null,Object? width = null,}) {
  return _then(FormatMetadataImage(
exif: null == exif ? _self._exif : exif // ignore: cast_nullable_to_non_nullable
as Map<String, String>,format: null == format ? _self.format : format // ignore: cast_nullable_to_non_nullable
as String,height: null == height ? _self.height : height // ignore: cast_nullable_to_non_nullable
as int,width: null == width ? _self.width : width // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc
@JsonSerializable()

class FormatMetadataJats implements FormatMetadata {
  const FormatMetadataJats({@JsonKey(name: 'contributor_roles') final  List<ContributorRole>? contributorRoles, this.copyright, @JsonKey(name: 'history_dates') final  Map<String, String>? historyDates, this.license, final  String? $type}): _contributorRoles = contributorRoles,_historyDates = historyDates,$type = $type ?? 'jats';
  factory FormatMetadataJats.fromJson(Map<String, dynamic> json) => _$FormatMetadataJatsFromJson(json);

/// Authors and contributors with their stated roles.
 final  List<ContributorRole>? _contributorRoles;
/// Authors and contributors with their stated roles.
@JsonKey(name: 'contributor_roles') List<ContributorRole>? get contributorRoles {
  final value = _contributorRoles;
  if (value == null) return null;
  if (_contributorRoles is EqualUnmodifiableListView) return _contributorRoles;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

/// Copyright statement from the article's `<permissions>` element.
 final  String? copyright;
/// Publication history dates keyed by event type (e.g. `"received"`, `"accepted"`).
 final  Map<String, String>? _historyDates;
/// Publication history dates keyed by event type (e.g. `"received"`, `"accepted"`).
@JsonKey(name: 'history_dates') Map<String, String>? get historyDates {
  final value = _historyDates;
  if (value == null) return null;
  if (_historyDates is EqualUnmodifiableMapView) return _historyDates;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}

/// Open-access license URI from the article's `<license>` element.
 final  String? license;

@JsonKey(name: 'format_type')
final String $type;


/// Create a copy of FormatMetadata
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FormatMetadataJatsCopyWith<FormatMetadataJats> get copyWith => _$FormatMetadataJatsCopyWithImpl<FormatMetadataJats>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FormatMetadataJatsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FormatMetadataJats&&const DeepCollectionEquality().equals(other._contributorRoles, _contributorRoles)&&(identical(other.copyright, copyright) || other.copyright == copyright)&&const DeepCollectionEquality().equals(other._historyDates, _historyDates)&&(identical(other.license, license) || other.license == license));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_contributorRoles),copyright,const DeepCollectionEquality().hash(_historyDates),license);

@override
String toString() {
  return 'FormatMetadata.jats(contributorRoles: $contributorRoles, copyright: $copyright, historyDates: $historyDates, license: $license)';
}


}

/// @nodoc
abstract mixin class $FormatMetadataJatsCopyWith<$Res> implements $FormatMetadataCopyWith<$Res> {
  factory $FormatMetadataJatsCopyWith(FormatMetadataJats value, $Res Function(FormatMetadataJats) _then) = _$FormatMetadataJatsCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'contributor_roles') List<ContributorRole>? contributorRoles, String? copyright,@JsonKey(name: 'history_dates') Map<String, String>? historyDates, String? license
});




}
/// @nodoc
class _$FormatMetadataJatsCopyWithImpl<$Res>
    implements $FormatMetadataJatsCopyWith<$Res> {
  _$FormatMetadataJatsCopyWithImpl(this._self, this._then);

  final FormatMetadataJats _self;
  final $Res Function(FormatMetadataJats) _then;

/// Create a copy of FormatMetadata
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? contributorRoles = freezed,Object? copyright = freezed,Object? historyDates = freezed,Object? license = freezed,}) {
  return _then(FormatMetadataJats(
contributorRoles: freezed == contributorRoles ? _self._contributorRoles : contributorRoles // ignore: cast_nullable_to_non_nullable
as List<ContributorRole>?,copyright: freezed == copyright ? _self.copyright : copyright // ignore: cast_nullable_to_non_nullable
as String?,historyDates: freezed == historyDates ? _self._historyDates : historyDates // ignore: cast_nullable_to_non_nullable
as Map<String, String>?,license: freezed == license ? _self.license : license // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc
@JsonSerializable()

class FormatMetadataOcr implements FormatMetadata {
  const FormatMetadataOcr({required this.language, @JsonKey(name: 'output_format') required this.outputFormat, required this.psm, @JsonKey(name: 'table_count') required this.tableCount, @JsonKey(name: 'table_cols') this.tableCols, @JsonKey(name: 'table_rows') this.tableRows, final  String? $type}): $type = $type ?? 'ocr';
  factory FormatMetadataOcr.fromJson(Map<String, dynamic> json) => _$FormatMetadataOcrFromJson(json);

/// OCR language code(s) used
 final  String language;
/// Output format (e.g., "text", "hocr")
@JsonKey(name: 'output_format') final  String outputFormat;
/// Tesseract Page Segmentation Mode (PSM)
 final  int psm;
/// Number of tables detected
@JsonKey(name: 'table_count') final  int tableCount;
/// Number of columns in the detected table (if a single table was found).
@JsonKey(name: 'table_cols') final  int? tableCols;
/// Number of rows in the detected table (if a single table was found).
@JsonKey(name: 'table_rows') final  int? tableRows;

@JsonKey(name: 'format_type')
final String $type;


/// Create a copy of FormatMetadata
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FormatMetadataOcrCopyWith<FormatMetadataOcr> get copyWith => _$FormatMetadataOcrCopyWithImpl<FormatMetadataOcr>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FormatMetadataOcrToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FormatMetadataOcr&&(identical(other.language, language) || other.language == language)&&(identical(other.outputFormat, outputFormat) || other.outputFormat == outputFormat)&&(identical(other.psm, psm) || other.psm == psm)&&(identical(other.tableCount, tableCount) || other.tableCount == tableCount)&&(identical(other.tableCols, tableCols) || other.tableCols == tableCols)&&(identical(other.tableRows, tableRows) || other.tableRows == tableRows));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,language,outputFormat,psm,tableCount,tableCols,tableRows);

@override
String toString() {
  return 'FormatMetadata.ocr(language: $language, outputFormat: $outputFormat, psm: $psm, tableCount: $tableCount, tableCols: $tableCols, tableRows: $tableRows)';
}


}

/// @nodoc
abstract mixin class $FormatMetadataOcrCopyWith<$Res> implements $FormatMetadataCopyWith<$Res> {
  factory $FormatMetadataOcrCopyWith(FormatMetadataOcr value, $Res Function(FormatMetadataOcr) _then) = _$FormatMetadataOcrCopyWithImpl;
@useResult
$Res call({
 String language,@JsonKey(name: 'output_format') String outputFormat, int psm,@JsonKey(name: 'table_count') int tableCount,@JsonKey(name: 'table_cols') int? tableCols,@JsonKey(name: 'table_rows') int? tableRows
});




}
/// @nodoc
class _$FormatMetadataOcrCopyWithImpl<$Res>
    implements $FormatMetadataOcrCopyWith<$Res> {
  _$FormatMetadataOcrCopyWithImpl(this._self, this._then);

  final FormatMetadataOcr _self;
  final $Res Function(FormatMetadataOcr) _then;

/// Create a copy of FormatMetadata
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? language = null,Object? outputFormat = null,Object? psm = null,Object? tableCount = null,Object? tableCols = freezed,Object? tableRows = freezed,}) {
  return _then(FormatMetadataOcr(
language: null == language ? _self.language : language // ignore: cast_nullable_to_non_nullable
as String,outputFormat: null == outputFormat ? _self.outputFormat : outputFormat // ignore: cast_nullable_to_non_nullable
as String,psm: null == psm ? _self.psm : psm // ignore: cast_nullable_to_non_nullable
as int,tableCount: null == tableCount ? _self.tableCount : tableCount // ignore: cast_nullable_to_non_nullable
as int,tableCols: freezed == tableCols ? _self.tableCols : tableCols // ignore: cast_nullable_to_non_nullable
as int?,tableRows: freezed == tableRows ? _self.tableRows : tableRows // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

/// @nodoc
@JsonSerializable()

class FormatMetadataPdf implements FormatMetadata {
  const FormatMetadataPdf({this.height, @JsonKey(name: 'is_encrypted') this.isEncrypted, @JsonKey(name: 'page_count') this.pageCount, @JsonKey(name: 'pdf_version') this.pdfVersion, this.producer, this.width, final  String? $type}): $type = $type ?? 'pdf';
  factory FormatMetadataPdf.fromJson(Map<String, dynamic> json) => _$FormatMetadataPdfFromJson(json);

/// First page height in points (1/72 inch)
 final  int? height;
/// Whether the PDF is encrypted/password-protected
@JsonKey(name: 'is_encrypted') final  bool? isEncrypted;
/// Total number of pages in the PDF document
@JsonKey(name: 'page_count') final  int? pageCount;
/// PDF version (e.g., "1.7", "2.0")
@JsonKey(name: 'pdf_version') final  String? pdfVersion;
/// PDF producer (application that created the PDF)
 final  String? producer;
/// First page width in points (1/72 inch)
 final  int? width;

@JsonKey(name: 'format_type')
final String $type;


/// Create a copy of FormatMetadata
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FormatMetadataPdfCopyWith<FormatMetadataPdf> get copyWith => _$FormatMetadataPdfCopyWithImpl<FormatMetadataPdf>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FormatMetadataPdfToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FormatMetadataPdf&&(identical(other.height, height) || other.height == height)&&(identical(other.isEncrypted, isEncrypted) || other.isEncrypted == isEncrypted)&&(identical(other.pageCount, pageCount) || other.pageCount == pageCount)&&(identical(other.pdfVersion, pdfVersion) || other.pdfVersion == pdfVersion)&&(identical(other.producer, producer) || other.producer == producer)&&(identical(other.width, width) || other.width == width));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,height,isEncrypted,pageCount,pdfVersion,producer,width);

@override
String toString() {
  return 'FormatMetadata.pdf(height: $height, isEncrypted: $isEncrypted, pageCount: $pageCount, pdfVersion: $pdfVersion, producer: $producer, width: $width)';
}


}

/// @nodoc
abstract mixin class $FormatMetadataPdfCopyWith<$Res> implements $FormatMetadataCopyWith<$Res> {
  factory $FormatMetadataPdfCopyWith(FormatMetadataPdf value, $Res Function(FormatMetadataPdf) _then) = _$FormatMetadataPdfCopyWithImpl;
@useResult
$Res call({
 int? height,@JsonKey(name: 'is_encrypted') bool? isEncrypted,@JsonKey(name: 'page_count') int? pageCount,@JsonKey(name: 'pdf_version') String? pdfVersion, String? producer, int? width
});




}
/// @nodoc
class _$FormatMetadataPdfCopyWithImpl<$Res>
    implements $FormatMetadataPdfCopyWith<$Res> {
  _$FormatMetadataPdfCopyWithImpl(this._self, this._then);

  final FormatMetadataPdf _self;
  final $Res Function(FormatMetadataPdf) _then;

/// Create a copy of FormatMetadata
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? height = freezed,Object? isEncrypted = freezed,Object? pageCount = freezed,Object? pdfVersion = freezed,Object? producer = freezed,Object? width = freezed,}) {
  return _then(FormatMetadataPdf(
height: freezed == height ? _self.height : height // ignore: cast_nullable_to_non_nullable
as int?,isEncrypted: freezed == isEncrypted ? _self.isEncrypted : isEncrypted // ignore: cast_nullable_to_non_nullable
as bool?,pageCount: freezed == pageCount ? _self.pageCount : pageCount // ignore: cast_nullable_to_non_nullable
as int?,pdfVersion: freezed == pdfVersion ? _self.pdfVersion : pdfVersion // ignore: cast_nullable_to_non_nullable
as String?,producer: freezed == producer ? _self.producer : producer // ignore: cast_nullable_to_non_nullable
as String?,width: freezed == width ? _self.width : width // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

/// @nodoc
@JsonSerializable()

class FormatMetadataPptx implements FormatMetadata {
  const FormatMetadataPptx({@JsonKey(name: 'slide_count') required this.slideCount, @JsonKey(name: 'slide_names') required final  List<String> slideNames, @JsonKey(name: 'image_count') this.imageCount, @JsonKey(name: 'table_count') this.tableCount, final  String? $type}): _slideNames = slideNames,$type = $type ?? 'pptx';
  factory FormatMetadataPptx.fromJson(Map<String, dynamic> json) => _$FormatMetadataPptxFromJson(json);

/// Total number of slides in the presentation
@JsonKey(name: 'slide_count') final  int slideCount;
/// Names of slides (if available)
 final  List<String> _slideNames;
/// Names of slides (if available)
@JsonKey(name: 'slide_names') List<String> get slideNames {
  if (_slideNames is EqualUnmodifiableListView) return _slideNames;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_slideNames);
}

/// Number of embedded images
@JsonKey(name: 'image_count') final  int? imageCount;
/// Number of tables
@JsonKey(name: 'table_count') final  int? tableCount;

@JsonKey(name: 'format_type')
final String $type;


/// Create a copy of FormatMetadata
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FormatMetadataPptxCopyWith<FormatMetadataPptx> get copyWith => _$FormatMetadataPptxCopyWithImpl<FormatMetadataPptx>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FormatMetadataPptxToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FormatMetadataPptx&&(identical(other.slideCount, slideCount) || other.slideCount == slideCount)&&const DeepCollectionEquality().equals(other._slideNames, _slideNames)&&(identical(other.imageCount, imageCount) || other.imageCount == imageCount)&&(identical(other.tableCount, tableCount) || other.tableCount == tableCount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,slideCount,const DeepCollectionEquality().hash(_slideNames),imageCount,tableCount);

@override
String toString() {
  return 'FormatMetadata.pptx(slideCount: $slideCount, slideNames: $slideNames, imageCount: $imageCount, tableCount: $tableCount)';
}


}

/// @nodoc
abstract mixin class $FormatMetadataPptxCopyWith<$Res> implements $FormatMetadataCopyWith<$Res> {
  factory $FormatMetadataPptxCopyWith(FormatMetadataPptx value, $Res Function(FormatMetadataPptx) _then) = _$FormatMetadataPptxCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'slide_count') int slideCount,@JsonKey(name: 'slide_names') List<String> slideNames,@JsonKey(name: 'image_count') int? imageCount,@JsonKey(name: 'table_count') int? tableCount
});




}
/// @nodoc
class _$FormatMetadataPptxCopyWithImpl<$Res>
    implements $FormatMetadataPptxCopyWith<$Res> {
  _$FormatMetadataPptxCopyWithImpl(this._self, this._then);

  final FormatMetadataPptx _self;
  final $Res Function(FormatMetadataPptx) _then;

/// Create a copy of FormatMetadata
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? slideCount = null,Object? slideNames = null,Object? imageCount = freezed,Object? tableCount = freezed,}) {
  return _then(FormatMetadataPptx(
slideCount: null == slideCount ? _self.slideCount : slideCount // ignore: cast_nullable_to_non_nullable
as int,slideNames: null == slideNames ? _self._slideNames : slideNames // ignore: cast_nullable_to_non_nullable
as List<String>,imageCount: freezed == imageCount ? _self.imageCount : imageCount // ignore: cast_nullable_to_non_nullable
as int?,tableCount: freezed == tableCount ? _self.tableCount : tableCount // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

/// @nodoc
@JsonSerializable()

class FormatMetadataPst implements FormatMetadata {
  const FormatMetadataPst({@JsonKey(name: 'message_count') required this.messageCount, final  String? $type}): $type = $type ?? 'pst';
  factory FormatMetadataPst.fromJson(Map<String, dynamic> json) => _$FormatMetadataPstFromJson(json);

/// Total number of email messages found in the PST archive.
@JsonKey(name: 'message_count') final  int messageCount;

@JsonKey(name: 'format_type')
final String $type;


/// Create a copy of FormatMetadata
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FormatMetadataPstCopyWith<FormatMetadataPst> get copyWith => _$FormatMetadataPstCopyWithImpl<FormatMetadataPst>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FormatMetadataPstToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FormatMetadataPst&&(identical(other.messageCount, messageCount) || other.messageCount == messageCount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,messageCount);

@override
String toString() {
  return 'FormatMetadata.pst(messageCount: $messageCount)';
}


}

/// @nodoc
abstract mixin class $FormatMetadataPstCopyWith<$Res> implements $FormatMetadataCopyWith<$Res> {
  factory $FormatMetadataPstCopyWith(FormatMetadataPst value, $Res Function(FormatMetadataPst) _then) = _$FormatMetadataPstCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'message_count') int messageCount
});




}
/// @nodoc
class _$FormatMetadataPstCopyWithImpl<$Res>
    implements $FormatMetadataPstCopyWith<$Res> {
  _$FormatMetadataPstCopyWithImpl(this._self, this._then);

  final FormatMetadataPst _self;
  final $Res Function(FormatMetadataPst) _then;

/// Create a copy of FormatMetadata
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? messageCount = null,}) {
  return _then(FormatMetadataPst(
messageCount: null == messageCount ? _self.messageCount : messageCount // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc
@JsonSerializable()

class FormatMetadataText implements FormatMetadata {
  const FormatMetadataText({@JsonKey(name: 'character_count') required this.characterCount, @JsonKey(name: 'line_count') required this.lineCount, @JsonKey(name: 'word_count') required this.wordCount, @JsonKey(name: 'code_blocks') final  List<List<String>>? codeBlocks, final  List<String>? headers, final  List<List<String>>? links, final  String? $type}): _codeBlocks = codeBlocks,_headers = headers,_links = links,$type = $type ?? 'text';
  factory FormatMetadataText.fromJson(Map<String, dynamic> json) => _$FormatMetadataTextFromJson(json);

/// Number of characters
@JsonKey(name: 'character_count') final  int characterCount;
/// Number of lines in the document
@JsonKey(name: 'line_count') final  int lineCount;
/// Number of words
@JsonKey(name: 'word_count') final  int wordCount;
/// Code blocks as (language, code) tuples (for Markdown files)
 final  List<List<String>>? _codeBlocks;
/// Code blocks as (language, code) tuples (for Markdown files)
@JsonKey(name: 'code_blocks') List<List<String>>? get codeBlocks {
  final value = _codeBlocks;
  if (value == null) return null;
  if (_codeBlocks is EqualUnmodifiableListView) return _codeBlocks;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

/// Markdown headers (headings text only, for Markdown files)
 final  List<String>? _headers;
/// Markdown headers (headings text only, for Markdown files)
 List<String>? get headers {
  final value = _headers;
  if (value == null) return null;
  if (_headers is EqualUnmodifiableListView) return _headers;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

/// Markdown links as (text, url) tuples (for Markdown files)
 final  List<List<String>>? _links;
/// Markdown links as (text, url) tuples (for Markdown files)
 List<List<String>>? get links {
  final value = _links;
  if (value == null) return null;
  if (_links is EqualUnmodifiableListView) return _links;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


@JsonKey(name: 'format_type')
final String $type;


/// Create a copy of FormatMetadata
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FormatMetadataTextCopyWith<FormatMetadataText> get copyWith => _$FormatMetadataTextCopyWithImpl<FormatMetadataText>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FormatMetadataTextToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FormatMetadataText&&(identical(other.characterCount, characterCount) || other.characterCount == characterCount)&&(identical(other.lineCount, lineCount) || other.lineCount == lineCount)&&(identical(other.wordCount, wordCount) || other.wordCount == wordCount)&&const DeepCollectionEquality().equals(other._codeBlocks, _codeBlocks)&&const DeepCollectionEquality().equals(other._headers, _headers)&&const DeepCollectionEquality().equals(other._links, _links));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,characterCount,lineCount,wordCount,const DeepCollectionEquality().hash(_codeBlocks),const DeepCollectionEquality().hash(_headers),const DeepCollectionEquality().hash(_links));

@override
String toString() {
  return 'FormatMetadata.text(characterCount: $characterCount, lineCount: $lineCount, wordCount: $wordCount, codeBlocks: $codeBlocks, headers: $headers, links: $links)';
}


}

/// @nodoc
abstract mixin class $FormatMetadataTextCopyWith<$Res> implements $FormatMetadataCopyWith<$Res> {
  factory $FormatMetadataTextCopyWith(FormatMetadataText value, $Res Function(FormatMetadataText) _then) = _$FormatMetadataTextCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'character_count') int characterCount,@JsonKey(name: 'line_count') int lineCount,@JsonKey(name: 'word_count') int wordCount,@JsonKey(name: 'code_blocks') List<List<String>>? codeBlocks, List<String>? headers, List<List<String>>? links
});




}
/// @nodoc
class _$FormatMetadataTextCopyWithImpl<$Res>
    implements $FormatMetadataTextCopyWith<$Res> {
  _$FormatMetadataTextCopyWithImpl(this._self, this._then);

  final FormatMetadataText _self;
  final $Res Function(FormatMetadataText) _then;

/// Create a copy of FormatMetadata
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? characterCount = null,Object? lineCount = null,Object? wordCount = null,Object? codeBlocks = freezed,Object? headers = freezed,Object? links = freezed,}) {
  return _then(FormatMetadataText(
characterCount: null == characterCount ? _self.characterCount : characterCount // ignore: cast_nullable_to_non_nullable
as int,lineCount: null == lineCount ? _self.lineCount : lineCount // ignore: cast_nullable_to_non_nullable
as int,wordCount: null == wordCount ? _self.wordCount : wordCount // ignore: cast_nullable_to_non_nullable
as int,codeBlocks: freezed == codeBlocks ? _self._codeBlocks : codeBlocks // ignore: cast_nullable_to_non_nullable
as List<List<String>>?,headers: freezed == headers ? _self._headers : headers // ignore: cast_nullable_to_non_nullable
as List<String>?,links: freezed == links ? _self._links : links // ignore: cast_nullable_to_non_nullable
as List<List<String>>?,
  ));
}


}

/// @nodoc
@JsonSerializable()

class FormatMetadataXml implements FormatMetadata {
  const FormatMetadataXml({@JsonKey(name: 'element_count') required this.elementCount, @JsonKey(name: 'unique_elements') required final  List<String> uniqueElements, final  String? $type}): _uniqueElements = uniqueElements,$type = $type ?? 'xml';
  factory FormatMetadataXml.fromJson(Map<String, dynamic> json) => _$FormatMetadataXmlFromJson(json);

/// Total number of XML elements processed
@JsonKey(name: 'element_count') final  int elementCount;
/// List of unique element tag names (sorted)
 final  List<String> _uniqueElements;
/// List of unique element tag names (sorted)
@JsonKey(name: 'unique_elements') List<String> get uniqueElements {
  if (_uniqueElements is EqualUnmodifiableListView) return _uniqueElements;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_uniqueElements);
}


@JsonKey(name: 'format_type')
final String $type;


/// Create a copy of FormatMetadata
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FormatMetadataXmlCopyWith<FormatMetadataXml> get copyWith => _$FormatMetadataXmlCopyWithImpl<FormatMetadataXml>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FormatMetadataXmlToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FormatMetadataXml&&(identical(other.elementCount, elementCount) || other.elementCount == elementCount)&&const DeepCollectionEquality().equals(other._uniqueElements, _uniqueElements));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,elementCount,const DeepCollectionEquality().hash(_uniqueElements));

@override
String toString() {
  return 'FormatMetadata.xml(elementCount: $elementCount, uniqueElements: $uniqueElements)';
}


}

/// @nodoc
abstract mixin class $FormatMetadataXmlCopyWith<$Res> implements $FormatMetadataCopyWith<$Res> {
  factory $FormatMetadataXmlCopyWith(FormatMetadataXml value, $Res Function(FormatMetadataXml) _then) = _$FormatMetadataXmlCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'element_count') int elementCount,@JsonKey(name: 'unique_elements') List<String> uniqueElements
});




}
/// @nodoc
class _$FormatMetadataXmlCopyWithImpl<$Res>
    implements $FormatMetadataXmlCopyWith<$Res> {
  _$FormatMetadataXmlCopyWithImpl(this._self, this._then);

  final FormatMetadataXml _self;
  final $Res Function(FormatMetadataXml) _then;

/// Create a copy of FormatMetadata
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? elementCount = null,Object? uniqueElements = null,}) {
  return _then(FormatMetadataXml(
elementCount: null == elementCount ? _self.elementCount : elementCount // ignore: cast_nullable_to_non_nullable
as int,uniqueElements: null == uniqueElements ? _self._uniqueElements : uniqueElements // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}


}

// dart format on
