// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../models/preset_detail.dart';
import '../models/preset_summary.dart';

part 'presets_client.g.dart';

@RestApi()
abstract class PresetsClient {
  factory PresetsClient(Dio dio, {String? baseUrl}) = _PresetsClient;

  /// `GET /v1/presets` — list curated presets (public).
  @GET('/v1/presets')
  Future<List<PresetSummary>> listPresets();

  /// `GET /v1/presets/{id}` — full preset detail (public).
  ///
  /// [id] - Preset identifier.
  @GET('/v1/presets/{id}')
  Future<PresetDetail> getPreset({@Path('id') required String id});

  /// `GET /v1/presets/{id}/sample/{name}` — raw bundled sample bytes (public).
  ///
  /// [id] - Preset identifier.
  ///
  /// [name] - Sample file name.
  @GET('/v1/presets/{id}/sample/{name}')
  Future<void> getPresetSample({
    @Path('id') required String id,
    @Path('name') required String name,
  });
}
