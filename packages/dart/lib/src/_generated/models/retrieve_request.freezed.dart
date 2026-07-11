// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'retrieve_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$RetrieveRequest {

/// 1..=20, default 4. Ignored when rerank is inactive. The store.
/// pulls `top_k * candidate_multiplier` candidates from the.
/// primary stage so the reranker has more to choose from.
@JsonKey(name: 'candidate_multiplier') int? get candidateMultiplier;/// Filter expression (deserialized by the vectorstore Filter IR).
 dynamic get filter;/// Collapse to one chunk per document.
@JsonKey(name: 'group_by_document') bool? get groupByDocument;/// Optional response field mask.
 IncludeMask? get include;/// Retrieve mode. Defaults to `hybrid`.
 RetrieveMode? get mode;/// Text query. Required for full_text and hybrid modes; optional.
/// for vector mode when `query_vector` is supplied.
 String? get query;/// BYO query vector. Length must equal the collection's.
/// `embedding_dim`. Forbidden when `mode = full_text`.
@JsonKey(name: 'query_vector') List<double>? get queryVector;/// Three-state rerank: absent (collection default) | null.
/// (disable) | present (override). The OpenAPI schema documents.
/// this as `Option<RerankerSpec>` — callers control the third.
/// state by simply omitting the field.
 RerankerSpec? get rerank;/// Number of top results to return. `1..=200`, default 10.
@JsonKey(name: 'top_k') int? get topK;
/// Create a copy of RetrieveRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RetrieveRequestCopyWith<RetrieveRequest> get copyWith => _$RetrieveRequestCopyWithImpl<RetrieveRequest>(this as RetrieveRequest, _$identity);

  /// Serializes this RetrieveRequest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RetrieveRequest&&(identical(other.candidateMultiplier, candidateMultiplier) || other.candidateMultiplier == candidateMultiplier)&&const DeepCollectionEquality().equals(other.filter, filter)&&(identical(other.groupByDocument, groupByDocument) || other.groupByDocument == groupByDocument)&&(identical(other.include, include) || other.include == include)&&(identical(other.mode, mode) || other.mode == mode)&&(identical(other.query, query) || other.query == query)&&const DeepCollectionEquality().equals(other.queryVector, queryVector)&&(identical(other.rerank, rerank) || other.rerank == rerank)&&(identical(other.topK, topK) || other.topK == topK));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,candidateMultiplier,const DeepCollectionEquality().hash(filter),groupByDocument,include,mode,query,const DeepCollectionEquality().hash(queryVector),rerank,topK);

@override
String toString() {
  return 'RetrieveRequest(candidateMultiplier: $candidateMultiplier, filter: $filter, groupByDocument: $groupByDocument, include: $include, mode: $mode, query: $query, queryVector: $queryVector, rerank: $rerank, topK: $topK)';
}


}

/// @nodoc
abstract mixin class $RetrieveRequestCopyWith<$Res>  {
  factory $RetrieveRequestCopyWith(RetrieveRequest value, $Res Function(RetrieveRequest) _then) = _$RetrieveRequestCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'candidate_multiplier') int? candidateMultiplier, dynamic filter,@JsonKey(name: 'group_by_document') bool? groupByDocument, IncludeMask? include, RetrieveMode? mode, String? query,@JsonKey(name: 'query_vector') List<double>? queryVector, RerankerSpec? rerank,@JsonKey(name: 'top_k') int? topK
});


$IncludeMaskCopyWith<$Res>? get include;$RerankerSpecCopyWith<$Res>? get rerank;

}
/// @nodoc
class _$RetrieveRequestCopyWithImpl<$Res>
    implements $RetrieveRequestCopyWith<$Res> {
  _$RetrieveRequestCopyWithImpl(this._self, this._then);

  final RetrieveRequest _self;
  final $Res Function(RetrieveRequest) _then;

/// Create a copy of RetrieveRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? candidateMultiplier = freezed,Object? filter = freezed,Object? groupByDocument = freezed,Object? include = freezed,Object? mode = freezed,Object? query = freezed,Object? queryVector = freezed,Object? rerank = freezed,Object? topK = freezed,}) {
  return _then(_self.copyWith(
candidateMultiplier: freezed == candidateMultiplier ? _self.candidateMultiplier : candidateMultiplier // ignore: cast_nullable_to_non_nullable
as int?,filter: freezed == filter ? _self.filter : filter // ignore: cast_nullable_to_non_nullable
as dynamic,groupByDocument: freezed == groupByDocument ? _self.groupByDocument : groupByDocument // ignore: cast_nullable_to_non_nullable
as bool?,include: freezed == include ? _self.include : include // ignore: cast_nullable_to_non_nullable
as IncludeMask?,mode: freezed == mode ? _self.mode : mode // ignore: cast_nullable_to_non_nullable
as RetrieveMode?,query: freezed == query ? _self.query : query // ignore: cast_nullable_to_non_nullable
as String?,queryVector: freezed == queryVector ? _self.queryVector : queryVector // ignore: cast_nullable_to_non_nullable
as List<double>?,rerank: freezed == rerank ? _self.rerank : rerank // ignore: cast_nullable_to_non_nullable
as RerankerSpec?,topK: freezed == topK ? _self.topK : topK // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}
/// Create a copy of RetrieveRequest
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$IncludeMaskCopyWith<$Res>? get include {
    if (_self.include == null) {
    return null;
  }

  return $IncludeMaskCopyWith<$Res>(_self.include!, (value) {
    return _then(_self.copyWith(include: value));
  });
}/// Create a copy of RetrieveRequest
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RerankerSpecCopyWith<$Res>? get rerank {
    if (_self.rerank == null) {
    return null;
  }

  return $RerankerSpecCopyWith<$Res>(_self.rerank!, (value) {
    return _then(_self.copyWith(rerank: value));
  });
}
}


/// Adds pattern-matching-related methods to [RetrieveRequest].
extension RetrieveRequestPatterns on RetrieveRequest {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RetrieveRequest value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RetrieveRequest() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RetrieveRequest value)  $default,){
final _that = this;
switch (_that) {
case _RetrieveRequest():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RetrieveRequest value)?  $default,){
final _that = this;
switch (_that) {
case _RetrieveRequest() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'candidate_multiplier')  int? candidateMultiplier,  dynamic filter, @JsonKey(name: 'group_by_document')  bool? groupByDocument,  IncludeMask? include,  RetrieveMode? mode,  String? query, @JsonKey(name: 'query_vector')  List<double>? queryVector,  RerankerSpec? rerank, @JsonKey(name: 'top_k')  int? topK)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RetrieveRequest() when $default != null:
return $default(_that.candidateMultiplier,_that.filter,_that.groupByDocument,_that.include,_that.mode,_that.query,_that.queryVector,_that.rerank,_that.topK);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'candidate_multiplier')  int? candidateMultiplier,  dynamic filter, @JsonKey(name: 'group_by_document')  bool? groupByDocument,  IncludeMask? include,  RetrieveMode? mode,  String? query, @JsonKey(name: 'query_vector')  List<double>? queryVector,  RerankerSpec? rerank, @JsonKey(name: 'top_k')  int? topK)  $default,) {final _that = this;
switch (_that) {
case _RetrieveRequest():
return $default(_that.candidateMultiplier,_that.filter,_that.groupByDocument,_that.include,_that.mode,_that.query,_that.queryVector,_that.rerank,_that.topK);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'candidate_multiplier')  int? candidateMultiplier,  dynamic filter, @JsonKey(name: 'group_by_document')  bool? groupByDocument,  IncludeMask? include,  RetrieveMode? mode,  String? query, @JsonKey(name: 'query_vector')  List<double>? queryVector,  RerankerSpec? rerank, @JsonKey(name: 'top_k')  int? topK)?  $default,) {final _that = this;
switch (_that) {
case _RetrieveRequest() when $default != null:
return $default(_that.candidateMultiplier,_that.filter,_that.groupByDocument,_that.include,_that.mode,_that.query,_that.queryVector,_that.rerank,_that.topK);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _RetrieveRequest implements RetrieveRequest {
  const _RetrieveRequest({@JsonKey(name: 'candidate_multiplier') this.candidateMultiplier, this.filter, @JsonKey(name: 'group_by_document') this.groupByDocument, this.include, this.mode, this.query, @JsonKey(name: 'query_vector') final  List<double>? queryVector, this.rerank, @JsonKey(name: 'top_k') this.topK}): _queryVector = queryVector;
  factory _RetrieveRequest.fromJson(Map<String, dynamic> json) => _$RetrieveRequestFromJson(json);

/// 1..=20, default 4. Ignored when rerank is inactive. The store.
/// pulls `top_k * candidate_multiplier` candidates from the.
/// primary stage so the reranker has more to choose from.
@override@JsonKey(name: 'candidate_multiplier') final  int? candidateMultiplier;
/// Filter expression (deserialized by the vectorstore Filter IR).
@override final  dynamic filter;
/// Collapse to one chunk per document.
@override@JsonKey(name: 'group_by_document') final  bool? groupByDocument;
/// Optional response field mask.
@override final  IncludeMask? include;
/// Retrieve mode. Defaults to `hybrid`.
@override final  RetrieveMode? mode;
/// Text query. Required for full_text and hybrid modes; optional.
/// for vector mode when `query_vector` is supplied.
@override final  String? query;
/// BYO query vector. Length must equal the collection's.
/// `embedding_dim`. Forbidden when `mode = full_text`.
 final  List<double>? _queryVector;
/// BYO query vector. Length must equal the collection's.
/// `embedding_dim`. Forbidden when `mode = full_text`.
@override@JsonKey(name: 'query_vector') List<double>? get queryVector {
  final value = _queryVector;
  if (value == null) return null;
  if (_queryVector is EqualUnmodifiableListView) return _queryVector;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

/// Three-state rerank: absent (collection default) | null.
/// (disable) | present (override). The OpenAPI schema documents.
/// this as `Option<RerankerSpec>` — callers control the third.
/// state by simply omitting the field.
@override final  RerankerSpec? rerank;
/// Number of top results to return. `1..=200`, default 10.
@override@JsonKey(name: 'top_k') final  int? topK;

/// Create a copy of RetrieveRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RetrieveRequestCopyWith<_RetrieveRequest> get copyWith => __$RetrieveRequestCopyWithImpl<_RetrieveRequest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RetrieveRequestToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RetrieveRequest&&(identical(other.candidateMultiplier, candidateMultiplier) || other.candidateMultiplier == candidateMultiplier)&&const DeepCollectionEquality().equals(other.filter, filter)&&(identical(other.groupByDocument, groupByDocument) || other.groupByDocument == groupByDocument)&&(identical(other.include, include) || other.include == include)&&(identical(other.mode, mode) || other.mode == mode)&&(identical(other.query, query) || other.query == query)&&const DeepCollectionEquality().equals(other._queryVector, _queryVector)&&(identical(other.rerank, rerank) || other.rerank == rerank)&&(identical(other.topK, topK) || other.topK == topK));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,candidateMultiplier,const DeepCollectionEquality().hash(filter),groupByDocument,include,mode,query,const DeepCollectionEquality().hash(_queryVector),rerank,topK);

@override
String toString() {
  return 'RetrieveRequest(candidateMultiplier: $candidateMultiplier, filter: $filter, groupByDocument: $groupByDocument, include: $include, mode: $mode, query: $query, queryVector: $queryVector, rerank: $rerank, topK: $topK)';
}


}

/// @nodoc
abstract mixin class _$RetrieveRequestCopyWith<$Res> implements $RetrieveRequestCopyWith<$Res> {
  factory _$RetrieveRequestCopyWith(_RetrieveRequest value, $Res Function(_RetrieveRequest) _then) = __$RetrieveRequestCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'candidate_multiplier') int? candidateMultiplier, dynamic filter,@JsonKey(name: 'group_by_document') bool? groupByDocument, IncludeMask? include, RetrieveMode? mode, String? query,@JsonKey(name: 'query_vector') List<double>? queryVector, RerankerSpec? rerank,@JsonKey(name: 'top_k') int? topK
});


@override $IncludeMaskCopyWith<$Res>? get include;@override $RerankerSpecCopyWith<$Res>? get rerank;

}
/// @nodoc
class __$RetrieveRequestCopyWithImpl<$Res>
    implements _$RetrieveRequestCopyWith<$Res> {
  __$RetrieveRequestCopyWithImpl(this._self, this._then);

  final _RetrieveRequest _self;
  final $Res Function(_RetrieveRequest) _then;

/// Create a copy of RetrieveRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? candidateMultiplier = freezed,Object? filter = freezed,Object? groupByDocument = freezed,Object? include = freezed,Object? mode = freezed,Object? query = freezed,Object? queryVector = freezed,Object? rerank = freezed,Object? topK = freezed,}) {
  return _then(_RetrieveRequest(
candidateMultiplier: freezed == candidateMultiplier ? _self.candidateMultiplier : candidateMultiplier // ignore: cast_nullable_to_non_nullable
as int?,filter: freezed == filter ? _self.filter : filter // ignore: cast_nullable_to_non_nullable
as dynamic,groupByDocument: freezed == groupByDocument ? _self.groupByDocument : groupByDocument // ignore: cast_nullable_to_non_nullable
as bool?,include: freezed == include ? _self.include : include // ignore: cast_nullable_to_non_nullable
as IncludeMask?,mode: freezed == mode ? _self.mode : mode // ignore: cast_nullable_to_non_nullable
as RetrieveMode?,query: freezed == query ? _self.query : query // ignore: cast_nullable_to_non_nullable
as String?,queryVector: freezed == queryVector ? _self._queryVector : queryVector // ignore: cast_nullable_to_non_nullable
as List<double>?,rerank: freezed == rerank ? _self.rerank : rerank // ignore: cast_nullable_to_non_nullable
as RerankerSpec?,topK: freezed == topK ? _self.topK : topK // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

/// Create a copy of RetrieveRequest
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$IncludeMaskCopyWith<$Res>? get include {
    if (_self.include == null) {
    return null;
  }

  return $IncludeMaskCopyWith<$Res>(_self.include!, (value) {
    return _then(_self.copyWith(include: value));
  });
}/// Create a copy of RetrieveRequest
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RerankerSpecCopyWith<$Res>? get rerank {
    if (_self.rerank == null) {
    return null;
  }

  return $RerankerSpecCopyWith<$Res>(_self.rerank!, (value) {
    return _then(_self.copyWith(rerank: value));
  });
}
}

// dart format on
