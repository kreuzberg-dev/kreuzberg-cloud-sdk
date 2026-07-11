// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'code_chunk_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CodeChunkInfo {

/// Exclusive end byte offset of this chunk in the original source.
@JsonKey(name: 'byte_end') int get byteEnd;/// Inclusive start byte offset of this chunk in the original source.
@JsonKey(name: 'byte_start') int get byteStart;/// Hierarchical path of enclosing structural items (e.g. `["MyClass", "my_method"]`).
@JsonKey(name: 'context_path') List<String> get contextPath;/// Tree-sitter node kinds that appear at the top level of this chunk (e.g.
/// `"function_definition"`, `"class_definition"`).
@JsonKey(name: 'node_types') List<String> get nodeTypes;/// The raw source text of this chunk.
 String get text;
/// Create a copy of CodeChunkInfo
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CodeChunkInfoCopyWith<CodeChunkInfo> get copyWith => _$CodeChunkInfoCopyWithImpl<CodeChunkInfo>(this as CodeChunkInfo, _$identity);

  /// Serializes this CodeChunkInfo to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CodeChunkInfo&&(identical(other.byteEnd, byteEnd) || other.byteEnd == byteEnd)&&(identical(other.byteStart, byteStart) || other.byteStart == byteStart)&&const DeepCollectionEquality().equals(other.contextPath, contextPath)&&const DeepCollectionEquality().equals(other.nodeTypes, nodeTypes)&&(identical(other.text, text) || other.text == text));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,byteEnd,byteStart,const DeepCollectionEquality().hash(contextPath),const DeepCollectionEquality().hash(nodeTypes),text);

@override
String toString() {
  return 'CodeChunkInfo(byteEnd: $byteEnd, byteStart: $byteStart, contextPath: $contextPath, nodeTypes: $nodeTypes, text: $text)';
}


}

/// @nodoc
abstract mixin class $CodeChunkInfoCopyWith<$Res>  {
  factory $CodeChunkInfoCopyWith(CodeChunkInfo value, $Res Function(CodeChunkInfo) _then) = _$CodeChunkInfoCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'byte_end') int byteEnd,@JsonKey(name: 'byte_start') int byteStart,@JsonKey(name: 'context_path') List<String> contextPath,@JsonKey(name: 'node_types') List<String> nodeTypes, String text
});




}
/// @nodoc
class _$CodeChunkInfoCopyWithImpl<$Res>
    implements $CodeChunkInfoCopyWith<$Res> {
  _$CodeChunkInfoCopyWithImpl(this._self, this._then);

  final CodeChunkInfo _self;
  final $Res Function(CodeChunkInfo) _then;

/// Create a copy of CodeChunkInfo
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? byteEnd = null,Object? byteStart = null,Object? contextPath = null,Object? nodeTypes = null,Object? text = null,}) {
  return _then(_self.copyWith(
byteEnd: null == byteEnd ? _self.byteEnd : byteEnd // ignore: cast_nullable_to_non_nullable
as int,byteStart: null == byteStart ? _self.byteStart : byteStart // ignore: cast_nullable_to_non_nullable
as int,contextPath: null == contextPath ? _self.contextPath : contextPath // ignore: cast_nullable_to_non_nullable
as List<String>,nodeTypes: null == nodeTypes ? _self.nodeTypes : nodeTypes // ignore: cast_nullable_to_non_nullable
as List<String>,text: null == text ? _self.text : text // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [CodeChunkInfo].
extension CodeChunkInfoPatterns on CodeChunkInfo {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CodeChunkInfo value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CodeChunkInfo() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CodeChunkInfo value)  $default,){
final _that = this;
switch (_that) {
case _CodeChunkInfo():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CodeChunkInfo value)?  $default,){
final _that = this;
switch (_that) {
case _CodeChunkInfo() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'byte_end')  int byteEnd, @JsonKey(name: 'byte_start')  int byteStart, @JsonKey(name: 'context_path')  List<String> contextPath, @JsonKey(name: 'node_types')  List<String> nodeTypes,  String text)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CodeChunkInfo() when $default != null:
return $default(_that.byteEnd,_that.byteStart,_that.contextPath,_that.nodeTypes,_that.text);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'byte_end')  int byteEnd, @JsonKey(name: 'byte_start')  int byteStart, @JsonKey(name: 'context_path')  List<String> contextPath, @JsonKey(name: 'node_types')  List<String> nodeTypes,  String text)  $default,) {final _that = this;
switch (_that) {
case _CodeChunkInfo():
return $default(_that.byteEnd,_that.byteStart,_that.contextPath,_that.nodeTypes,_that.text);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'byte_end')  int byteEnd, @JsonKey(name: 'byte_start')  int byteStart, @JsonKey(name: 'context_path')  List<String> contextPath, @JsonKey(name: 'node_types')  List<String> nodeTypes,  String text)?  $default,) {final _that = this;
switch (_that) {
case _CodeChunkInfo() when $default != null:
return $default(_that.byteEnd,_that.byteStart,_that.contextPath,_that.nodeTypes,_that.text);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CodeChunkInfo implements CodeChunkInfo {
  const _CodeChunkInfo({@JsonKey(name: 'byte_end') required this.byteEnd, @JsonKey(name: 'byte_start') required this.byteStart, @JsonKey(name: 'context_path') required final  List<String> contextPath, @JsonKey(name: 'node_types') required final  List<String> nodeTypes, required this.text}): _contextPath = contextPath,_nodeTypes = nodeTypes;
  factory _CodeChunkInfo.fromJson(Map<String, dynamic> json) => _$CodeChunkInfoFromJson(json);

/// Exclusive end byte offset of this chunk in the original source.
@override@JsonKey(name: 'byte_end') final  int byteEnd;
/// Inclusive start byte offset of this chunk in the original source.
@override@JsonKey(name: 'byte_start') final  int byteStart;
/// Hierarchical path of enclosing structural items (e.g. `["MyClass", "my_method"]`).
 final  List<String> _contextPath;
/// Hierarchical path of enclosing structural items (e.g. `["MyClass", "my_method"]`).
@override@JsonKey(name: 'context_path') List<String> get contextPath {
  if (_contextPath is EqualUnmodifiableListView) return _contextPath;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_contextPath);
}

/// Tree-sitter node kinds that appear at the top level of this chunk (e.g.
/// `"function_definition"`, `"class_definition"`).
 final  List<String> _nodeTypes;
/// Tree-sitter node kinds that appear at the top level of this chunk (e.g.
/// `"function_definition"`, `"class_definition"`).
@override@JsonKey(name: 'node_types') List<String> get nodeTypes {
  if (_nodeTypes is EqualUnmodifiableListView) return _nodeTypes;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_nodeTypes);
}

/// The raw source text of this chunk.
@override final  String text;

/// Create a copy of CodeChunkInfo
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CodeChunkInfoCopyWith<_CodeChunkInfo> get copyWith => __$CodeChunkInfoCopyWithImpl<_CodeChunkInfo>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CodeChunkInfoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CodeChunkInfo&&(identical(other.byteEnd, byteEnd) || other.byteEnd == byteEnd)&&(identical(other.byteStart, byteStart) || other.byteStart == byteStart)&&const DeepCollectionEquality().equals(other._contextPath, _contextPath)&&const DeepCollectionEquality().equals(other._nodeTypes, _nodeTypes)&&(identical(other.text, text) || other.text == text));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,byteEnd,byteStart,const DeepCollectionEquality().hash(_contextPath),const DeepCollectionEquality().hash(_nodeTypes),text);

@override
String toString() {
  return 'CodeChunkInfo(byteEnd: $byteEnd, byteStart: $byteStart, contextPath: $contextPath, nodeTypes: $nodeTypes, text: $text)';
}


}

/// @nodoc
abstract mixin class _$CodeChunkInfoCopyWith<$Res> implements $CodeChunkInfoCopyWith<$Res> {
  factory _$CodeChunkInfoCopyWith(_CodeChunkInfo value, $Res Function(_CodeChunkInfo) _then) = __$CodeChunkInfoCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'byte_end') int byteEnd,@JsonKey(name: 'byte_start') int byteStart,@JsonKey(name: 'context_path') List<String> contextPath,@JsonKey(name: 'node_types') List<String> nodeTypes, String text
});




}
/// @nodoc
class __$CodeChunkInfoCopyWithImpl<$Res>
    implements _$CodeChunkInfoCopyWith<$Res> {
  __$CodeChunkInfoCopyWithImpl(this._self, this._then);

  final _CodeChunkInfo _self;
  final $Res Function(_CodeChunkInfo) _then;

/// Create a copy of CodeChunkInfo
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? byteEnd = null,Object? byteStart = null,Object? contextPath = null,Object? nodeTypes = null,Object? text = null,}) {
  return _then(_CodeChunkInfo(
byteEnd: null == byteEnd ? _self.byteEnd : byteEnd // ignore: cast_nullable_to_non_nullable
as int,byteStart: null == byteStart ? _self.byteStart : byteStart // ignore: cast_nullable_to_non_nullable
as int,contextPath: null == contextPath ? _self._contextPath : contextPath // ignore: cast_nullable_to_non_nullable
as List<String>,nodeTypes: null == nodeTypes ? _self._nodeTypes : nodeTypes // ignore: cast_nullable_to_non_nullable
as List<String>,text: null == text ? _self.text : text // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
