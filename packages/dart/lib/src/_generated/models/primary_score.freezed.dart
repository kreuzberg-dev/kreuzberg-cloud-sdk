// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'primary_score.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
PrimaryScore _$PrimaryScoreFromJson(
  Map<String, dynamic> json
) {
        switch (json['kind']) {
                  case 'vector':
          return PrimaryScoreVector.fromJson(
            json
          );
                case 'full_text':
          return PrimaryScoreFullText.fromJson(
            json
          );
                case 'hybrid':
          return PrimaryScoreHybrid.fromJson(
            json
          );

          default:
            throw CheckedFromJsonException(
  json,
  'kind',
  'PrimaryScore',
  'Invalid union type "${json['kind']}"!'
);
        }

}

/// @nodoc
mixin _$PrimaryScore {



  /// Serializes this PrimaryScore to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PrimaryScore);
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'PrimaryScore()';
}


}

/// @nodoc
class $PrimaryScoreCopyWith<$Res>  {
$PrimaryScoreCopyWith(PrimaryScore _, $Res Function(PrimaryScore) __);
}


/// Adds pattern-matching-related methods to [PrimaryScore].
extension PrimaryScorePatterns on PrimaryScore {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( PrimaryScoreVector value)?  vector,TResult Function( PrimaryScoreFullText value)?  fullText,TResult Function( PrimaryScoreHybrid value)?  hybrid,required TResult orElse(),}){
final _that = this;
switch (_that) {
case PrimaryScoreVector() when vector != null:
return vector(_that);case PrimaryScoreFullText() when fullText != null:
return fullText(_that);case PrimaryScoreHybrid() when hybrid != null:
return hybrid(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( PrimaryScoreVector value)  vector,required TResult Function( PrimaryScoreFullText value)  fullText,required TResult Function( PrimaryScoreHybrid value)  hybrid,}){
final _that = this;
switch (_that) {
case PrimaryScoreVector():
return vector(_that);case PrimaryScoreFullText():
return fullText(_that);case PrimaryScoreHybrid():
return hybrid(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( PrimaryScoreVector value)?  vector,TResult? Function( PrimaryScoreFullText value)?  fullText,TResult? Function( PrimaryScoreHybrid value)?  hybrid,}){
final _that = this;
switch (_that) {
case PrimaryScoreVector() when vector != null:
return vector(_that);case PrimaryScoreFullText() when fullText != null:
return fullText(_that);case PrimaryScoreHybrid() when hybrid != null:
return hybrid(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( double score)?  vector,TResult Function( double score)?  fullText,TResult Function( double vector, @JsonKey(name: 'full_text')  double fullText,  double rrf)?  hybrid,required TResult orElse(),}) {final _that = this;
switch (_that) {
case PrimaryScoreVector() when vector != null:
return vector(_that.score);case PrimaryScoreFullText() when fullText != null:
return fullText(_that.score);case PrimaryScoreHybrid() when hybrid != null:
return hybrid(_that.vector,_that.fullText,_that.rrf);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( double score)  vector,required TResult Function( double score)  fullText,required TResult Function( double vector, @JsonKey(name: 'full_text')  double fullText,  double rrf)  hybrid,}) {final _that = this;
switch (_that) {
case PrimaryScoreVector():
return vector(_that.score);case PrimaryScoreFullText():
return fullText(_that.score);case PrimaryScoreHybrid():
return hybrid(_that.vector,_that.fullText,_that.rrf);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( double score)?  vector,TResult? Function( double score)?  fullText,TResult? Function( double vector, @JsonKey(name: 'full_text')  double fullText,  double rrf)?  hybrid,}) {final _that = this;
switch (_that) {
case PrimaryScoreVector() when vector != null:
return vector(_that.score);case PrimaryScoreFullText() when fullText != null:
return fullText(_that.score);case PrimaryScoreHybrid() when hybrid != null:
return hybrid(_that.vector,_that.fullText,_that.rrf);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class PrimaryScoreVector implements PrimaryScore {
  const PrimaryScoreVector({required this.score, final  String? $type}): $type = $type ?? 'vector';
  factory PrimaryScoreVector.fromJson(Map<String, dynamic> json) => _$PrimaryScoreVectorFromJson(json);

 final  double score;

@JsonKey(name: 'kind')
final String $type;


/// Create a copy of PrimaryScore
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PrimaryScoreVectorCopyWith<PrimaryScoreVector> get copyWith => _$PrimaryScoreVectorCopyWithImpl<PrimaryScoreVector>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PrimaryScoreVectorToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PrimaryScoreVector&&(identical(other.score, score) || other.score == score));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,score);

@override
String toString() {
  return 'PrimaryScore.vector(score: $score)';
}


}

/// @nodoc
abstract mixin class $PrimaryScoreVectorCopyWith<$Res> implements $PrimaryScoreCopyWith<$Res> {
  factory $PrimaryScoreVectorCopyWith(PrimaryScoreVector value, $Res Function(PrimaryScoreVector) _then) = _$PrimaryScoreVectorCopyWithImpl;
@useResult
$Res call({
 double score
});




}
/// @nodoc
class _$PrimaryScoreVectorCopyWithImpl<$Res>
    implements $PrimaryScoreVectorCopyWith<$Res> {
  _$PrimaryScoreVectorCopyWithImpl(this._self, this._then);

  final PrimaryScoreVector _self;
  final $Res Function(PrimaryScoreVector) _then;

/// Create a copy of PrimaryScore
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? score = null,}) {
  return _then(PrimaryScoreVector(
score: null == score ? _self.score : score // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}

/// @nodoc
@JsonSerializable()

class PrimaryScoreFullText implements PrimaryScore {
  const PrimaryScoreFullText({required this.score, final  String? $type}): $type = $type ?? 'full_text';
  factory PrimaryScoreFullText.fromJson(Map<String, dynamic> json) => _$PrimaryScoreFullTextFromJson(json);

 final  double score;

@JsonKey(name: 'kind')
final String $type;


/// Create a copy of PrimaryScore
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PrimaryScoreFullTextCopyWith<PrimaryScoreFullText> get copyWith => _$PrimaryScoreFullTextCopyWithImpl<PrimaryScoreFullText>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PrimaryScoreFullTextToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PrimaryScoreFullText&&(identical(other.score, score) || other.score == score));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,score);

@override
String toString() {
  return 'PrimaryScore.fullText(score: $score)';
}


}

/// @nodoc
abstract mixin class $PrimaryScoreFullTextCopyWith<$Res> implements $PrimaryScoreCopyWith<$Res> {
  factory $PrimaryScoreFullTextCopyWith(PrimaryScoreFullText value, $Res Function(PrimaryScoreFullText) _then) = _$PrimaryScoreFullTextCopyWithImpl;
@useResult
$Res call({
 double score
});




}
/// @nodoc
class _$PrimaryScoreFullTextCopyWithImpl<$Res>
    implements $PrimaryScoreFullTextCopyWith<$Res> {
  _$PrimaryScoreFullTextCopyWithImpl(this._self, this._then);

  final PrimaryScoreFullText _self;
  final $Res Function(PrimaryScoreFullText) _then;

/// Create a copy of PrimaryScore
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? score = null,}) {
  return _then(PrimaryScoreFullText(
score: null == score ? _self.score : score // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}

/// @nodoc
@JsonSerializable()

class PrimaryScoreHybrid implements PrimaryScore {
  const PrimaryScoreHybrid({required this.vector, @JsonKey(name: 'full_text') required this.fullText, required this.rrf, final  String? $type}): $type = $type ?? 'hybrid';
  factory PrimaryScoreHybrid.fromJson(Map<String, dynamic> json) => _$PrimaryScoreHybridFromJson(json);

/// Vector component.
 final  double vector;
/// Full-text component.
@JsonKey(name: 'full_text') final  double fullText;
/// Reciprocal-rank-fusion combined score.
 final  double rrf;

@JsonKey(name: 'kind')
final String $type;


/// Create a copy of PrimaryScore
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PrimaryScoreHybridCopyWith<PrimaryScoreHybrid> get copyWith => _$PrimaryScoreHybridCopyWithImpl<PrimaryScoreHybrid>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PrimaryScoreHybridToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PrimaryScoreHybrid&&(identical(other.vector, vector) || other.vector == vector)&&(identical(other.fullText, fullText) || other.fullText == fullText)&&(identical(other.rrf, rrf) || other.rrf == rrf));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,vector,fullText,rrf);

@override
String toString() {
  return 'PrimaryScore.hybrid(vector: $vector, fullText: $fullText, rrf: $rrf)';
}


}

/// @nodoc
abstract mixin class $PrimaryScoreHybridCopyWith<$Res> implements $PrimaryScoreCopyWith<$Res> {
  factory $PrimaryScoreHybridCopyWith(PrimaryScoreHybrid value, $Res Function(PrimaryScoreHybrid) _then) = _$PrimaryScoreHybridCopyWithImpl;
@useResult
$Res call({
 double vector,@JsonKey(name: 'full_text') double fullText, double rrf
});




}
/// @nodoc
class _$PrimaryScoreHybridCopyWithImpl<$Res>
    implements $PrimaryScoreHybridCopyWith<$Res> {
  _$PrimaryScoreHybridCopyWithImpl(this._self, this._then);

  final PrimaryScoreHybrid _self;
  final $Res Function(PrimaryScoreHybrid) _then;

/// Create a copy of PrimaryScore
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? vector = null,Object? fullText = null,Object? rrf = null,}) {
  return _then(PrimaryScoreHybrid(
vector: null == vector ? _self.vector : vector // ignore: cast_nullable_to_non_nullable
as double,fullText: null == fullText ? _self.fullText : fullText // ignore: cast_nullable_to_non_nullable
as double,rrf: null == rrf ? _self.rrf : rrf // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}

// dart format on
