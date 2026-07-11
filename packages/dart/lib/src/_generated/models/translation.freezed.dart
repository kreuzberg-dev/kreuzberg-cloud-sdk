// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'translation.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Translation {

/// Translated plain-text body. Matches the shape of `ExtractedDocument::content`.
 String get content;/// BCP-47 language tag the translation was produced into (e.g. `"de"`, `"fr-CA"`).
@JsonKey(name: 'target_lang') String get targetLang;/// Translated markup body (Markdown / HTML / etc.) when `preserve_markup` was.
/// enabled on the config. `None` otherwise.
@JsonKey(name: 'formatted_content') String? get formattedContent;/// BCP-47 source language. `None` when the translation backend was asked to detect.
@JsonKey(name: 'source_lang') String? get sourceLang;
/// Create a copy of Translation
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TranslationCopyWith<Translation> get copyWith => _$TranslationCopyWithImpl<Translation>(this as Translation, _$identity);

  /// Serializes this Translation to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Translation&&(identical(other.content, content) || other.content == content)&&(identical(other.targetLang, targetLang) || other.targetLang == targetLang)&&(identical(other.formattedContent, formattedContent) || other.formattedContent == formattedContent)&&(identical(other.sourceLang, sourceLang) || other.sourceLang == sourceLang));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,content,targetLang,formattedContent,sourceLang);

@override
String toString() {
  return 'Translation(content: $content, targetLang: $targetLang, formattedContent: $formattedContent, sourceLang: $sourceLang)';
}


}

/// @nodoc
abstract mixin class $TranslationCopyWith<$Res>  {
  factory $TranslationCopyWith(Translation value, $Res Function(Translation) _then) = _$TranslationCopyWithImpl;
@useResult
$Res call({
 String content,@JsonKey(name: 'target_lang') String targetLang,@JsonKey(name: 'formatted_content') String? formattedContent,@JsonKey(name: 'source_lang') String? sourceLang
});




}
/// @nodoc
class _$TranslationCopyWithImpl<$Res>
    implements $TranslationCopyWith<$Res> {
  _$TranslationCopyWithImpl(this._self, this._then);

  final Translation _self;
  final $Res Function(Translation) _then;

/// Create a copy of Translation
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? content = null,Object? targetLang = null,Object? formattedContent = freezed,Object? sourceLang = freezed,}) {
  return _then(_self.copyWith(
content: null == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as String,targetLang: null == targetLang ? _self.targetLang : targetLang // ignore: cast_nullable_to_non_nullable
as String,formattedContent: freezed == formattedContent ? _self.formattedContent : formattedContent // ignore: cast_nullable_to_non_nullable
as String?,sourceLang: freezed == sourceLang ? _self.sourceLang : sourceLang // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [Translation].
extension TranslationPatterns on Translation {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Translation value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Translation() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Translation value)  $default,){
final _that = this;
switch (_that) {
case _Translation():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Translation value)?  $default,){
final _that = this;
switch (_that) {
case _Translation() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String content, @JsonKey(name: 'target_lang')  String targetLang, @JsonKey(name: 'formatted_content')  String? formattedContent, @JsonKey(name: 'source_lang')  String? sourceLang)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Translation() when $default != null:
return $default(_that.content,_that.targetLang,_that.formattedContent,_that.sourceLang);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String content, @JsonKey(name: 'target_lang')  String targetLang, @JsonKey(name: 'formatted_content')  String? formattedContent, @JsonKey(name: 'source_lang')  String? sourceLang)  $default,) {final _that = this;
switch (_that) {
case _Translation():
return $default(_that.content,_that.targetLang,_that.formattedContent,_that.sourceLang);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String content, @JsonKey(name: 'target_lang')  String targetLang, @JsonKey(name: 'formatted_content')  String? formattedContent, @JsonKey(name: 'source_lang')  String? sourceLang)?  $default,) {final _that = this;
switch (_that) {
case _Translation() when $default != null:
return $default(_that.content,_that.targetLang,_that.formattedContent,_that.sourceLang);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Translation implements Translation {
  const _Translation({required this.content, @JsonKey(name: 'target_lang') required this.targetLang, @JsonKey(name: 'formatted_content') this.formattedContent, @JsonKey(name: 'source_lang') this.sourceLang});
  factory _Translation.fromJson(Map<String, dynamic> json) => _$TranslationFromJson(json);

/// Translated plain-text body. Matches the shape of `ExtractedDocument::content`.
@override final  String content;
/// BCP-47 language tag the translation was produced into (e.g. `"de"`, `"fr-CA"`).
@override@JsonKey(name: 'target_lang') final  String targetLang;
/// Translated markup body (Markdown / HTML / etc.) when `preserve_markup` was.
/// enabled on the config. `None` otherwise.
@override@JsonKey(name: 'formatted_content') final  String? formattedContent;
/// BCP-47 source language. `None` when the translation backend was asked to detect.
@override@JsonKey(name: 'source_lang') final  String? sourceLang;

/// Create a copy of Translation
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TranslationCopyWith<_Translation> get copyWith => __$TranslationCopyWithImpl<_Translation>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TranslationToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Translation&&(identical(other.content, content) || other.content == content)&&(identical(other.targetLang, targetLang) || other.targetLang == targetLang)&&(identical(other.formattedContent, formattedContent) || other.formattedContent == formattedContent)&&(identical(other.sourceLang, sourceLang) || other.sourceLang == sourceLang));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,content,targetLang,formattedContent,sourceLang);

@override
String toString() {
  return 'Translation(content: $content, targetLang: $targetLang, formattedContent: $formattedContent, sourceLang: $sourceLang)';
}


}

/// @nodoc
abstract mixin class _$TranslationCopyWith<$Res> implements $TranslationCopyWith<$Res> {
  factory _$TranslationCopyWith(_Translation value, $Res Function(_Translation) _then) = __$TranslationCopyWithImpl;
@override @useResult
$Res call({
 String content,@JsonKey(name: 'target_lang') String targetLang,@JsonKey(name: 'formatted_content') String? formattedContent,@JsonKey(name: 'source_lang') String? sourceLang
});




}
/// @nodoc
class __$TranslationCopyWithImpl<$Res>
    implements _$TranslationCopyWith<$Res> {
  __$TranslationCopyWithImpl(this._self, this._then);

  final _Translation _self;
  final $Res Function(_Translation) _then;

/// Create a copy of Translation
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? content = null,Object? targetLang = null,Object? formattedContent = freezed,Object? sourceLang = freezed,}) {
  return _then(_Translation(
content: null == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as String,targetLang: null == targetLang ? _self.targetLang : targetLang // ignore: cast_nullable_to_non_nullable
as String,formattedContent: freezed == formattedContent ? _self.formattedContent : formattedContent // ignore: cast_nullable_to_non_nullable
as String?,sourceLang: freezed == sourceLang ? _self.sourceLang : sourceLang // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
