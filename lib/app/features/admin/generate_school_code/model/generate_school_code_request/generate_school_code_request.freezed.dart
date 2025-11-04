// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'generate_school_code_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$GenerateSchoolCodeRequest {

 int get expiresInMinutes;
/// Create a copy of GenerateSchoolCodeRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GenerateSchoolCodeRequestCopyWith<GenerateSchoolCodeRequest> get copyWith => _$GenerateSchoolCodeRequestCopyWithImpl<GenerateSchoolCodeRequest>(this as GenerateSchoolCodeRequest, _$identity);

  /// Serializes this GenerateSchoolCodeRequest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GenerateSchoolCodeRequest&&(identical(other.expiresInMinutes, expiresInMinutes) || other.expiresInMinutes == expiresInMinutes));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,expiresInMinutes);

@override
String toString() {
  return 'GenerateSchoolCodeRequest(expiresInMinutes: $expiresInMinutes)';
}


}

/// @nodoc
abstract mixin class $GenerateSchoolCodeRequestCopyWith<$Res>  {
  factory $GenerateSchoolCodeRequestCopyWith(GenerateSchoolCodeRequest value, $Res Function(GenerateSchoolCodeRequest) _then) = _$GenerateSchoolCodeRequestCopyWithImpl;
@useResult
$Res call({
 int expiresInMinutes
});




}
/// @nodoc
class _$GenerateSchoolCodeRequestCopyWithImpl<$Res>
    implements $GenerateSchoolCodeRequestCopyWith<$Res> {
  _$GenerateSchoolCodeRequestCopyWithImpl(this._self, this._then);

  final GenerateSchoolCodeRequest _self;
  final $Res Function(GenerateSchoolCodeRequest) _then;

/// Create a copy of GenerateSchoolCodeRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? expiresInMinutes = null,}) {
  return _then(_self.copyWith(
expiresInMinutes: null == expiresInMinutes ? _self.expiresInMinutes : expiresInMinutes // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [GenerateSchoolCodeRequest].
extension GenerateSchoolCodeRequestPatterns on GenerateSchoolCodeRequest {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GenerateSchoolCodeRequest value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GenerateSchoolCodeRequest() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GenerateSchoolCodeRequest value)  $default,){
final _that = this;
switch (_that) {
case _GenerateSchoolCodeRequest():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GenerateSchoolCodeRequest value)?  $default,){
final _that = this;
switch (_that) {
case _GenerateSchoolCodeRequest() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int expiresInMinutes)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GenerateSchoolCodeRequest() when $default != null:
return $default(_that.expiresInMinutes);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int expiresInMinutes)  $default,) {final _that = this;
switch (_that) {
case _GenerateSchoolCodeRequest():
return $default(_that.expiresInMinutes);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int expiresInMinutes)?  $default,) {final _that = this;
switch (_that) {
case _GenerateSchoolCodeRequest() when $default != null:
return $default(_that.expiresInMinutes);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _GenerateSchoolCodeRequest implements GenerateSchoolCodeRequest {
  const _GenerateSchoolCodeRequest({required this.expiresInMinutes});
  factory _GenerateSchoolCodeRequest.fromJson(Map<String, dynamic> json) => _$GenerateSchoolCodeRequestFromJson(json);

@override final  int expiresInMinutes;

/// Create a copy of GenerateSchoolCodeRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GenerateSchoolCodeRequestCopyWith<_GenerateSchoolCodeRequest> get copyWith => __$GenerateSchoolCodeRequestCopyWithImpl<_GenerateSchoolCodeRequest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GenerateSchoolCodeRequestToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GenerateSchoolCodeRequest&&(identical(other.expiresInMinutes, expiresInMinutes) || other.expiresInMinutes == expiresInMinutes));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,expiresInMinutes);

@override
String toString() {
  return 'GenerateSchoolCodeRequest(expiresInMinutes: $expiresInMinutes)';
}


}

/// @nodoc
abstract mixin class _$GenerateSchoolCodeRequestCopyWith<$Res> implements $GenerateSchoolCodeRequestCopyWith<$Res> {
  factory _$GenerateSchoolCodeRequestCopyWith(_GenerateSchoolCodeRequest value, $Res Function(_GenerateSchoolCodeRequest) _then) = __$GenerateSchoolCodeRequestCopyWithImpl;
@override @useResult
$Res call({
 int expiresInMinutes
});




}
/// @nodoc
class __$GenerateSchoolCodeRequestCopyWithImpl<$Res>
    implements _$GenerateSchoolCodeRequestCopyWith<$Res> {
  __$GenerateSchoolCodeRequestCopyWithImpl(this._self, this._then);

  final _GenerateSchoolCodeRequest _self;
  final $Res Function(_GenerateSchoolCodeRequest) _then;

/// Create a copy of GenerateSchoolCodeRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? expiresInMinutes = null,}) {
  return _then(_GenerateSchoolCodeRequest(
expiresInMinutes: null == expiresInMinutes ? _self.expiresInMinutes : expiresInMinutes // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
