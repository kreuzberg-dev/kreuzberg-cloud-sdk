// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'format_metadata.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FormatMetadataArchive _$FormatMetadataArchiveFromJson(
  Map<String, dynamic> json,
) => FormatMetadataArchive(
  fileCount: (json['file_count'] as num).toInt(),
  fileList: (json['file_list'] as List<dynamic>)
      .map((e) => e as String)
      .toList(),
  format: json['format'] as String,
  totalSize: (json['total_size'] as num).toInt(),
  compressedSize: (json['compressed_size'] as num?)?.toInt(),
  $type: json['format_type'] as String?,
);

Map<String, dynamic> _$FormatMetadataArchiveToJson(
  FormatMetadataArchive instance,
) => <String, dynamic>{
  'file_count': instance.fileCount,
  'file_list': instance.fileList,
  'format': instance.format,
  'total_size': instance.totalSize,
  'compressed_size': instance.compressedSize,
  'format_type': instance.$type,
};

FormatMetadataAudio _$FormatMetadataAudioFromJson(Map<String, dynamic> json) =>
    FormatMetadataAudio(
      bitrate: (json['bitrate'] as num?)?.toInt(),
      channels: (json['channels'] as num?)?.toInt(),
      codec: json['codec'] as String?,
      container: json['container'] as String?,
      durationMs: (json['duration_ms'] as num?)?.toInt(),
      sampleRateHz: (json['sample_rate_hz'] as num?)?.toInt(),
      $type: json['format_type'] as String?,
    );

Map<String, dynamic> _$FormatMetadataAudioToJson(
  FormatMetadataAudio instance,
) => <String, dynamic>{
  'bitrate': instance.bitrate,
  'channels': instance.channels,
  'codec': instance.codec,
  'container': instance.container,
  'duration_ms': instance.durationMs,
  'sample_rate_hz': instance.sampleRateHz,
  'format_type': instance.$type,
};

FormatMetadataBibtex _$FormatMetadataBibtexFromJson(
  Map<String, dynamic> json,
) => FormatMetadataBibtex(
  entryCount: (json['entry_count'] as num).toInt(),
  authors: (json['authors'] as List<dynamic>?)
      ?.map((e) => e as String)
      .toList(),
  citationKeys: (json['citation_keys'] as List<dynamic>?)
      ?.map((e) => e as String)
      .toList(),
  entryTypes: (json['entry_types'] as Map<String, dynamic>?)?.map(
    (k, e) => MapEntry(k, (e as num).toInt()),
  ),
  yearRange: json['year_range'] == null
      ? null
      : YearRange.fromJson(json['year_range'] as Map<String, dynamic>),
  $type: json['format_type'] as String?,
);

Map<String, dynamic> _$FormatMetadataBibtexToJson(
  FormatMetadataBibtex instance,
) => <String, dynamic>{
  'entry_count': instance.entryCount,
  'authors': instance.authors,
  'citation_keys': instance.citationKeys,
  'entry_types': instance.entryTypes,
  'year_range': instance.yearRange,
  'format_type': instance.$type,
};

FormatMetadataCitation _$FormatMetadataCitationFromJson(
  Map<String, dynamic> json,
) => FormatMetadataCitation(
  citationCount: (json['citation_count'] as num).toInt(),
  authors: (json['authors'] as List<dynamic>?)
      ?.map((e) => e as String)
      .toList(),
  dois: (json['dois'] as List<dynamic>?)?.map((e) => e as String).toList(),
  format: json['format'] as String?,
  keywords: (json['keywords'] as List<dynamic>?)
      ?.map((e) => e as String)
      .toList(),
  yearRange: json['year_range'] == null
      ? null
      : YearRange.fromJson(json['year_range'] as Map<String, dynamic>),
  $type: json['format_type'] as String?,
);

Map<String, dynamic> _$FormatMetadataCitationToJson(
  FormatMetadataCitation instance,
) => <String, dynamic>{
  'citation_count': instance.citationCount,
  'authors': instance.authors,
  'dois': instance.dois,
  'format': instance.format,
  'keywords': instance.keywords,
  'year_range': instance.yearRange,
  'format_type': instance.$type,
};

FormatMetadataCode _$FormatMetadataCodeFromJson(Map<String, dynamic> json) =>
    FormatMetadataCode(
      chunks: (json['chunks'] as List<dynamic>)
          .map((e) => CodeChunkInfo.fromJson(e as Map<String, dynamic>))
          .toList(),
      $type: json['format_type'] as String?,
    );

Map<String, dynamic> _$FormatMetadataCodeToJson(FormatMetadataCode instance) =>
    <String, dynamic>{'chunks': instance.chunks, 'format_type': instance.$type};

FormatMetadataCsv _$FormatMetadataCsvFromJson(Map<String, dynamic> json) =>
    FormatMetadataCsv(
      columnCount: (json['column_count'] as num).toInt(),
      hasHeader: json['has_header'] as bool,
      rowCount: (json['row_count'] as num).toInt(),
      columnTypes: (json['column_types'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      delimiter: json['delimiter'] as String?,
      $type: json['format_type'] as String?,
    );

Map<String, dynamic> _$FormatMetadataCsvToJson(FormatMetadataCsv instance) =>
    <String, dynamic>{
      'column_count': instance.columnCount,
      'has_header': instance.hasHeader,
      'row_count': instance.rowCount,
      'column_types': instance.columnTypes,
      'delimiter': instance.delimiter,
      'format_type': instance.$type,
    };

FormatMetadataDbf _$FormatMetadataDbfFromJson(Map<String, dynamic> json) =>
    FormatMetadataDbf(
      fieldCount: (json['field_count'] as num).toInt(),
      recordCount: (json['record_count'] as num).toInt(),
      fields: (json['fields'] as List<dynamic>?)
          ?.map((e) => DbfFieldInfo.fromJson(e as Map<String, dynamic>))
          .toList(),
      $type: json['format_type'] as String?,
    );

Map<String, dynamic> _$FormatMetadataDbfToJson(FormatMetadataDbf instance) =>
    <String, dynamic>{
      'field_count': instance.fieldCount,
      'record_count': instance.recordCount,
      'fields': instance.fields,
      'format_type': instance.$type,
    };

FormatMetadataDocx _$FormatMetadataDocxFromJson(Map<String, dynamic> json) =>
    FormatMetadataDocx(
      appProperties: json['app_properties'],
      coreProperties: json['core_properties'],
      customProperties: json['custom_properties'] as Map<String, dynamic>?,
      $type: json['format_type'] as String?,
    );

Map<String, dynamic> _$FormatMetadataDocxToJson(FormatMetadataDocx instance) =>
    <String, dynamic>{
      'app_properties': instance.appProperties,
      'core_properties': instance.coreProperties,
      'custom_properties': instance.customProperties,
      'format_type': instance.$type,
    };

FormatMetadataEmail _$FormatMetadataEmailFromJson(Map<String, dynamic> json) =>
    FormatMetadataEmail(
      attachments: (json['attachments'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      bccEmails: (json['bcc_emails'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      ccEmails: (json['cc_emails'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      toEmails: (json['to_emails'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      fromEmail: json['from_email'] as String?,
      fromName: json['from_name'] as String?,
      messageId: json['message_id'] as String?,
      $type: json['format_type'] as String?,
    );

Map<String, dynamic> _$FormatMetadataEmailToJson(
  FormatMetadataEmail instance,
) => <String, dynamic>{
  'attachments': instance.attachments,
  'bcc_emails': instance.bccEmails,
  'cc_emails': instance.ccEmails,
  'to_emails': instance.toEmails,
  'from_email': instance.fromEmail,
  'from_name': instance.fromName,
  'message_id': instance.messageId,
  'format_type': instance.$type,
};

FormatMetadataEpub _$FormatMetadataEpubFromJson(Map<String, dynamic> json) =>
    FormatMetadataEpub(
      coverImage: json['cover_image'] as String?,
      coverage: json['coverage'] as String?,
      dcFormat: json['dc_format'] as String?,
      dcType: json['dc_type'] as String?,
      relation: json['relation'] as String?,
      source: json['source'] as String?,
      $type: json['format_type'] as String?,
    );

Map<String, dynamic> _$FormatMetadataEpubToJson(FormatMetadataEpub instance) =>
    <String, dynamic>{
      'cover_image': instance.coverImage,
      'coverage': instance.coverage,
      'dc_format': instance.dcFormat,
      'dc_type': instance.dcType,
      'relation': instance.relation,
      'source': instance.source,
      'format_type': instance.$type,
    };

FormatMetadataExcel _$FormatMetadataExcelFromJson(Map<String, dynamic> json) =>
    FormatMetadataExcel(
      sheetCount: (json['sheet_count'] as num?)?.toInt(),
      sheetNames: (json['sheet_names'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      $type: json['format_type'] as String?,
    );

Map<String, dynamic> _$FormatMetadataExcelToJson(
  FormatMetadataExcel instance,
) => <String, dynamic>{
  'sheet_count': instance.sheetCount,
  'sheet_names': instance.sheetNames,
  'format_type': instance.$type,
};

FormatMetadataFictionBook _$FormatMetadataFictionBookFromJson(
  Map<String, dynamic> json,
) => FormatMetadataFictionBook(
  annotation: json['annotation'] as String?,
  genres: (json['genres'] as List<dynamic>?)?.map((e) => e as String).toList(),
  sequences: (json['sequences'] as List<dynamic>?)
      ?.map((e) => e as String)
      .toList(),
  $type: json['format_type'] as String?,
);

Map<String, dynamic> _$FormatMetadataFictionBookToJson(
  FormatMetadataFictionBook instance,
) => <String, dynamic>{
  'annotation': instance.annotation,
  'genres': instance.genres,
  'sequences': instance.sequences,
  'format_type': instance.$type,
};

FormatMetadataHtml _$FormatMetadataHtmlFromJson(Map<String, dynamic> json) =>
    FormatMetadataHtml(
      author: json['author'] as String?,
      baseHref: json['base_href'] as String?,
      canonicalUrl: json['canonical_url'] as String?,
      description: json['description'] as String?,
      headers: (json['headers'] as List<dynamic>?)
          ?.map((e) => HeaderMetadata.fromJson(e as Map<String, dynamic>))
          .toList(),
      images: (json['images'] as List<dynamic>?)
          ?.map((e) => ImageMetadataType.fromJson(e as Map<String, dynamic>))
          .toList(),
      keywords: (json['keywords'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      language: json['language'] as String?,
      links: (json['links'] as List<dynamic>?)
          ?.map((e) => LinkMetadata.fromJson(e as Map<String, dynamic>))
          .toList(),
      metaTags: (json['meta_tags'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as String),
      ),
      openGraph: (json['open_graph'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as String),
      ),
      structuredData: (json['structured_data'] as List<dynamic>?)
          ?.map((e) => StructuredData.fromJson(e as Map<String, dynamic>))
          .toList(),
      textDirection: json['text_direction'] == null
          ? null
          : TextDirection.fromJson(json['text_direction'] as String),
      title: json['title'] as String?,
      twitterCard: (json['twitter_card'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as String),
      ),
      $type: json['format_type'] as String?,
    );

Map<String, dynamic> _$FormatMetadataHtmlToJson(FormatMetadataHtml instance) =>
    <String, dynamic>{
      'author': instance.author,
      'base_href': instance.baseHref,
      'canonical_url': instance.canonicalUrl,
      'description': instance.description,
      'headers': instance.headers,
      'images': instance.images,
      'keywords': instance.keywords,
      'language': instance.language,
      'links': instance.links,
      'meta_tags': instance.metaTags,
      'open_graph': instance.openGraph,
      'structured_data': instance.structuredData,
      'text_direction': instance.textDirection,
      'title': instance.title,
      'twitter_card': instance.twitterCard,
      'format_type': instance.$type,
    };

FormatMetadataImage _$FormatMetadataImageFromJson(Map<String, dynamic> json) =>
    FormatMetadataImage(
      exif: Map<String, String>.from(json['exif'] as Map),
      format: json['format'] as String,
      height: (json['height'] as num).toInt(),
      width: (json['width'] as num).toInt(),
      $type: json['format_type'] as String?,
    );

Map<String, dynamic> _$FormatMetadataImageToJson(
  FormatMetadataImage instance,
) => <String, dynamic>{
  'exif': instance.exif,
  'format': instance.format,
  'height': instance.height,
  'width': instance.width,
  'format_type': instance.$type,
};

FormatMetadataJats _$FormatMetadataJatsFromJson(Map<String, dynamic> json) =>
    FormatMetadataJats(
      contributorRoles: (json['contributor_roles'] as List<dynamic>?)
          ?.map((e) => ContributorRole.fromJson(e as Map<String, dynamic>))
          .toList(),
      copyright: json['copyright'] as String?,
      historyDates: (json['history_dates'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as String),
      ),
      license: json['license'] as String?,
      $type: json['format_type'] as String?,
    );

Map<String, dynamic> _$FormatMetadataJatsToJson(FormatMetadataJats instance) =>
    <String, dynamic>{
      'contributor_roles': instance.contributorRoles,
      'copyright': instance.copyright,
      'history_dates': instance.historyDates,
      'license': instance.license,
      'format_type': instance.$type,
    };

FormatMetadataOcr _$FormatMetadataOcrFromJson(Map<String, dynamic> json) =>
    FormatMetadataOcr(
      language: json['language'] as String,
      outputFormat: json['output_format'] as String,
      psm: (json['psm'] as num).toInt(),
      tableCount: (json['table_count'] as num).toInt(),
      tableCols: (json['table_cols'] as num?)?.toInt(),
      tableRows: (json['table_rows'] as num?)?.toInt(),
      $type: json['format_type'] as String?,
    );

Map<String, dynamic> _$FormatMetadataOcrToJson(FormatMetadataOcr instance) =>
    <String, dynamic>{
      'language': instance.language,
      'output_format': instance.outputFormat,
      'psm': instance.psm,
      'table_count': instance.tableCount,
      'table_cols': instance.tableCols,
      'table_rows': instance.tableRows,
      'format_type': instance.$type,
    };

FormatMetadataPdf _$FormatMetadataPdfFromJson(Map<String, dynamic> json) =>
    FormatMetadataPdf(
      height: (json['height'] as num?)?.toInt(),
      isEncrypted: json['is_encrypted'] as bool?,
      pageCount: (json['page_count'] as num?)?.toInt(),
      pdfVersion: json['pdf_version'] as String?,
      producer: json['producer'] as String?,
      width: (json['width'] as num?)?.toInt(),
      $type: json['format_type'] as String?,
    );

Map<String, dynamic> _$FormatMetadataPdfToJson(FormatMetadataPdf instance) =>
    <String, dynamic>{
      'height': instance.height,
      'is_encrypted': instance.isEncrypted,
      'page_count': instance.pageCount,
      'pdf_version': instance.pdfVersion,
      'producer': instance.producer,
      'width': instance.width,
      'format_type': instance.$type,
    };

FormatMetadataPptx _$FormatMetadataPptxFromJson(Map<String, dynamic> json) =>
    FormatMetadataPptx(
      slideCount: (json['slide_count'] as num).toInt(),
      slideNames: (json['slide_names'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      imageCount: (json['image_count'] as num?)?.toInt(),
      tableCount: (json['table_count'] as num?)?.toInt(),
      $type: json['format_type'] as String?,
    );

Map<String, dynamic> _$FormatMetadataPptxToJson(FormatMetadataPptx instance) =>
    <String, dynamic>{
      'slide_count': instance.slideCount,
      'slide_names': instance.slideNames,
      'image_count': instance.imageCount,
      'table_count': instance.tableCount,
      'format_type': instance.$type,
    };

FormatMetadataPst _$FormatMetadataPstFromJson(Map<String, dynamic> json) =>
    FormatMetadataPst(
      messageCount: (json['message_count'] as num).toInt(),
      $type: json['format_type'] as String?,
    );

Map<String, dynamic> _$FormatMetadataPstToJson(FormatMetadataPst instance) =>
    <String, dynamic>{
      'message_count': instance.messageCount,
      'format_type': instance.$type,
    };

FormatMetadataText _$FormatMetadataTextFromJson(Map<String, dynamic> json) =>
    FormatMetadataText(
      characterCount: (json['character_count'] as num).toInt(),
      lineCount: (json['line_count'] as num).toInt(),
      wordCount: (json['word_count'] as num).toInt(),
      codeBlocks: (json['code_blocks'] as List<dynamic>?)
          ?.map((e) => (e as List<dynamic>).map((e) => e as String).toList())
          .toList(),
      headers: (json['headers'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      links: (json['links'] as List<dynamic>?)
          ?.map((e) => (e as List<dynamic>).map((e) => e as String).toList())
          .toList(),
      $type: json['format_type'] as String?,
    );

Map<String, dynamic> _$FormatMetadataTextToJson(FormatMetadataText instance) =>
    <String, dynamic>{
      'character_count': instance.characterCount,
      'line_count': instance.lineCount,
      'word_count': instance.wordCount,
      'code_blocks': instance.codeBlocks,
      'headers': instance.headers,
      'links': instance.links,
      'format_type': instance.$type,
    };

FormatMetadataXml _$FormatMetadataXmlFromJson(Map<String, dynamic> json) =>
    FormatMetadataXml(
      elementCount: (json['element_count'] as num).toInt(),
      uniqueElements: (json['unique_elements'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      $type: json['format_type'] as String?,
    );

Map<String, dynamic> _$FormatMetadataXmlToJson(FormatMetadataXml instance) =>
    <String, dynamic>{
      'element_count': instance.elementCount,
      'unique_elements': instance.uniqueElements,
      'format_type': instance.$type,
    };
