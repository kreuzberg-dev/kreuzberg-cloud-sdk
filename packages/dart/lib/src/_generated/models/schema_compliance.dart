// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

/// Schema-validation outcome surfaced as one of three buckets.
///
/// Fold into the combined confidence score without leaking internal validation.
/// error types.
@JsonEnum()
enum SchemaCompliance {
  @JsonValue('all_valid')
  allValid('all_valid'),
  @JsonValue('partial_valid')
  partialValid('partial_valid'),
  @JsonValue('all_invalid')
  allInvalid('all_invalid'),

  /// Default value for all unparsed values, allows backward compatibility when adding new values on the backend.
  $unknown(null);

  const SchemaCompliance(this.json);

  factory SchemaCompliance.fromJson(String json) =>
      values.firstWhere((e) => e.json == json, orElse: () => $unknown);

  final String? json;
  String toJson() {
    final value = json;
    if (value == null) {
      throw StateError(
        'Cannot convert enum value with null JSON representation to String. '
        'This usually happens for \$unknown or @JsonValue(null) entries.',
      );
    }
    return value as String;
  }

  @override
  String toString() => json?.toString() ?? super.toString();

  /// Returns all defined enum values excluding the $unknown value.
  static List<SchemaCompliance> get $valuesDefined =>
      values.where((value) => value != $unknown).toList();
}
