// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'include_mask.freezed.dart';
part 'include_mask.g.dart';

/// Mask of optional response fields.
@Freezed()
abstract class IncludeMask with _$IncludeMask {
  const factory IncludeMask({
    /// Include chunk content text. Default true.
    bool? content,

    /// Include parent document summary. Default false.
    bool? document,

    /// Include primary-stage + rerank score breakdown. Default false.
    @JsonKey(name: 'score_breakdown') bool? scoreBreakdown,
  }) = _IncludeMask;

  factory IncludeMask.fromJson(Map<String, Object?> json) =>
      _$IncludeMaskFromJson(json);
}
