// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'qr_bounding_box.dart';

part 'qr_code.freezed.dart';
part 'qr_code.g.dart';

/// One QR code decoded from an extracted image.
@Freezed()
abstract class QrCode with _$QrCode {
  const factory QrCode({
    /// Decoded payload (text, URL, vCard string, …).
    required String payload,

    /// Bounding box of the QR code inside the source image, in pixel coordinates.
    /// (`x`, `y` of the top-left corner; `width`, `height` of the rectangle).
    /// `None` if the decoder did not report a bounding box.
    QrBoundingBox? bbox,

    /// Detector-reported confidence in `[0.0, 1.0]`. `None` when the decoder.
    /// does not expose confidence (the default `rqrr` backend always reports.
    /// `Some` because successful decode implies high confidence).
    double? confidence,
  }) = _QrCode;

  factory QrCode.fromJson(Map<String, Object?> json) => _$QrCodeFromJson(json);
}
