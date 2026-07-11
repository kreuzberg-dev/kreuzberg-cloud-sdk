// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'jats_metadata.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$JatsMetadata {

/// Authors and contributors with their stated roles.
@JsonKey(name: 'contributor_roles') List<ContributorRole>? get contributorRoles;/// Copyright statement from the article's `<permissions>` element.
 String? get copyright;/// Publication history dates keyed by event type (e.g. `"received"`, `"accepted"`).
@JsonKey(name: 'history_dates') Map<String, String>? get historyDates;/// Open-access license URI from the article's `<license>` element.
 String? get license;
/// Create a copy of JatsMetadata
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$JatsMetadataCopyWith<JatsMetadata> get copyWith => _$JatsMetadataCopyWithImpl<JatsMetadata>(this as JatsMetadata, _$identity);

  /// Serializes this JatsMetadata to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is JatsMetadata&&const DeepCollectionEquality().equals(other.contributorRoles, contributorRoles)&&(identical(other.copyright, copyright) || other.copyright == copyright)&&const DeepCollectionEquality().equals(other.historyDates, historyDates)&&(identical(other.license, license) || other.license == license));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(contributorRoles),copyright,const DeepCollectionEquality().hash(historyDates),license);

@override
String toString() {
  return 'JatsMetadata(contributorRoles: $contributorRoles, copyright: $copyright, historyDates: $historyDates, license: $license)';
}


}

/// @nodoc
abstract mixin class $JatsMetadataCopyWith<$Res>  {
  factory $JatsMetadataCopyWith(JatsMetadata value, $Res Function(JatsMetadata) _then) = _$JatsMetadataCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'contributor_roles') List<ContributorRole>? contributorRoles, String? copyright,@JsonKey(name: 'history_dates') Map<String, String>? historyDates, String? license
});




}
/// @nodoc
class _$JatsMetadataCopyWithImpl<$Res>
    implements $JatsMetadataCopyWith<$Res> {
  _$JatsMetadataCopyWithImpl(this._self, this._then);

  final JatsMetadata _self;
  final $Res Function(JatsMetadata) _then;

/// Create a copy of JatsMetadata
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? contributorRoles = freezed,Object? copyright = freezed,Object? historyDates = freezed,Object? license = freezed,}) {
  return _then(_self.copyWith(
contributorRoles: freezed == contributorRoles ? _self.contributorRoles : contributorRoles // ignore: cast_nullable_to_non_nullable
as List<ContributorRole>?,copyright: freezed == copyright ? _self.copyright : copyright // ignore: cast_nullable_to_non_nullable
as String?,historyDates: freezed == historyDates ? _self.historyDates : historyDates // ignore: cast_nullable_to_non_nullable
as Map<String, String>?,license: freezed == license ? _self.license : license // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [JatsMetadata].
extension JatsMetadataPatterns on JatsMetadata {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _JatsMetadata value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _JatsMetadata() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _JatsMetadata value)  $default,){
final _that = this;
switch (_that) {
case _JatsMetadata():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _JatsMetadata value)?  $default,){
final _that = this;
switch (_that) {
case _JatsMetadata() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'contributor_roles')  List<ContributorRole>? contributorRoles,  String? copyright, @JsonKey(name: 'history_dates')  Map<String, String>? historyDates,  String? license)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _JatsMetadata() when $default != null:
return $default(_that.contributorRoles,_that.copyright,_that.historyDates,_that.license);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'contributor_roles')  List<ContributorRole>? contributorRoles,  String? copyright, @JsonKey(name: 'history_dates')  Map<String, String>? historyDates,  String? license)  $default,) {final _that = this;
switch (_that) {
case _JatsMetadata():
return $default(_that.contributorRoles,_that.copyright,_that.historyDates,_that.license);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'contributor_roles')  List<ContributorRole>? contributorRoles,  String? copyright, @JsonKey(name: 'history_dates')  Map<String, String>? historyDates,  String? license)?  $default,) {final _that = this;
switch (_that) {
case _JatsMetadata() when $default != null:
return $default(_that.contributorRoles,_that.copyright,_that.historyDates,_that.license);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _JatsMetadata implements JatsMetadata {
  const _JatsMetadata({@JsonKey(name: 'contributor_roles') final  List<ContributorRole>? contributorRoles, this.copyright, @JsonKey(name: 'history_dates') final  Map<String, String>? historyDates, this.license}): _contributorRoles = contributorRoles,_historyDates = historyDates;
  factory _JatsMetadata.fromJson(Map<String, dynamic> json) => _$JatsMetadataFromJson(json);

/// Authors and contributors with their stated roles.
 final  List<ContributorRole>? _contributorRoles;
/// Authors and contributors with their stated roles.
@override@JsonKey(name: 'contributor_roles') List<ContributorRole>? get contributorRoles {
  final value = _contributorRoles;
  if (value == null) return null;
  if (_contributorRoles is EqualUnmodifiableListView) return _contributorRoles;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

/// Copyright statement from the article's `<permissions>` element.
@override final  String? copyright;
/// Publication history dates keyed by event type (e.g. `"received"`, `"accepted"`).
 final  Map<String, String>? _historyDates;
/// Publication history dates keyed by event type (e.g. `"received"`, `"accepted"`).
@override@JsonKey(name: 'history_dates') Map<String, String>? get historyDates {
  final value = _historyDates;
  if (value == null) return null;
  if (_historyDates is EqualUnmodifiableMapView) return _historyDates;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}

/// Open-access license URI from the article's `<license>` element.
@override final  String? license;

/// Create a copy of JatsMetadata
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$JatsMetadataCopyWith<_JatsMetadata> get copyWith => __$JatsMetadataCopyWithImpl<_JatsMetadata>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$JatsMetadataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _JatsMetadata&&const DeepCollectionEquality().equals(other._contributorRoles, _contributorRoles)&&(identical(other.copyright, copyright) || other.copyright == copyright)&&const DeepCollectionEquality().equals(other._historyDates, _historyDates)&&(identical(other.license, license) || other.license == license));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_contributorRoles),copyright,const DeepCollectionEquality().hash(_historyDates),license);

@override
String toString() {
  return 'JatsMetadata(contributorRoles: $contributorRoles, copyright: $copyright, historyDates: $historyDates, license: $license)';
}


}

/// @nodoc
abstract mixin class _$JatsMetadataCopyWith<$Res> implements $JatsMetadataCopyWith<$Res> {
  factory _$JatsMetadataCopyWith(_JatsMetadata value, $Res Function(_JatsMetadata) _then) = __$JatsMetadataCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'contributor_roles') List<ContributorRole>? contributorRoles, String? copyright,@JsonKey(name: 'history_dates') Map<String, String>? historyDates, String? license
});




}
/// @nodoc
class __$JatsMetadataCopyWithImpl<$Res>
    implements _$JatsMetadataCopyWith<$Res> {
  __$JatsMetadataCopyWithImpl(this._self, this._then);

  final _JatsMetadata _self;
  final $Res Function(_JatsMetadata) _then;

/// Create a copy of JatsMetadata
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? contributorRoles = freezed,Object? copyright = freezed,Object? historyDates = freezed,Object? license = freezed,}) {
  return _then(_JatsMetadata(
contributorRoles: freezed == contributorRoles ? _self._contributorRoles : contributorRoles // ignore: cast_nullable_to_non_nullable
as List<ContributorRole>?,copyright: freezed == copyright ? _self.copyright : copyright // ignore: cast_nullable_to_non_nullable
as String?,historyDates: freezed == historyDates ? _self._historyDates : historyDates // ignore: cast_nullable_to_non_nullable
as Map<String, String>?,license: freezed == license ? _self.license : license // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
