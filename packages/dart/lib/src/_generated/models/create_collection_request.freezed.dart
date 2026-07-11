// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_collection_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CreateCollectionRequest {

/// Embedding dimension (e.g., 384 for mxbai-embed-large-v1)
@JsonKey(name: 'embedding_dim') int get embeddingDim;/// Collection name (unique per project)
 String get name;/// Per-collection text chunking configuration.
///
/// Omit any field to inherit the ingest pipeline's built-in default.
/// (max 1000 characters, 200-character overlap, text chunker).
@JsonKey(name: 'chunking_config') CollectionChunkingConfig? get chunkingConfig;/// Distance metric for similarity search ("cosine", "l2", "inner_product")
@JsonKey(name: 'distance_metric') String? get distanceMetric;/// Embedding source for the collection.
///
/// Omit to use the deployment-wide default (usually "managed_local").
/// When provided, overrides the deployment default.
@JsonKey(name: 'embedding_source') String? get embeddingSource;/// Vector index method ("diskann" or "hnsw").
///
/// Omit to inherit the deployment-wide default.
/// (`XBERG_VECTORSTORE_DEFAULT_INDEX_METHOD` env var, Helm value.
/// `vectorstore.defaultIndexMethod`). The API layer is responsible for.
/// filling the default before persisting the collection.
@JsonKey(name: 'index_method') String? get indexMethod;/// Confidence threshold (0.0–1.0) for classify_text. Default 0.5 when.
/// None and label_vocabulary is Some.
@JsonKey(name: 'label_classifier_threshold') double? get labelClassifierThreshold;/// Labels vocabulary for xberg's classify_text. When None, auto-.
/// classification is disabled and labels remain pass-through-only.
/// Length cap: 100 strings; each up to 64 chars.
@JsonKey(name: 'label_vocabulary') List<String>? get labelVocabulary;/// Maximum documents quota for this collection
@JsonKey(name: 'quota_max_documents') int? get quotaMaxDocuments;/// Default reranker spec for retrieve operations on this collection.
///
/// When present, this reranker is used as the default unless the.
/// retrieve request overrides it. Can be a Preset (ONNX cross-encoder).
/// or Llm (platform-managed LLM).
@JsonKey(name: 'rerank_default') RerankerSpec? get rerankDefault;
/// Create a copy of CreateCollectionRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreateCollectionRequestCopyWith<CreateCollectionRequest> get copyWith => _$CreateCollectionRequestCopyWithImpl<CreateCollectionRequest>(this as CreateCollectionRequest, _$identity);

  /// Serializes this CreateCollectionRequest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateCollectionRequest&&(identical(other.embeddingDim, embeddingDim) || other.embeddingDim == embeddingDim)&&(identical(other.name, name) || other.name == name)&&(identical(other.chunkingConfig, chunkingConfig) || other.chunkingConfig == chunkingConfig)&&(identical(other.distanceMetric, distanceMetric) || other.distanceMetric == distanceMetric)&&(identical(other.embeddingSource, embeddingSource) || other.embeddingSource == embeddingSource)&&(identical(other.indexMethod, indexMethod) || other.indexMethod == indexMethod)&&(identical(other.labelClassifierThreshold, labelClassifierThreshold) || other.labelClassifierThreshold == labelClassifierThreshold)&&const DeepCollectionEquality().equals(other.labelVocabulary, labelVocabulary)&&(identical(other.quotaMaxDocuments, quotaMaxDocuments) || other.quotaMaxDocuments == quotaMaxDocuments)&&(identical(other.rerankDefault, rerankDefault) || other.rerankDefault == rerankDefault));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,embeddingDim,name,chunkingConfig,distanceMetric,embeddingSource,indexMethod,labelClassifierThreshold,const DeepCollectionEquality().hash(labelVocabulary),quotaMaxDocuments,rerankDefault);

@override
String toString() {
  return 'CreateCollectionRequest(embeddingDim: $embeddingDim, name: $name, chunkingConfig: $chunkingConfig, distanceMetric: $distanceMetric, embeddingSource: $embeddingSource, indexMethod: $indexMethod, labelClassifierThreshold: $labelClassifierThreshold, labelVocabulary: $labelVocabulary, quotaMaxDocuments: $quotaMaxDocuments, rerankDefault: $rerankDefault)';
}


}

/// @nodoc
abstract mixin class $CreateCollectionRequestCopyWith<$Res>  {
  factory $CreateCollectionRequestCopyWith(CreateCollectionRequest value, $Res Function(CreateCollectionRequest) _then) = _$CreateCollectionRequestCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'embedding_dim') int embeddingDim, String name,@JsonKey(name: 'chunking_config') CollectionChunkingConfig? chunkingConfig,@JsonKey(name: 'distance_metric') String? distanceMetric,@JsonKey(name: 'embedding_source') String? embeddingSource,@JsonKey(name: 'index_method') String? indexMethod,@JsonKey(name: 'label_classifier_threshold') double? labelClassifierThreshold,@JsonKey(name: 'label_vocabulary') List<String>? labelVocabulary,@JsonKey(name: 'quota_max_documents') int? quotaMaxDocuments,@JsonKey(name: 'rerank_default') RerankerSpec? rerankDefault
});


$CollectionChunkingConfigCopyWith<$Res>? get chunkingConfig;$RerankerSpecCopyWith<$Res>? get rerankDefault;

}
/// @nodoc
class _$CreateCollectionRequestCopyWithImpl<$Res>
    implements $CreateCollectionRequestCopyWith<$Res> {
  _$CreateCollectionRequestCopyWithImpl(this._self, this._then);

  final CreateCollectionRequest _self;
  final $Res Function(CreateCollectionRequest) _then;

/// Create a copy of CreateCollectionRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? embeddingDim = null,Object? name = null,Object? chunkingConfig = freezed,Object? distanceMetric = freezed,Object? embeddingSource = freezed,Object? indexMethod = freezed,Object? labelClassifierThreshold = freezed,Object? labelVocabulary = freezed,Object? quotaMaxDocuments = freezed,Object? rerankDefault = freezed,}) {
  return _then(_self.copyWith(
embeddingDim: null == embeddingDim ? _self.embeddingDim : embeddingDim // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,chunkingConfig: freezed == chunkingConfig ? _self.chunkingConfig : chunkingConfig // ignore: cast_nullable_to_non_nullable
as CollectionChunkingConfig?,distanceMetric: freezed == distanceMetric ? _self.distanceMetric : distanceMetric // ignore: cast_nullable_to_non_nullable
as String?,embeddingSource: freezed == embeddingSource ? _self.embeddingSource : embeddingSource // ignore: cast_nullable_to_non_nullable
as String?,indexMethod: freezed == indexMethod ? _self.indexMethod : indexMethod // ignore: cast_nullable_to_non_nullable
as String?,labelClassifierThreshold: freezed == labelClassifierThreshold ? _self.labelClassifierThreshold : labelClassifierThreshold // ignore: cast_nullable_to_non_nullable
as double?,labelVocabulary: freezed == labelVocabulary ? _self.labelVocabulary : labelVocabulary // ignore: cast_nullable_to_non_nullable
as List<String>?,quotaMaxDocuments: freezed == quotaMaxDocuments ? _self.quotaMaxDocuments : quotaMaxDocuments // ignore: cast_nullable_to_non_nullable
as int?,rerankDefault: freezed == rerankDefault ? _self.rerankDefault : rerankDefault // ignore: cast_nullable_to_non_nullable
as RerankerSpec?,
  ));
}
/// Create a copy of CreateCollectionRequest
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
}/// Create a copy of CreateCollectionRequest
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


/// Adds pattern-matching-related methods to [CreateCollectionRequest].
extension CreateCollectionRequestPatterns on CreateCollectionRequest {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CreateCollectionRequest value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CreateCollectionRequest() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CreateCollectionRequest value)  $default,){
final _that = this;
switch (_that) {
case _CreateCollectionRequest():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CreateCollectionRequest value)?  $default,){
final _that = this;
switch (_that) {
case _CreateCollectionRequest() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'embedding_dim')  int embeddingDim,  String name, @JsonKey(name: 'chunking_config')  CollectionChunkingConfig? chunkingConfig, @JsonKey(name: 'distance_metric')  String? distanceMetric, @JsonKey(name: 'embedding_source')  String? embeddingSource, @JsonKey(name: 'index_method')  String? indexMethod, @JsonKey(name: 'label_classifier_threshold')  double? labelClassifierThreshold, @JsonKey(name: 'label_vocabulary')  List<String>? labelVocabulary, @JsonKey(name: 'quota_max_documents')  int? quotaMaxDocuments, @JsonKey(name: 'rerank_default')  RerankerSpec? rerankDefault)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CreateCollectionRequest() when $default != null:
return $default(_that.embeddingDim,_that.name,_that.chunkingConfig,_that.distanceMetric,_that.embeddingSource,_that.indexMethod,_that.labelClassifierThreshold,_that.labelVocabulary,_that.quotaMaxDocuments,_that.rerankDefault);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'embedding_dim')  int embeddingDim,  String name, @JsonKey(name: 'chunking_config')  CollectionChunkingConfig? chunkingConfig, @JsonKey(name: 'distance_metric')  String? distanceMetric, @JsonKey(name: 'embedding_source')  String? embeddingSource, @JsonKey(name: 'index_method')  String? indexMethod, @JsonKey(name: 'label_classifier_threshold')  double? labelClassifierThreshold, @JsonKey(name: 'label_vocabulary')  List<String>? labelVocabulary, @JsonKey(name: 'quota_max_documents')  int? quotaMaxDocuments, @JsonKey(name: 'rerank_default')  RerankerSpec? rerankDefault)  $default,) {final _that = this;
switch (_that) {
case _CreateCollectionRequest():
return $default(_that.embeddingDim,_that.name,_that.chunkingConfig,_that.distanceMetric,_that.embeddingSource,_that.indexMethod,_that.labelClassifierThreshold,_that.labelVocabulary,_that.quotaMaxDocuments,_that.rerankDefault);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'embedding_dim')  int embeddingDim,  String name, @JsonKey(name: 'chunking_config')  CollectionChunkingConfig? chunkingConfig, @JsonKey(name: 'distance_metric')  String? distanceMetric, @JsonKey(name: 'embedding_source')  String? embeddingSource, @JsonKey(name: 'index_method')  String? indexMethod, @JsonKey(name: 'label_classifier_threshold')  double? labelClassifierThreshold, @JsonKey(name: 'label_vocabulary')  List<String>? labelVocabulary, @JsonKey(name: 'quota_max_documents')  int? quotaMaxDocuments, @JsonKey(name: 'rerank_default')  RerankerSpec? rerankDefault)?  $default,) {final _that = this;
switch (_that) {
case _CreateCollectionRequest() when $default != null:
return $default(_that.embeddingDim,_that.name,_that.chunkingConfig,_that.distanceMetric,_that.embeddingSource,_that.indexMethod,_that.labelClassifierThreshold,_that.labelVocabulary,_that.quotaMaxDocuments,_that.rerankDefault);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CreateCollectionRequest implements CreateCollectionRequest {
  const _CreateCollectionRequest({@JsonKey(name: 'embedding_dim') required this.embeddingDim, required this.name, @JsonKey(name: 'chunking_config') this.chunkingConfig, @JsonKey(name: 'distance_metric') this.distanceMetric, @JsonKey(name: 'embedding_source') this.embeddingSource, @JsonKey(name: 'index_method') this.indexMethod, @JsonKey(name: 'label_classifier_threshold') this.labelClassifierThreshold, @JsonKey(name: 'label_vocabulary') final  List<String>? labelVocabulary, @JsonKey(name: 'quota_max_documents') this.quotaMaxDocuments, @JsonKey(name: 'rerank_default') this.rerankDefault}): _labelVocabulary = labelVocabulary;
  factory _CreateCollectionRequest.fromJson(Map<String, dynamic> json) => _$CreateCollectionRequestFromJson(json);

/// Embedding dimension (e.g., 384 for mxbai-embed-large-v1)
@override@JsonKey(name: 'embedding_dim') final  int embeddingDim;
/// Collection name (unique per project)
@override final  String name;
/// Per-collection text chunking configuration.
///
/// Omit any field to inherit the ingest pipeline's built-in default.
/// (max 1000 characters, 200-character overlap, text chunker).
@override@JsonKey(name: 'chunking_config') final  CollectionChunkingConfig? chunkingConfig;
/// Distance metric for similarity search ("cosine", "l2", "inner_product")
@override@JsonKey(name: 'distance_metric') final  String? distanceMetric;
/// Embedding source for the collection.
///
/// Omit to use the deployment-wide default (usually "managed_local").
/// When provided, overrides the deployment default.
@override@JsonKey(name: 'embedding_source') final  String? embeddingSource;
/// Vector index method ("diskann" or "hnsw").
///
/// Omit to inherit the deployment-wide default.
/// (`XBERG_VECTORSTORE_DEFAULT_INDEX_METHOD` env var, Helm value.
/// `vectorstore.defaultIndexMethod`). The API layer is responsible for.
/// filling the default before persisting the collection.
@override@JsonKey(name: 'index_method') final  String? indexMethod;
/// Confidence threshold (0.0–1.0) for classify_text. Default 0.5 when.
/// None and label_vocabulary is Some.
@override@JsonKey(name: 'label_classifier_threshold') final  double? labelClassifierThreshold;
/// Labels vocabulary for xberg's classify_text. When None, auto-.
/// classification is disabled and labels remain pass-through-only.
/// Length cap: 100 strings; each up to 64 chars.
 final  List<String>? _labelVocabulary;
/// Labels vocabulary for xberg's classify_text. When None, auto-.
/// classification is disabled and labels remain pass-through-only.
/// Length cap: 100 strings; each up to 64 chars.
@override@JsonKey(name: 'label_vocabulary') List<String>? get labelVocabulary {
  final value = _labelVocabulary;
  if (value == null) return null;
  if (_labelVocabulary is EqualUnmodifiableListView) return _labelVocabulary;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

/// Maximum documents quota for this collection
@override@JsonKey(name: 'quota_max_documents') final  int? quotaMaxDocuments;
/// Default reranker spec for retrieve operations on this collection.
///
/// When present, this reranker is used as the default unless the.
/// retrieve request overrides it. Can be a Preset (ONNX cross-encoder).
/// or Llm (platform-managed LLM).
@override@JsonKey(name: 'rerank_default') final  RerankerSpec? rerankDefault;

/// Create a copy of CreateCollectionRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreateCollectionRequestCopyWith<_CreateCollectionRequest> get copyWith => __$CreateCollectionRequestCopyWithImpl<_CreateCollectionRequest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CreateCollectionRequestToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreateCollectionRequest&&(identical(other.embeddingDim, embeddingDim) || other.embeddingDim == embeddingDim)&&(identical(other.name, name) || other.name == name)&&(identical(other.chunkingConfig, chunkingConfig) || other.chunkingConfig == chunkingConfig)&&(identical(other.distanceMetric, distanceMetric) || other.distanceMetric == distanceMetric)&&(identical(other.embeddingSource, embeddingSource) || other.embeddingSource == embeddingSource)&&(identical(other.indexMethod, indexMethod) || other.indexMethod == indexMethod)&&(identical(other.labelClassifierThreshold, labelClassifierThreshold) || other.labelClassifierThreshold == labelClassifierThreshold)&&const DeepCollectionEquality().equals(other._labelVocabulary, _labelVocabulary)&&(identical(other.quotaMaxDocuments, quotaMaxDocuments) || other.quotaMaxDocuments == quotaMaxDocuments)&&(identical(other.rerankDefault, rerankDefault) || other.rerankDefault == rerankDefault));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,embeddingDim,name,chunkingConfig,distanceMetric,embeddingSource,indexMethod,labelClassifierThreshold,const DeepCollectionEquality().hash(_labelVocabulary),quotaMaxDocuments,rerankDefault);

@override
String toString() {
  return 'CreateCollectionRequest(embeddingDim: $embeddingDim, name: $name, chunkingConfig: $chunkingConfig, distanceMetric: $distanceMetric, embeddingSource: $embeddingSource, indexMethod: $indexMethod, labelClassifierThreshold: $labelClassifierThreshold, labelVocabulary: $labelVocabulary, quotaMaxDocuments: $quotaMaxDocuments, rerankDefault: $rerankDefault)';
}


}

/// @nodoc
abstract mixin class _$CreateCollectionRequestCopyWith<$Res> implements $CreateCollectionRequestCopyWith<$Res> {
  factory _$CreateCollectionRequestCopyWith(_CreateCollectionRequest value, $Res Function(_CreateCollectionRequest) _then) = __$CreateCollectionRequestCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'embedding_dim') int embeddingDim, String name,@JsonKey(name: 'chunking_config') CollectionChunkingConfig? chunkingConfig,@JsonKey(name: 'distance_metric') String? distanceMetric,@JsonKey(name: 'embedding_source') String? embeddingSource,@JsonKey(name: 'index_method') String? indexMethod,@JsonKey(name: 'label_classifier_threshold') double? labelClassifierThreshold,@JsonKey(name: 'label_vocabulary') List<String>? labelVocabulary,@JsonKey(name: 'quota_max_documents') int? quotaMaxDocuments,@JsonKey(name: 'rerank_default') RerankerSpec? rerankDefault
});


@override $CollectionChunkingConfigCopyWith<$Res>? get chunkingConfig;@override $RerankerSpecCopyWith<$Res>? get rerankDefault;

}
/// @nodoc
class __$CreateCollectionRequestCopyWithImpl<$Res>
    implements _$CreateCollectionRequestCopyWith<$Res> {
  __$CreateCollectionRequestCopyWithImpl(this._self, this._then);

  final _CreateCollectionRequest _self;
  final $Res Function(_CreateCollectionRequest) _then;

/// Create a copy of CreateCollectionRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? embeddingDim = null,Object? name = null,Object? chunkingConfig = freezed,Object? distanceMetric = freezed,Object? embeddingSource = freezed,Object? indexMethod = freezed,Object? labelClassifierThreshold = freezed,Object? labelVocabulary = freezed,Object? quotaMaxDocuments = freezed,Object? rerankDefault = freezed,}) {
  return _then(_CreateCollectionRequest(
embeddingDim: null == embeddingDim ? _self.embeddingDim : embeddingDim // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,chunkingConfig: freezed == chunkingConfig ? _self.chunkingConfig : chunkingConfig // ignore: cast_nullable_to_non_nullable
as CollectionChunkingConfig?,distanceMetric: freezed == distanceMetric ? _self.distanceMetric : distanceMetric // ignore: cast_nullable_to_non_nullable
as String?,embeddingSource: freezed == embeddingSource ? _self.embeddingSource : embeddingSource // ignore: cast_nullable_to_non_nullable
as String?,indexMethod: freezed == indexMethod ? _self.indexMethod : indexMethod // ignore: cast_nullable_to_non_nullable
as String?,labelClassifierThreshold: freezed == labelClassifierThreshold ? _self.labelClassifierThreshold : labelClassifierThreshold // ignore: cast_nullable_to_non_nullable
as double?,labelVocabulary: freezed == labelVocabulary ? _self._labelVocabulary : labelVocabulary // ignore: cast_nullable_to_non_nullable
as List<String>?,quotaMaxDocuments: freezed == quotaMaxDocuments ? _self.quotaMaxDocuments : quotaMaxDocuments // ignore: cast_nullable_to_non_nullable
as int?,rerankDefault: freezed == rerankDefault ? _self.rerankDefault : rerankDefault // ignore: cast_nullable_to_non_nullable
as RerankerSpec?,
  ));
}

/// Create a copy of CreateCollectionRequest
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
}/// Create a copy of CreateCollectionRequest
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
