// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'document_summary.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DocumentSummary {

/// Strategy that produced this summary.
 SummaryStrategy get strategy;/// Summary text (plain prose).
 String get text;/// Approximate token count of the summary, when known.
@JsonKey(name: 'token_count') int? get tokenCount;
/// Create a copy of DocumentSummary
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DocumentSummaryCopyWith<DocumentSummary> get copyWith => _$DocumentSummaryCopyWithImpl<DocumentSummary>(this as DocumentSummary, _$identity);

  /// Serializes this DocumentSummary to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DocumentSummary&&(identical(other.strategy, strategy) || other.strategy == strategy)&&(identical(other.text, text) || other.text == text)&&(identical(other.tokenCount, tokenCount) || other.tokenCount == tokenCount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,strategy,text,tokenCount);

@override
String toString() {
  return 'DocumentSummary(strategy: $strategy, text: $text, tokenCount: $tokenCount)';
}


}

/// @nodoc
abstract mixin class $DocumentSummaryCopyWith<$Res>  {
  factory $DocumentSummaryCopyWith(DocumentSummary value, $Res Function(DocumentSummary) _then) = _$DocumentSummaryCopyWithImpl;
@useResult
$Res call({
 SummaryStrategy strategy, String text,@JsonKey(name: 'token_count') int? tokenCount
});




}
/// @nodoc
class _$DocumentSummaryCopyWithImpl<$Res>
    implements $DocumentSummaryCopyWith<$Res> {
  _$DocumentSummaryCopyWithImpl(this._self, this._then);

  final DocumentSummary _self;
  final $Res Function(DocumentSummary) _then;

/// Create a copy of DocumentSummary
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? strategy = null,Object? text = null,Object? tokenCount = freezed,}) {
  return _then(_self.copyWith(
strategy: null == strategy ? _self.strategy : strategy // ignore: cast_nullable_to_non_nullable
as SummaryStrategy,text: null == text ? _self.text : text // ignore: cast_nullable_to_non_nullable
as String,tokenCount: freezed == tokenCount ? _self.tokenCount : tokenCount // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [DocumentSummary].
extension DocumentSummaryPatterns on DocumentSummary {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DocumentSummary value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DocumentSummary() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DocumentSummary value)  $default,){
final _that = this;
switch (_that) {
case _DocumentSummary():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DocumentSummary value)?  $default,){
final _that = this;
switch (_that) {
case _DocumentSummary() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( SummaryStrategy strategy,  String text, @JsonKey(name: 'token_count')  int? tokenCount)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DocumentSummary() when $default != null:
return $default(_that.strategy,_that.text,_that.tokenCount);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( SummaryStrategy strategy,  String text, @JsonKey(name: 'token_count')  int? tokenCount)  $default,) {final _that = this;
switch (_that) {
case _DocumentSummary():
return $default(_that.strategy,_that.text,_that.tokenCount);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( SummaryStrategy strategy,  String text, @JsonKey(name: 'token_count')  int? tokenCount)?  $default,) {final _that = this;
switch (_that) {
case _DocumentSummary() when $default != null:
return $default(_that.strategy,_that.text,_that.tokenCount);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DocumentSummary implements DocumentSummary {
  const _DocumentSummary({required this.strategy, required this.text, @JsonKey(name: 'token_count') this.tokenCount});
  factory _DocumentSummary.fromJson(Map<String, dynamic> json) => _$DocumentSummaryFromJson(json);

/// Strategy that produced this summary.
@override final  SummaryStrategy strategy;
/// Summary text (plain prose).
@override final  String text;
/// Approximate token count of the summary, when known.
@override@JsonKey(name: 'token_count') final  int? tokenCount;

/// Create a copy of DocumentSummary
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DocumentSummaryCopyWith<_DocumentSummary> get copyWith => __$DocumentSummaryCopyWithImpl<_DocumentSummary>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DocumentSummaryToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DocumentSummary&&(identical(other.strategy, strategy) || other.strategy == strategy)&&(identical(other.text, text) || other.text == text)&&(identical(other.tokenCount, tokenCount) || other.tokenCount == tokenCount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,strategy,text,tokenCount);

@override
String toString() {
  return 'DocumentSummary(strategy: $strategy, text: $text, tokenCount: $tokenCount)';
}


}

/// @nodoc
abstract mixin class _$DocumentSummaryCopyWith<$Res> implements $DocumentSummaryCopyWith<$Res> {
  factory _$DocumentSummaryCopyWith(_DocumentSummary value, $Res Function(_DocumentSummary) _then) = __$DocumentSummaryCopyWithImpl;
@override @useResult
$Res call({
 SummaryStrategy strategy, String text,@JsonKey(name: 'token_count') int? tokenCount
});




}
/// @nodoc
class __$DocumentSummaryCopyWithImpl<$Res>
    implements _$DocumentSummaryCopyWith<$Res> {
  __$DocumentSummaryCopyWithImpl(this._self, this._then);

  final _DocumentSummary _self;
  final $Res Function(_DocumentSummary) _then;

/// Create a copy of DocumentSummary
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? strategy = null,Object? text = null,Object? tokenCount = freezed,}) {
  return _then(_DocumentSummary(
strategy: null == strategy ? _self.strategy : strategy // ignore: cast_nullable_to_non_nullable
as SummaryStrategy,text: null == text ? _self.text : text // ignore: cast_nullable_to_non_nullable
as String,tokenCount: freezed == tokenCount ? _self.tokenCount : tokenCount // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

// dart format on
