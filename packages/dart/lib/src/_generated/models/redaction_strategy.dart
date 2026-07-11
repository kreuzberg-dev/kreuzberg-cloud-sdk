// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

/// Strategy applied when a PII match is rewritten.
@JsonEnum()
enum RedactionStrategy {
  @JsonValue('mask')
  mask('mask'),
  @JsonValue('hash')
  hash('hash'),
  @JsonValue('token_replace')
  tokenReplace('token_replace'),
  @JsonValue('drop')
  drop('drop'),

  /// Default value for all unparsed values, allows backward compatibility when adding new values on the backend.
  $unknown(null);

  const RedactionStrategy(this.json);

  factory RedactionStrategy.fromJson(String json) =>
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
  static List<RedactionStrategy> get $valuesDefined =>
      values.where((value) => value != $unknown).toList();
}
