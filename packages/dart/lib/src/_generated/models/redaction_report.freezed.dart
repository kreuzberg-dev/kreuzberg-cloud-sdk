// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'redaction_report.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$RedactionReport {

/// Individual redaction findings in original-source byte order.
 List<RedactionFinding> get findings;/// Total number of redactions applied across the document.
@JsonKey(name: 'total_redacted') int get totalRedacted;
/// Create a copy of RedactionReport
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RedactionReportCopyWith<RedactionReport> get copyWith => _$RedactionReportCopyWithImpl<RedactionReport>(this as RedactionReport, _$identity);

  /// Serializes this RedactionReport to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RedactionReport&&const DeepCollectionEquality().equals(other.findings, findings)&&(identical(other.totalRedacted, totalRedacted) || other.totalRedacted == totalRedacted));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(findings),totalRedacted);

@override
String toString() {
  return 'RedactionReport(findings: $findings, totalRedacted: $totalRedacted)';
}


}

/// @nodoc
abstract mixin class $RedactionReportCopyWith<$Res>  {
  factory $RedactionReportCopyWith(RedactionReport value, $Res Function(RedactionReport) _then) = _$RedactionReportCopyWithImpl;
@useResult
$Res call({
 List<RedactionFinding> findings,@JsonKey(name: 'total_redacted') int totalRedacted
});




}
/// @nodoc
class _$RedactionReportCopyWithImpl<$Res>
    implements $RedactionReportCopyWith<$Res> {
  _$RedactionReportCopyWithImpl(this._self, this._then);

  final RedactionReport _self;
  final $Res Function(RedactionReport) _then;

/// Create a copy of RedactionReport
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? findings = null,Object? totalRedacted = null,}) {
  return _then(_self.copyWith(
findings: null == findings ? _self.findings : findings // ignore: cast_nullable_to_non_nullable
as List<RedactionFinding>,totalRedacted: null == totalRedacted ? _self.totalRedacted : totalRedacted // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [RedactionReport].
extension RedactionReportPatterns on RedactionReport {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RedactionReport value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RedactionReport() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RedactionReport value)  $default,){
final _that = this;
switch (_that) {
case _RedactionReport():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RedactionReport value)?  $default,){
final _that = this;
switch (_that) {
case _RedactionReport() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<RedactionFinding> findings, @JsonKey(name: 'total_redacted')  int totalRedacted)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RedactionReport() when $default != null:
return $default(_that.findings,_that.totalRedacted);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<RedactionFinding> findings, @JsonKey(name: 'total_redacted')  int totalRedacted)  $default,) {final _that = this;
switch (_that) {
case _RedactionReport():
return $default(_that.findings,_that.totalRedacted);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<RedactionFinding> findings, @JsonKey(name: 'total_redacted')  int totalRedacted)?  $default,) {final _that = this;
switch (_that) {
case _RedactionReport() when $default != null:
return $default(_that.findings,_that.totalRedacted);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _RedactionReport implements RedactionReport {
  const _RedactionReport({required final  List<RedactionFinding> findings, @JsonKey(name: 'total_redacted') required this.totalRedacted}): _findings = findings;
  factory _RedactionReport.fromJson(Map<String, dynamic> json) => _$RedactionReportFromJson(json);

/// Individual redaction findings in original-source byte order.
 final  List<RedactionFinding> _findings;
/// Individual redaction findings in original-source byte order.
@override List<RedactionFinding> get findings {
  if (_findings is EqualUnmodifiableListView) return _findings;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_findings);
}

/// Total number of redactions applied across the document.
@override@JsonKey(name: 'total_redacted') final  int totalRedacted;

/// Create a copy of RedactionReport
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RedactionReportCopyWith<_RedactionReport> get copyWith => __$RedactionReportCopyWithImpl<_RedactionReport>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RedactionReportToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RedactionReport&&const DeepCollectionEquality().equals(other._findings, _findings)&&(identical(other.totalRedacted, totalRedacted) || other.totalRedacted == totalRedacted));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_findings),totalRedacted);

@override
String toString() {
  return 'RedactionReport(findings: $findings, totalRedacted: $totalRedacted)';
}


}

/// @nodoc
abstract mixin class _$RedactionReportCopyWith<$Res> implements $RedactionReportCopyWith<$Res> {
  factory _$RedactionReportCopyWith(_RedactionReport value, $Res Function(_RedactionReport) _then) = __$RedactionReportCopyWithImpl;
@override @useResult
$Res call({
 List<RedactionFinding> findings,@JsonKey(name: 'total_redacted') int totalRedacted
});




}
/// @nodoc
class __$RedactionReportCopyWithImpl<$Res>
    implements _$RedactionReportCopyWith<$Res> {
  __$RedactionReportCopyWithImpl(this._self, this._then);

  final _RedactionReport _self;
  final $Res Function(_RedactionReport) _then;

/// Create a copy of RedactionReport
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? findings = null,Object? totalRedacted = null,}) {
  return _then(_RedactionReport(
findings: null == findings ? _self._findings : findings // ignore: cast_nullable_to_non_nullable
as List<RedactionFinding>,totalRedacted: null == totalRedacted ? _self.totalRedacted : totalRedacted // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
