// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'school_code_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SchoolCodeResponse {

 bool get success; SchoolCode get schoolCode;
/// Create a copy of SchoolCodeResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SchoolCodeResponseCopyWith<SchoolCodeResponse> get copyWith => _$SchoolCodeResponseCopyWithImpl<SchoolCodeResponse>(this as SchoolCodeResponse, _$identity);

  /// Serializes this SchoolCodeResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SchoolCodeResponse&&(identical(other.success, success) || other.success == success)&&(identical(other.schoolCode, schoolCode) || other.schoolCode == schoolCode));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,schoolCode);

@override
String toString() {
  return 'SchoolCodeResponse(success: $success, schoolCode: $schoolCode)';
}


}

/// @nodoc
abstract mixin class $SchoolCodeResponseCopyWith<$Res>  {
  factory $SchoolCodeResponseCopyWith(SchoolCodeResponse value, $Res Function(SchoolCodeResponse) _then) = _$SchoolCodeResponseCopyWithImpl;
@useResult
$Res call({
 bool success, SchoolCode schoolCode
});


$SchoolCodeCopyWith<$Res> get schoolCode;

}
/// @nodoc
class _$SchoolCodeResponseCopyWithImpl<$Res>
    implements $SchoolCodeResponseCopyWith<$Res> {
  _$SchoolCodeResponseCopyWithImpl(this._self, this._then);

  final SchoolCodeResponse _self;
  final $Res Function(SchoolCodeResponse) _then;

/// Create a copy of SchoolCodeResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? success = null,Object? schoolCode = null,}) {
  return _then(_self.copyWith(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,schoolCode: null == schoolCode ? _self.schoolCode : schoolCode // ignore: cast_nullable_to_non_nullable
as SchoolCode,
  ));
}
/// Create a copy of SchoolCodeResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SchoolCodeCopyWith<$Res> get schoolCode {
  
  return $SchoolCodeCopyWith<$Res>(_self.schoolCode, (value) {
    return _then(_self.copyWith(schoolCode: value));
  });
}
}


/// Adds pattern-matching-related methods to [SchoolCodeResponse].
extension SchoolCodeResponsePatterns on SchoolCodeResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SchoolCodeResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SchoolCodeResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SchoolCodeResponse value)  $default,){
final _that = this;
switch (_that) {
case _SchoolCodeResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SchoolCodeResponse value)?  $default,){
final _that = this;
switch (_that) {
case _SchoolCodeResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool success,  SchoolCode schoolCode)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SchoolCodeResponse() when $default != null:
return $default(_that.success,_that.schoolCode);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool success,  SchoolCode schoolCode)  $default,) {final _that = this;
switch (_that) {
case _SchoolCodeResponse():
return $default(_that.success,_that.schoolCode);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool success,  SchoolCode schoolCode)?  $default,) {final _that = this;
switch (_that) {
case _SchoolCodeResponse() when $default != null:
return $default(_that.success,_that.schoolCode);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SchoolCodeResponse implements SchoolCodeResponse {
  const _SchoolCodeResponse({required this.success, required this.schoolCode});
  factory _SchoolCodeResponse.fromJson(Map<String, dynamic> json) => _$SchoolCodeResponseFromJson(json);

@override final  bool success;
@override final  SchoolCode schoolCode;

/// Create a copy of SchoolCodeResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SchoolCodeResponseCopyWith<_SchoolCodeResponse> get copyWith => __$SchoolCodeResponseCopyWithImpl<_SchoolCodeResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SchoolCodeResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SchoolCodeResponse&&(identical(other.success, success) || other.success == success)&&(identical(other.schoolCode, schoolCode) || other.schoolCode == schoolCode));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,schoolCode);

@override
String toString() {
  return 'SchoolCodeResponse(success: $success, schoolCode: $schoolCode)';
}


}

/// @nodoc
abstract mixin class _$SchoolCodeResponseCopyWith<$Res> implements $SchoolCodeResponseCopyWith<$Res> {
  factory _$SchoolCodeResponseCopyWith(_SchoolCodeResponse value, $Res Function(_SchoolCodeResponse) _then) = __$SchoolCodeResponseCopyWithImpl;
@override @useResult
$Res call({
 bool success, SchoolCode schoolCode
});


@override $SchoolCodeCopyWith<$Res> get schoolCode;

}
/// @nodoc
class __$SchoolCodeResponseCopyWithImpl<$Res>
    implements _$SchoolCodeResponseCopyWith<$Res> {
  __$SchoolCodeResponseCopyWithImpl(this._self, this._then);

  final _SchoolCodeResponse _self;
  final $Res Function(_SchoolCodeResponse) _then;

/// Create a copy of SchoolCodeResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? success = null,Object? schoolCode = null,}) {
  return _then(_SchoolCodeResponse(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,schoolCode: null == schoolCode ? _self.schoolCode : schoolCode // ignore: cast_nullable_to_non_nullable
as SchoolCode,
  ));
}

/// Create a copy of SchoolCodeResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SchoolCodeCopyWith<$Res> get schoolCode {
  
  return $SchoolCodeCopyWith<$Res>(_self.schoolCode, (value) {
    return _then(_self.copyWith(schoolCode: value));
  });
}
}


/// @nodoc
mixin _$SchoolCode {

 String get id; String get code; DateTime get expiresAt;
/// Create a copy of SchoolCode
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SchoolCodeCopyWith<SchoolCode> get copyWith => _$SchoolCodeCopyWithImpl<SchoolCode>(this as SchoolCode, _$identity);

  /// Serializes this SchoolCode to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SchoolCode&&(identical(other.id, id) || other.id == id)&&(identical(other.code, code) || other.code == code)&&(identical(other.expiresAt, expiresAt) || other.expiresAt == expiresAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,code,expiresAt);

@override
String toString() {
  return 'SchoolCode(id: $id, code: $code, expiresAt: $expiresAt)';
}


}

/// @nodoc
abstract mixin class $SchoolCodeCopyWith<$Res>  {
  factory $SchoolCodeCopyWith(SchoolCode value, $Res Function(SchoolCode) _then) = _$SchoolCodeCopyWithImpl;
@useResult
$Res call({
 String id, String code, DateTime expiresAt
});




}
/// @nodoc
class _$SchoolCodeCopyWithImpl<$Res>
    implements $SchoolCodeCopyWith<$Res> {
  _$SchoolCodeCopyWithImpl(this._self, this._then);

  final SchoolCode _self;
  final $Res Function(SchoolCode) _then;

/// Create a copy of SchoolCode
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? code = null,Object? expiresAt = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String,expiresAt: null == expiresAt ? _self.expiresAt : expiresAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

}


/// Adds pattern-matching-related methods to [SchoolCode].
extension SchoolCodePatterns on SchoolCode {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SchoolCode value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SchoolCode() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SchoolCode value)  $default,){
final _that = this;
switch (_that) {
case _SchoolCode():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SchoolCode value)?  $default,){
final _that = this;
switch (_that) {
case _SchoolCode() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String code,  DateTime expiresAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SchoolCode() when $default != null:
return $default(_that.id,_that.code,_that.expiresAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String code,  DateTime expiresAt)  $default,) {final _that = this;
switch (_that) {
case _SchoolCode():
return $default(_that.id,_that.code,_that.expiresAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String code,  DateTime expiresAt)?  $default,) {final _that = this;
switch (_that) {
case _SchoolCode() when $default != null:
return $default(_that.id,_that.code,_that.expiresAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SchoolCode implements SchoolCode {
  const _SchoolCode({required this.id, required this.code, required this.expiresAt});
  factory _SchoolCode.fromJson(Map<String, dynamic> json) => _$SchoolCodeFromJson(json);

@override final  String id;
@override final  String code;
@override final  DateTime expiresAt;

/// Create a copy of SchoolCode
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SchoolCodeCopyWith<_SchoolCode> get copyWith => __$SchoolCodeCopyWithImpl<_SchoolCode>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SchoolCodeToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SchoolCode&&(identical(other.id, id) || other.id == id)&&(identical(other.code, code) || other.code == code)&&(identical(other.expiresAt, expiresAt) || other.expiresAt == expiresAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,code,expiresAt);

@override
String toString() {
  return 'SchoolCode(id: $id, code: $code, expiresAt: $expiresAt)';
}


}

/// @nodoc
abstract mixin class _$SchoolCodeCopyWith<$Res> implements $SchoolCodeCopyWith<$Res> {
  factory _$SchoolCodeCopyWith(_SchoolCode value, $Res Function(_SchoolCode) _then) = __$SchoolCodeCopyWithImpl;
@override @useResult
$Res call({
 String id, String code, DateTime expiresAt
});




}
/// @nodoc
class __$SchoolCodeCopyWithImpl<$Res>
    implements _$SchoolCodeCopyWith<$Res> {
  __$SchoolCodeCopyWithImpl(this._self, this._then);

  final _SchoolCode _self;
  final $Res Function(_SchoolCode) _then;

/// Create a copy of SchoolCode
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? code = null,Object? expiresAt = null,}) {
  return _then(_SchoolCode(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String,expiresAt: null == expiresAt ? _self.expiresAt : expiresAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}

// dart format on
