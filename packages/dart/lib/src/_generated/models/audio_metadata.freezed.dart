// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'audio_metadata.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AudioMetadata {

/// Audio bitrate in kbps from the source file tags/properties.
 int? get bitrate;/// Number of audio channels (1 = mono, 2 = stereo).
 int? get channels;/// Audio codec (e.g. "mp3", "aac", "opus", "flac").
 String? get codec;/// Container format (e.g. "mpeg", "mp4", "ogg", "wav").
 String? get container;/// Duration in milliseconds derived from the decoded audio stream.
@JsonKey(name: 'duration_ms') int? get durationMs;/// Sample rate in Hz after decode (always 16000 when resampled for Whisper).
@JsonKey(name: 'sample_rate_hz') int? get sampleRateHz;
/// Create a copy of AudioMetadata
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AudioMetadataCopyWith<AudioMetadata> get copyWith => _$AudioMetadataCopyWithImpl<AudioMetadata>(this as AudioMetadata, _$identity);

  /// Serializes this AudioMetadata to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AudioMetadata&&(identical(other.bitrate, bitrate) || other.bitrate == bitrate)&&(identical(other.channels, channels) || other.channels == channels)&&(identical(other.codec, codec) || other.codec == codec)&&(identical(other.container, container) || other.container == container)&&(identical(other.durationMs, durationMs) || other.durationMs == durationMs)&&(identical(other.sampleRateHz, sampleRateHz) || other.sampleRateHz == sampleRateHz));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,bitrate,channels,codec,container,durationMs,sampleRateHz);

@override
String toString() {
  return 'AudioMetadata(bitrate: $bitrate, channels: $channels, codec: $codec, container: $container, durationMs: $durationMs, sampleRateHz: $sampleRateHz)';
}


}

/// @nodoc
abstract mixin class $AudioMetadataCopyWith<$Res>  {
  factory $AudioMetadataCopyWith(AudioMetadata value, $Res Function(AudioMetadata) _then) = _$AudioMetadataCopyWithImpl;
@useResult
$Res call({
 int? bitrate, int? channels, String? codec, String? container,@JsonKey(name: 'duration_ms') int? durationMs,@JsonKey(name: 'sample_rate_hz') int? sampleRateHz
});




}
/// @nodoc
class _$AudioMetadataCopyWithImpl<$Res>
    implements $AudioMetadataCopyWith<$Res> {
  _$AudioMetadataCopyWithImpl(this._self, this._then);

  final AudioMetadata _self;
  final $Res Function(AudioMetadata) _then;

/// Create a copy of AudioMetadata
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? bitrate = freezed,Object? channels = freezed,Object? codec = freezed,Object? container = freezed,Object? durationMs = freezed,Object? sampleRateHz = freezed,}) {
  return _then(_self.copyWith(
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


/// Adds pattern-matching-related methods to [AudioMetadata].
extension AudioMetadataPatterns on AudioMetadata {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AudioMetadata value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AudioMetadata() when $default != null:
return $default(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AudioMetadata value)  $default,){
final _that = this;
switch (_that) {
case _AudioMetadata():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AudioMetadata value)?  $default,){
final _that = this;
switch (_that) {
case _AudioMetadata() when $default != null:
return $default(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? bitrate,  int? channels,  String? codec,  String? container, @JsonKey(name: 'duration_ms')  int? durationMs, @JsonKey(name: 'sample_rate_hz')  int? sampleRateHz)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AudioMetadata() when $default != null:
return $default(_that.bitrate,_that.channels,_that.codec,_that.container,_that.durationMs,_that.sampleRateHz);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? bitrate,  int? channels,  String? codec,  String? container, @JsonKey(name: 'duration_ms')  int? durationMs, @JsonKey(name: 'sample_rate_hz')  int? sampleRateHz)  $default,) {final _that = this;
switch (_that) {
case _AudioMetadata():
return $default(_that.bitrate,_that.channels,_that.codec,_that.container,_that.durationMs,_that.sampleRateHz);case _:
  throw StateError('Unexpected subclass');

}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? bitrate,  int? channels,  String? codec,  String? container, @JsonKey(name: 'duration_ms')  int? durationMs, @JsonKey(name: 'sample_rate_hz')  int? sampleRateHz)?  $default,) {final _that = this;
switch (_that) {
case _AudioMetadata() when $default != null:
return $default(_that.bitrate,_that.channels,_that.codec,_that.container,_that.durationMs,_that.sampleRateHz);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AudioMetadata implements AudioMetadata {
  const _AudioMetadata({this.bitrate, this.channels, this.codec, this.container, @JsonKey(name: 'duration_ms') this.durationMs, @JsonKey(name: 'sample_rate_hz') this.sampleRateHz});
  factory _AudioMetadata.fromJson(Map<String, dynamic> json) => _$AudioMetadataFromJson(json);

/// Audio bitrate in kbps from the source file tags/properties.
@override final  int? bitrate;
/// Number of audio channels (1 = mono, 2 = stereo).
@override final  int? channels;
/// Audio codec (e.g. "mp3", "aac", "opus", "flac").
@override final  String? codec;
/// Container format (e.g. "mpeg", "mp4", "ogg", "wav").
@override final  String? container;
/// Duration in milliseconds derived from the decoded audio stream.
@override@JsonKey(name: 'duration_ms') final  int? durationMs;
/// Sample rate in Hz after decode (always 16000 when resampled for Whisper).
@override@JsonKey(name: 'sample_rate_hz') final  int? sampleRateHz;

/// Create a copy of AudioMetadata
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AudioMetadataCopyWith<_AudioMetadata> get copyWith => __$AudioMetadataCopyWithImpl<_AudioMetadata>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AudioMetadataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AudioMetadata&&(identical(other.bitrate, bitrate) || other.bitrate == bitrate)&&(identical(other.channels, channels) || other.channels == channels)&&(identical(other.codec, codec) || other.codec == codec)&&(identical(other.container, container) || other.container == container)&&(identical(other.durationMs, durationMs) || other.durationMs == durationMs)&&(identical(other.sampleRateHz, sampleRateHz) || other.sampleRateHz == sampleRateHz));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,bitrate,channels,codec,container,durationMs,sampleRateHz);

@override
String toString() {
  return 'AudioMetadata(bitrate: $bitrate, channels: $channels, codec: $codec, container: $container, durationMs: $durationMs, sampleRateHz: $sampleRateHz)';
}


}

/// @nodoc
abstract mixin class _$AudioMetadataCopyWith<$Res> implements $AudioMetadataCopyWith<$Res> {
  factory _$AudioMetadataCopyWith(_AudioMetadata value, $Res Function(_AudioMetadata) _then) = __$AudioMetadataCopyWithImpl;
@override @useResult
$Res call({
 int? bitrate, int? channels, String? codec, String? container,@JsonKey(name: 'duration_ms') int? durationMs,@JsonKey(name: 'sample_rate_hz') int? sampleRateHz
});




}
/// @nodoc
class __$AudioMetadataCopyWithImpl<$Res>
    implements _$AudioMetadataCopyWith<$Res> {
  __$AudioMetadataCopyWithImpl(this._self, this._then);

  final _AudioMetadata _self;
  final $Res Function(_AudioMetadata) _then;

/// Create a copy of AudioMetadata
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? bitrate = freezed,Object? channels = freezed,Object? codec = freezed,Object? container = freezed,Object? durationMs = freezed,Object? sampleRateHz = freezed,}) {
  return _then(_AudioMetadata(
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

// dart format on
