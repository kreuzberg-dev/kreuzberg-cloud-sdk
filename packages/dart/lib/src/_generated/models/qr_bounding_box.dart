// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'qr_bounding_box.freezed.dart';
part 'qr_bounding_box.g.dart';

/// Pixel-space bounding box of a QR code inside its source image.
@Freezed()
abstract class QrBoundingBox with _$QrBoundingBox {
  const factory QrBoundingBox({
    /// Height of the bounding box in pixels.
    required int height,

    /// Width of the bounding box in pixels.
    required int width,

    /// Horizontal pixel offset of the bounding box top-left corner.
    required int x,

    /// Vertical pixel offset of the bounding box top-left corner.
    required int y,
  }) = _QrBoundingBox;

  factory QrBoundingBox.fromJson(Map<String, Object?> json) =>
      _$QrBoundingBoxFromJson(json);
}
