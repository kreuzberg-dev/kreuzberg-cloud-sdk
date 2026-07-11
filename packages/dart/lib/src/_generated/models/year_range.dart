// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'year_range.freezed.dart';
part 'year_range.g.dart';

/// Year range for bibliographic metadata.
@Freezed()
abstract class YearRange with _$YearRange {
  const factory YearRange({
    /// Latest (maximum) year in the range.
    int? max,

    /// Earliest (minimum) year in the range.
    int? min,

    /// All individual years present in the collection.
    List<int>? years,
  }) = _YearRange;

  factory YearRange.fromJson(Map<String, Object?> json) =>
      _$YearRangeFromJson(json);
}
