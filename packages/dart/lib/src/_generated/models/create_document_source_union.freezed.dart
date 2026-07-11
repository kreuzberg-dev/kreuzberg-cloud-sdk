// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_document_source_union.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
CreateDocumentSourceUnion _$CreateDocumentSourceUnionFromJson(
  Map<String, dynamic> json
) {
        switch (json['runtimeType']) {
                  case 'variant1':
          return CreateDocumentSourceUnionVariant1.fromJson(
            json
          );
                case 'variant2':
          return CreateDocumentSourceUnionVariant2.fromJson(
            json
          );

          default:
            throw CheckedFromJsonException(
  json,
  'runtimeType',
  'CreateDocumentSourceUnion',
  'Invalid union type "${json['runtimeType']}"!'
);
        }

}

/// @nodoc
mixin _$CreateDocumentSourceUnion {

 Enum get kind;/// Pre-computed enrichments (keywords, entities, labels) to skip server's pass
@JsonKey(name: 'enrichment_overrides') dynamic get enrichmentOverrides;
/// Create a copy of CreateDocumentSourceUnion
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreateDocumentSourceUnionCopyWith<CreateDocumentSourceUnion> get copyWith => _$CreateDocumentSourceUnionCopyWithImpl<CreateDocumentSourceUnion>(this as CreateDocumentSourceUnion, _$identity);

  /// Serializes this CreateDocumentSourceUnion to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateDocumentSourceUnion&&(identical(other.kind, kind) || other.kind == kind)&&const DeepCollectionEquality().equals(other.enrichmentOverrides, enrichmentOverrides));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,kind,const DeepCollectionEquality().hash(enrichmentOverrides));

@override
String toString() {
  return 'CreateDocumentSourceUnion(kind: $kind, enrichmentOverrides: $enrichmentOverrides)';
}


}

/// @nodoc
abstract mixin class $CreateDocumentSourceUnionCopyWith<$Res>  {
  factory $CreateDocumentSourceUnionCopyWith(CreateDocumentSourceUnion value, $Res Function(CreateDocumentSourceUnion) _then) = _$CreateDocumentSourceUnionCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'enrichment_overrides') dynamic enrichmentOverrides
});




}
/// @nodoc
class _$CreateDocumentSourceUnionCopyWithImpl<$Res>
    implements $CreateDocumentSourceUnionCopyWith<$Res> {
  _$CreateDocumentSourceUnionCopyWithImpl(this._self, this._then);

  final CreateDocumentSourceUnion _self;
  final $Res Function(CreateDocumentSourceUnion) _then;

/// Create a copy of CreateDocumentSourceUnion
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? enrichmentOverrides = freezed,}) {
  return _then(_self.copyWith(
enrichmentOverrides: freezed == enrichmentOverrides ? _self.enrichmentOverrides : enrichmentOverrides // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}

}


/// Adds pattern-matching-related methods to [CreateDocumentSourceUnion].
extension CreateDocumentSourceUnionPatterns on CreateDocumentSourceUnion {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( CreateDocumentSourceUnionVariant1 value)?  variant1,TResult Function( CreateDocumentSourceUnionVariant2 value)?  variant2,required TResult orElse(),}){
final _that = this;
switch (_that) {
case CreateDocumentSourceUnionVariant1() when variant1 != null:
return variant1(_that);case CreateDocumentSourceUnionVariant2() when variant2 != null:
return variant2(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( CreateDocumentSourceUnionVariant1 value)  variant1,required TResult Function( CreateDocumentSourceUnionVariant2 value)  variant2,}){
final _that = this;
switch (_that) {
case CreateDocumentSourceUnionVariant1():
return variant1(_that);case CreateDocumentSourceUnionVariant2():
return variant2(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( CreateDocumentSourceUnionVariant1 value)?  variant1,TResult? Function( CreateDocumentSourceUnionVariant2 value)?  variant2,}){
final _that = this;
switch (_that) {
case CreateDocumentSourceUnionVariant1() when variant1 != null:
return variant1(_that);case CreateDocumentSourceUnionVariant2() when variant2 != null:
return variant2(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( CreateDocumentSourceUnionVariant1Kind kind,  String text, @JsonKey(name: 'enrichment_overrides')  dynamic enrichmentOverrides)?  variant1,TResult Function( List<CreateDocumentChunkInput> chunks,  CreateDocumentSourceUnionVariant2Kind kind, @JsonKey(name: 'enrichment_overrides')  dynamic enrichmentOverrides)?  variant2,required TResult orElse(),}) {final _that = this;
switch (_that) {
case CreateDocumentSourceUnionVariant1() when variant1 != null:
return variant1(_that.kind,_that.text,_that.enrichmentOverrides);case CreateDocumentSourceUnionVariant2() when variant2 != null:
return variant2(_that.chunks,_that.kind,_that.enrichmentOverrides);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( CreateDocumentSourceUnionVariant1Kind kind,  String text, @JsonKey(name: 'enrichment_overrides')  dynamic enrichmentOverrides)  variant1,required TResult Function( List<CreateDocumentChunkInput> chunks,  CreateDocumentSourceUnionVariant2Kind kind, @JsonKey(name: 'enrichment_overrides')  dynamic enrichmentOverrides)  variant2,}) {final _that = this;
switch (_that) {
case CreateDocumentSourceUnionVariant1():
return variant1(_that.kind,_that.text,_that.enrichmentOverrides);case CreateDocumentSourceUnionVariant2():
return variant2(_that.chunks,_that.kind,_that.enrichmentOverrides);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( CreateDocumentSourceUnionVariant1Kind kind,  String text, @JsonKey(name: 'enrichment_overrides')  dynamic enrichmentOverrides)?  variant1,TResult? Function( List<CreateDocumentChunkInput> chunks,  CreateDocumentSourceUnionVariant2Kind kind, @JsonKey(name: 'enrichment_overrides')  dynamic enrichmentOverrides)?  variant2,}) {final _that = this;
switch (_that) {
case CreateDocumentSourceUnionVariant1() when variant1 != null:
return variant1(_that.kind,_that.text,_that.enrichmentOverrides);case CreateDocumentSourceUnionVariant2() when variant2 != null:
return variant2(_that.chunks,_that.kind,_that.enrichmentOverrides);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable()
class CreateDocumentSourceUnionVariant1 implements CreateDocumentSourceUnion {
  const CreateDocumentSourceUnionVariant1({required this.kind, required this.text, @JsonKey(name: 'enrichment_overrides') this.enrichmentOverrides, final  String? $type}): $type = $type ?? 'variant1';
  factory CreateDocumentSourceUnionVariant1.fromJson(Map<String, dynamic> json) => _$CreateDocumentSourceUnionVariant1FromJson(json);

@override final  CreateDocumentSourceUnionVariant1Kind kind;
/// Raw text content
 final  String text;
/// Pre-computed enrichments (keywords, entities, labels) to skip server's pass
@override@JsonKey(name: 'enrichment_overrides') final  dynamic enrichmentOverrides;

@JsonKey(name: 'runtimeType')
final String $type;


/// Create a copy of CreateDocumentSourceUnion
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreateDocumentSourceUnionVariant1CopyWith<CreateDocumentSourceUnionVariant1> get copyWith => _$CreateDocumentSourceUnionVariant1CopyWithImpl<CreateDocumentSourceUnionVariant1>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CreateDocumentSourceUnionVariant1ToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateDocumentSourceUnionVariant1&&(identical(other.kind, kind) || other.kind == kind)&&(identical(other.text, text) || other.text == text)&&const DeepCollectionEquality().equals(other.enrichmentOverrides, enrichmentOverrides));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,kind,text,const DeepCollectionEquality().hash(enrichmentOverrides));

@override
String toString() {
  return 'CreateDocumentSourceUnion.variant1(kind: $kind, text: $text, enrichmentOverrides: $enrichmentOverrides)';
}


}

/// @nodoc
abstract mixin class $CreateDocumentSourceUnionVariant1CopyWith<$Res> implements $CreateDocumentSourceUnionCopyWith<$Res> {
  factory $CreateDocumentSourceUnionVariant1CopyWith(CreateDocumentSourceUnionVariant1 value, $Res Function(CreateDocumentSourceUnionVariant1) _then) = _$CreateDocumentSourceUnionVariant1CopyWithImpl;
@override @useResult
$Res call({
 CreateDocumentSourceUnionVariant1Kind kind, String text,@JsonKey(name: 'enrichment_overrides') dynamic enrichmentOverrides
});




}
/// @nodoc
class _$CreateDocumentSourceUnionVariant1CopyWithImpl<$Res>
    implements $CreateDocumentSourceUnionVariant1CopyWith<$Res> {
  _$CreateDocumentSourceUnionVariant1CopyWithImpl(this._self, this._then);

  final CreateDocumentSourceUnionVariant1 _self;
  final $Res Function(CreateDocumentSourceUnionVariant1) _then;

/// Create a copy of CreateDocumentSourceUnion
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? kind = null,Object? text = null,Object? enrichmentOverrides = freezed,}) {
  return _then(CreateDocumentSourceUnionVariant1(
kind: null == kind ? _self.kind : kind // ignore: cast_nullable_to_non_nullable
as CreateDocumentSourceUnionVariant1Kind,text: null == text ? _self.text : text // ignore: cast_nullable_to_non_nullable
as String,enrichmentOverrides: freezed == enrichmentOverrides ? _self.enrichmentOverrides : enrichmentOverrides // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}


}

/// @nodoc

@JsonSerializable()
class CreateDocumentSourceUnionVariant2 implements CreateDocumentSourceUnion {
  const CreateDocumentSourceUnionVariant2({required final  List<CreateDocumentChunkInput> chunks, required this.kind, @JsonKey(name: 'enrichment_overrides') this.enrichmentOverrides, final  String? $type}): _chunks = chunks,$type = $type ?? 'variant2';
  factory CreateDocumentSourceUnionVariant2.fromJson(Map<String, dynamic> json) => _$CreateDocumentSourceUnionVariant2FromJson(json);

/// List of pre-split chunks
 final  List<CreateDocumentChunkInput> _chunks;
/// List of pre-split chunks
 List<CreateDocumentChunkInput> get chunks {
  if (_chunks is EqualUnmodifiableListView) return _chunks;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_chunks);
}

@override final  CreateDocumentSourceUnionVariant2Kind kind;
/// Pre-computed enrichments to skip server's pass
@override@JsonKey(name: 'enrichment_overrides') final  dynamic enrichmentOverrides;

@JsonKey(name: 'runtimeType')
final String $type;


/// Create a copy of CreateDocumentSourceUnion
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreateDocumentSourceUnionVariant2CopyWith<CreateDocumentSourceUnionVariant2> get copyWith => _$CreateDocumentSourceUnionVariant2CopyWithImpl<CreateDocumentSourceUnionVariant2>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CreateDocumentSourceUnionVariant2ToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateDocumentSourceUnionVariant2&&const DeepCollectionEquality().equals(other._chunks, _chunks)&&(identical(other.kind, kind) || other.kind == kind)&&const DeepCollectionEquality().equals(other.enrichmentOverrides, enrichmentOverrides));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_chunks),kind,const DeepCollectionEquality().hash(enrichmentOverrides));

@override
String toString() {
  return 'CreateDocumentSourceUnion.variant2(chunks: $chunks, kind: $kind, enrichmentOverrides: $enrichmentOverrides)';
}


}

/// @nodoc
abstract mixin class $CreateDocumentSourceUnionVariant2CopyWith<$Res> implements $CreateDocumentSourceUnionCopyWith<$Res> {
  factory $CreateDocumentSourceUnionVariant2CopyWith(CreateDocumentSourceUnionVariant2 value, $Res Function(CreateDocumentSourceUnionVariant2) _then) = _$CreateDocumentSourceUnionVariant2CopyWithImpl;
@override @useResult
$Res call({
 List<CreateDocumentChunkInput> chunks, CreateDocumentSourceUnionVariant2Kind kind,@JsonKey(name: 'enrichment_overrides') dynamic enrichmentOverrides
});




}
/// @nodoc
class _$CreateDocumentSourceUnionVariant2CopyWithImpl<$Res>
    implements $CreateDocumentSourceUnionVariant2CopyWith<$Res> {
  _$CreateDocumentSourceUnionVariant2CopyWithImpl(this._self, this._then);

  final CreateDocumentSourceUnionVariant2 _self;
  final $Res Function(CreateDocumentSourceUnionVariant2) _then;

/// Create a copy of CreateDocumentSourceUnion
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? chunks = null,Object? kind = null,Object? enrichmentOverrides = freezed,}) {
  return _then(CreateDocumentSourceUnionVariant2(
chunks: null == chunks ? _self._chunks : chunks // ignore: cast_nullable_to_non_nullable
as List<CreateDocumentChunkInput>,kind: null == kind ? _self.kind : kind // ignore: cast_nullable_to_non_nullable
as CreateDocumentSourceUnionVariant2Kind,enrichmentOverrides: freezed == enrichmentOverrides ? _self.enrichmentOverrides : enrichmentOverrides // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}


}

// dart format on
