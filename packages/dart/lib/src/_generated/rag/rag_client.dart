// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../models/collection_response.dart';
import '../models/create_collection_request.dart';
import '../models/create_collection_response.dart';
import '../models/create_document_async_response.dart';
import '../models/create_document_request.dart';
import '../models/delete_documents_request.dart';
import '../models/delete_documents_response.dart';
import '../models/list_collections_response.dart';
import '../models/migrate_embeddings_request.dart';
import '../models/migrate_embeddings_response.dart';
import '../models/migrate_status_response.dart';
import '../models/rag_job_status_response.dart';
import '../models/reindex_request.dart';
import '../models/retrieve_request.dart';
import '../models/retrieve_response.dart';

part 'rag_client.g.dart';

@RestApi()
abstract class RagClient {
  factory RagClient(Dio dio, {String? baseUrl}) = _RagClient;

  /// List RAG collections.
  ///
  /// Returns paginated list of collections ordered by creation time (newest first).
  ///
  /// [limit] - Maximum results per page (default 50, max 100).
  ///
  /// [offset] - Number of results to skip (default 0).
  @GET('/v1/rag/collections')
  Future<ListCollectionsResponse> listCollections({
    @Query('limit') int? limit,
    @Query('offset') int? offset,
  });

  /// Create a new RAG collection.
  ///
  /// Creates a vector collection with the specified embedding and index configuration.
  /// Collection names must be unique per project.
  /// Returns 201 on success, 409 if a collection with that name already exists.
  @POST('/v1/rag/collections')
  Future<CreateCollectionResponse> createCollection({
    @Body() required CreateCollectionRequest body,
  });

  /// Get a RAG collection.
  ///
  /// Returns 404 if the collection does not exist or belongs to another project.
  ///
  /// [name] - Collection name.
  @GET('/v1/rag/collections/{name}')
  Future<CollectionResponse> getCollection({
    @Path('name') required String name,
  });

  /// Delete a RAG collection.
  ///
  /// Marking the collection as deleted prevents new document uploads but.
  /// does not immediately remove data.
  /// Returns 204 on success, 404 if the collection does not exist.
  ///
  /// [name] - Collection name.
  @DELETE('/v1/rag/collections/{name}')
  Future<void> deleteCollection({@Path('name') required String name});

  /// Create a document in a RAG collection.
  ///
  /// Supports two ingest paths:.
  /// - **Text source** → server chunks, enriches, embeds → 202 async.
  /// - **Chunks source** → worker handles embedding and enrichment → 202 async.
  ///
  /// Quota checks apply: if the collection has `quota_max_documents` set and.
  /// the active document count would exceed it, returns 429.
  ///
  /// **Note:** The synchronous BYO-vector path (200 with all embeddings supplied) ships in Phase 6c.
  /// Currently all ingest requests return 202 with a job_id for polling.
  ///
  /// [name] - Collection name.
  @POST('/v1/rag/collections/{name}/documents')
  Future<CreateDocumentAsyncResponse> createDocument({
    @Path('name') required String name,
    @Body() required CreateDocumentRequest body,
  });

  /// Delete documents from a RAG collection.
  ///
  /// Accepts either a list of document IDs or a metadata filter expression.
  ///
  /// [name] - Collection name.
  @DELETE('/v1/rag/collections/{name}/documents')
  Future<DeleteDocumentsResponse> deleteDocuments({
    @Path('name') required String name,
    @Body() required DeleteDocumentsRequest body,
  });

  /// Reindex a document.
  ///
  /// When `re_extract: true`, the worker re-pulls the source object from storage.
  /// and re-runs xberg extraction before re-chunking.
  ///
  /// [name] - Collection name.
  ///
  /// [id] - Document ID.
  @POST('/v1/rag/collections/{name}/documents/{id}/reindex')
  Future<CreateDocumentAsyncResponse> reindexDocument({
    @Path('name') required String name,
    @Path('id') required String id,
    @Body() required ReindexRequest body,
  });

  /// Initiate embedding source migration.
  ///
  /// Validates that the target version is greater than the current version.
  /// and that the target embedding source has the same dimension as the.
  /// current embedding source (cross-dimension migration is not supported).
  ///
  /// Returns 202 with a job_id for polling progress.
  ///
  /// [name] - Collection name.
  @POST('/v1/rag/collections/{name}/migrate-embeddings')
  Future<MigrateEmbeddingsResponse> migrateEmbeddings({
    @Path('name') required String name,
    @Body() required MigrateEmbeddingsRequest body,
  });

  /// Get migration job status.
  ///
  /// Returns the current status, progress details, or error information.
  ///
  /// [name] - Collection name.
  ///
  /// [jobId] - Migration job ID.
  @GET('/v1/rag/collections/{name}/migrate-embeddings/{job_id}')
  Future<MigrateStatusResponse> migrateStatus({
    @Path('name') required String name,
    @Path('job_id') required String jobId,
  });

  /// Retrieve relevance-ranked chunks from a RAG collection.
  ///
  /// [name] - Collection name.
  @POST('/v1/rag/collections/{name}/retrieve')
  Future<RetrieveResponse> retrieve({
    @Path('name') required String name,
    @Body() required RetrieveRequest body,
  });

  /// Poll async RAG operation status.
  ///
  /// Returns the current job state, operation type, and any available progress details.
  /// Status is determined by:.
  /// - For ingest/reindex: document status in vector_documents (pending→indexed or failed).
  /// - For migrate: job status in NATS KV bucket (rag-migrate-status).
  ///
  /// Returns 404 if the job_id does not exist or belongs to another project (RLS enforcement).
  ///
  /// [jobId] - Job ID (ULID).
  @GET('/v1/rag/jobs/{job_id}')
  Future<RagJobStatusResponse> getJob({@Path('job_id') required String jobId});
}
