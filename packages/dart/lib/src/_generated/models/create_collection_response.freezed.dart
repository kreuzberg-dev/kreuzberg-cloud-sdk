// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_collection_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CreateCollectionResponse {

/// Distance metric
@JsonKey(name: 'distance_metric') String get distanceMetric;/// Embedding dimension
@JsonKey(name: 'embedding_dim') int get embeddingDim;/// Collection unique identifier
 String get id;/// Vector index method
@JsonKey(name: 'index_method') String get indexMethod;/// Collection name
 String get name;/// Per-collection text chunking configuration
@JsonKey(name: 'chunking_config') CollectionChunkingConfig? get chunkingConfig;/// Embedding source for this collection
@JsonKey(name: 'embedding_source') String? get embeddingSource;/// Maximum documents quota
@JsonKey(name: 'quota_max_documents') int? get quotaMaxDocuments;/// Default reranker spec for retrieve operations on this collection
@JsonKey(name: 'rerank_default') RerankerSpec? get rerankDefault;
/// Create a copy of CreateCollectionResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreateCollectionResponseCopyWith<CreateCollectionResponse> get copyWith => _$CreateCollectionResponseCopyWithImpl<CreateCollectionResponse>(this as CreateCollectionResponse, _$identity);

  /// Serializes this CreateCollectionResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateCollectionResponse&&(identical(other.distanceMetric, distanceMetric) || other.distanceMetric == distanceMetric)&&(identical(other.embeddingDim, embeddingDim) || other.embeddingDim == embeddingDim)&&(identical(other.id, id) || other.id == id)&&(identical(other.indexMethod, indexMethod) || other.indexMethod == indexMethod)&&(identical(other.name, name) || other.name == name)&&(identical(other.chunkingConfig, chunkingConfig) || other.chunkingConfig == chunkingConfig)&&(identical(other.embeddingSource, embeddingSource) || other.embeddingSource == embeddingSource)&&(identical(other.quotaMaxDocuments, quotaMaxDocuments) || other.quotaMaxDocuments == quotaMaxDocuments)&&(identical(other.rerankDefault, rerankDefault) || other.rerankDefault == rerankDefault));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,distanceMetric,embeddingDim,id,indexMethod,name,chunkingConfig,embeddingSource,quotaMaxDocuments,rerankDefault);

@override
String toString() {
  return 'CreateCollectionResponse(distanceMetric: $distanceMetric, embeddingDim: $embeddingDim, id: $id, indexMethod: $indexMethod, name: $name, chunkingConfig: $chunkingConfig, embeddingSource: $embeddingSource, quotaMaxDocuments: $quotaMaxDocuments, rerankDefault: $rerankDefault)';
}


}

/// @nodoc
abstract mixin class $CreateCollectionResponseCopyWith<$Res>  {
  factory $CreateCollectionResponseCopyWith(CreateCollectionResponse value, $Res Function(CreateCollectionResponse) _then) = _$CreateCollectionResponseCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'distance_metric') String distanceMetric,@JsonKey(name: 'embedding_dim') int embeddingDim, String id,@JsonKey(name: 'index_method') String indexMethod, String name,@JsonKey(name: 'chunking_config') CollectionChunkingConfig? chunkingConfig,@JsonKey(name: 'embedding_source') String? embeddingSource,@JsonKey(name: 'quota_max_documents') int? quotaMaxDocuments,@JsonKey(name: 'rerank_default') RerankerSpec? rerankDefault
});


$CollectionChunkingConfigCopyWith<$Res>? get chunkingConfig;$RerankerSpecCopyWith<$Res>? get rerankDefault;

}
/// @nodoc
class _$CreateCollectionResponseCopyWithImpl<$Res>
    implements $CreateCollectionResponseCopyWith<$Res> {
  _$CreateCollectionResponseCopyWithImpl(this._self, this._then);

  final CreateCollectionResponse _self;
  final $Res Function(CreateCollectionResponse) _then;

/// Create a copy of CreateCollectionResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? distanceMetric = null,Object? embeddingDim = null,Object? id = null,Object? indexMethod = null,Object? name = null,Object? chunkingConfig = freezed,Object? embeddingSource = freezed,Object? quotaMaxDocuments = freezed,Object? rerankDefault = freezed,}) {
  return _then(_self.copyWith(
distanceMetric: null == distanceMetric ? _self.distanceMetric : distanceMetric // ignore: cast_nullable_to_non_nullable
as String,embeddingDim: null == embeddingDim ? _self.embeddingDim : embeddingDim // ignore: cast_nullable_to_non_nullable
as int,id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,indexMethod: null == indexMethod ? _self.indexMethod : indexMethod // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,chunkingConfig: freezed == chunkingConfig ? _self.chunkingConfig : chunkingConfig // ignore: cast_nullable_to_non_nullable
as CollectionChunkingConfig?,embeddingSource: freezed == embeddingSource ? _self.embeddingSource : embeddingSource // ignore: cast_nullable_to_non_nullable
as String?,quotaMaxDocuments: freezed == quotaMaxDocuments ? _self.quotaMaxDocuments : quotaMaxDocuments // ignore: cast_nullable_to_non_nullable
as int?,rerankDefault: freezed == rerankDefault ? _self.rerankDefault : rerankDefault // ignore: cast_nullable_to_non_nullable
as RerankerSpec?,
  ));
}
/// Create a copy of CreateCollectionResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CollectionChunkingConfigCopyWith<$Res>? get chunkingConfig {
    if (_self.chunkingConfig == null) {
    return null;
  }

  return $CollectionChunkingConfigCopyWith<$Res>(_self.chunkingConfig!, (value) {
    return _then(_self.copyWith(chunkingConfig: value));
  });
}/// Create a copy of CreateCollectionResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RerankerSpecCopyWith<$Res>? get rerankDefault {
    if (_self.rerankDefault == null) {
    return null;
  }

  return $RerankerSpecCopyWith<$Res>(_self.rerankDefault!, (value) {
    return _then(_self.copyWith(rerankDefault: value));
  });
}
}


/// Adds pattern-matching-related methods to [CreateCollectionResponse].
extension CreateCollectionResponsePatterns on CreateCollectionResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CreateCollectionResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CreateCollectionResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CreateCollectionResponse value)  $default,){
final _that = this;
switch (_that) {
case _CreateCollectionResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CreateCollectionResponse value)?  $default,){
final _that = this;
switch (_that) {
case _CreateCollectionResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'distance_metric')  String distanceMetric, @JsonKey(name: 'embedding_dim')  int embeddingDim,  String id, @JsonKey(name: 'index_method')  String indexMethod,  String name, @JsonKey(name: 'chunking_config')  CollectionChunkingConfig? chunkingConfig, @JsonKey(name: 'embedding_source')  String? embeddingSource, @JsonKey(name: 'quota_max_documents')  int? quotaMaxDocuments, @JsonKey(name: 'rerank_default')  RerankerSpec? rerankDefault)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CreateCollectionResponse() when $default != null:
return $default(_that.distanceMetric,_that.embeddingDim,_that.id,_that.indexMethod,_that.name,_that.chunkingConfig,_that.embeddingSource,_that.quotaMaxDocuments,_that.rerankDefault);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'distance_metric')  String distanceMetric, @JsonKey(name: 'embedding_dim')  int embeddingDim,  String id, @JsonKey(name: 'index_method')  String indexMethod,  String name, @JsonKey(name: 'chunking_config')  CollectionChunkingConfig? chunkingConfig, @JsonKey(name: 'embedding_source')  String? embeddingSource, @JsonKey(name: 'quota_max_documents')  int? quotaMaxDocuments, @JsonKey(name: 'rerank_default')  RerankerSpec? rerankDefault)  $default,) {final _that = this;
switch (_that) {
case _CreateCollectionResponse():
return $default(_that.distanceMetric,_that.embeddingDim,_that.id,_that.indexMethod,_that.name,_that.chunkingConfig,_that.embeddingSource,_that.quotaMaxDocuments,_that.rerankDefault);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'distance_metric')  String distanceMetric, @JsonKey(name: 'embedding_dim')  int embeddingDim,  String id, @JsonKey(name: 'index_method')  String indexMethod,  String name, @JsonKey(name: 'chunking_config')  CollectionChunkingConfig? chunkingConfig, @JsonKey(name: 'embedding_source')  String? embeddingSource, @JsonKey(name: 'quota_max_documents')  int? quotaMaxDocuments, @JsonKey(name: 'rerank_default')  RerankerSpec? rerankDefault)?  $default,) {final _that = this;
switch (_that) {
case _CreateCollectionResponse() when $default != null:
return $default(_that.distanceMetric,_that.embeddingDim,_that.id,_that.indexMethod,_that.name,_that.chunkingConfig,_that.embeddingSource,_that.quotaMaxDocuments,_that.rerankDefault);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CreateCollectionResponse implements CreateCollectionResponse {
  const _CreateCollectionResponse({@JsonKey(name: 'distance_metric') required this.distanceMetric, @JsonKey(name: 'embedding_dim') required this.embeddingDim, required this.id, @JsonKey(name: 'index_method') required this.indexMethod, required this.name, @JsonKey(name: 'chunking_config') this.chunkingConfig, @JsonKey(name: 'embedding_source') this.embeddingSource, @JsonKey(name: 'quota_max_documents') this.quotaMaxDocuments, @JsonKey(name: 'rerank_default') this.rerankDefault});
  factory _CreateCollectionResponse.fromJson(Map<String, dynamic> json) => _$CreateCollectionResponseFromJson(json);

/// Distance metric
@override@JsonKey(name: 'distance_metric') final  String distanceMetric;
/// Embedding dimension
@override@JsonKey(name: 'embedding_dim') final  int embeddingDim;
/// Collection unique identifier
@override final  String id;
/// Vector index method
@override@JsonKey(name: 'index_method') final  String indexMethod;
/// Collection name
@override final  String name;
/// Per-collection text chunking configuration
@override@JsonKey(name: 'chunking_config') final  CollectionChunkingConfig? chunkingConfig;
/// Embedding source for this collection
@override@JsonKey(name: 'embedding_source') final  String? embeddingSource;
/// Maximum documents quota
@override@JsonKey(name: 'quota_max_documents') final  int? quotaMaxDocuments;
/// Default reranker spec for retrieve operations on this collection
@override@JsonKey(name: 'rerank_default') final  RerankerSpec? rerankDefault;

/// Create a copy of CreateCollectionResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreateCollectionResponseCopyWith<_CreateCollectionResponse> get copyWith => __$CreateCollectionResponseCopyWithImpl<_CreateCollectionResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CreateCollectionResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreateCollectionResponse&&(identical(other.distanceMetric, distanceMetric) || other.distanceMetric == distanceMetric)&&(identical(other.embeddingDim, embeddingDim) || other.embeddingDim == embeddingDim)&&(identical(other.id, id) || other.id == id)&&(identical(other.indexMethod, indexMethod) || other.indexMethod == indexMethod)&&(identical(other.name, name) || other.name == name)&&(identical(other.chunkingConfig, chunkingConfig) || other.chunkingConfig == chunkingConfig)&&(identical(other.embeddingSource, embeddingSource) || other.embeddingSource == embeddingSource)&&(identical(other.quotaMaxDocuments, quotaMaxDocuments) || other.quotaMaxDocuments == quotaMaxDocuments)&&(identical(other.rerankDefault, rerankDefault) || other.rerankDefault == rerankDefault));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,distanceMetric,embeddingDim,id,indexMethod,name,chunkingConfig,embeddingSource,quotaMaxDocuments,rerankDefault);

@override
String toString() {
  return 'CreateCollectionResponse(distanceMetric: $distanceMetric, embeddingDim: $embeddingDim, id: $id, indexMethod: $indexMethod, name: $name, chunkingConfig: $chunkingConfig, embeddingSource: $embeddingSource, quotaMaxDocuments: $quotaMaxDocuments, rerankDefault: $rerankDefault)';
}


}

/// @nodoc
abstract mixin class _$CreateCollectionResponseCopyWith<$Res> implements $CreateCollectionResponseCopyWith<$Res> {
  factory _$CreateCollectionResponseCopyWith(_CreateCollectionResponse value, $Res Function(_CreateCollectionResponse) _then) = __$CreateCollectionResponseCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'distance_metric') String distanceMetric,@JsonKey(name: 'embedding_dim') int embeddingDim, String id,@JsonKey(name: 'index_method') String indexMethod, String name,@JsonKey(name: 'chunking_config') CollectionChunkingConfig? chunkingConfig,@JsonKey(name: 'embedding_source') String? embeddingSource,@JsonKey(name: 'quota_max_documents') int? quotaMaxDocuments,@JsonKey(name: 'rerank_default') RerankerSpec? rerankDefault
});


@override $CollectionChunkingConfigCopyWith<$Res>? get chunkingConfig;@override $RerankerSpecCopyWith<$Res>? get rerankDefault;

}
/// @nodoc
class __$CreateCollectionResponseCopyWithImpl<$Res>
    implements _$CreateCollectionResponseCopyWith<$Res> {
  __$CreateCollectionResponseCopyWithImpl(this._self, this._then);

  final _CreateCollectionResponse _self;
  final $Res Function(_CreateCollectionResponse) _then;

/// Create a copy of CreateCollectionResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? distanceMetric = null,Object? embeddingDim = null,Object? id = null,Object? indexMethod = null,Object? name = null,Object? chunkingConfig = freezed,Object? embeddingSource = freezed,Object? quotaMaxDocuments = freezed,Object? rerankDefault = freezed,}) {
  return _then(_CreateCollectionResponse(
distanceMetric: null == distanceMetric ? _self.distanceMetric : distanceMetric // ignore: cast_nullable_to_non_nullable
as String,embeddingDim: null == embeddingDim ? _self.embeddingDim : embeddingDim // ignore: cast_nullable_to_non_nullable
as int,id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,indexMethod: null == indexMethod ? _self.indexMethod : indexMethod // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,chunkingConfig: freezed == chunkingConfig ? _self.chunkingConfig : chunkingConfig // ignore: cast_nullable_to_non_nullable
as CollectionChunkingConfig?,embeddingSource: freezed == embeddingSource ? _self.embeddingSource : embeddingSource // ignore: cast_nullable_to_non_nullable
as String?,quotaMaxDocuments: freezed == quotaMaxDocuments ? _self.quotaMaxDocuments : quotaMaxDocuments // ignore: cast_nullable_to_non_nullable
as int?,rerankDefault: freezed == rerankDefault ? _self.rerankDefault : rerankDefault // ignore: cast_nullable_to_non_nullable
as RerankerSpec?,
  ));
}

/// Create a copy of CreateCollectionResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CollectionChunkingConfigCopyWith<$Res>? get chunkingConfig {
    if (_self.chunkingConfig == null) {
    return null;
  }

  return $CollectionChunkingConfigCopyWith<$Res>(_self.chunkingConfig!, (value) {
    return _then(_self.copyWith(chunkingConfig: value));
  });
}/// Create a copy of CreateCollectionResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RerankerSpecCopyWith<$Res>? get rerankDefault {
    if (_self.rerankDefault == null) {
    return null;
  }

  return $RerankerSpecCopyWith<$Res>(_self.rerankDefault!, (value) {
    return _then(_self.copyWith(rerankDefault: value));
  });
}
}

// dart format on
