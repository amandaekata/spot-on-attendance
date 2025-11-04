// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'student_signup_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$StudentSignUpRequest {

 String get firstName; String get lastName; String get email; String get password; String get schoolCode;
/// Create a copy of StudentSignUpRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StudentSignUpRequestCopyWith<StudentSignUpRequest> get copyWith => _$StudentSignUpRequestCopyWithImpl<StudentSignUpRequest>(this as StudentSignUpRequest, _$identity);

  /// Serializes this StudentSignUpRequest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StudentSignUpRequest&&(identical(other.firstName, firstName) || other.firstName == firstName)&&(identical(other.lastName, lastName) || other.lastName == lastName)&&(identical(other.email, email) || other.email == email)&&(identical(other.password, password) || other.password == password)&&(identical(other.schoolCode, schoolCode) || other.schoolCode == schoolCode));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,firstName,lastName,email,password,schoolCode);

@override
String toString() {
  return 'StudentSignUpRequest(firstName: $firstName, lastName: $lastName, email: $email, password: $password, schoolCode: $schoolCode)';
}


}

/// @nodoc
abstract mixin class $StudentSignUpRequestCopyWith<$Res>  {
  factory $StudentSignUpRequestCopyWith(StudentSignUpRequest value, $Res Function(StudentSignUpRequest) _then) = _$StudentSignUpRequestCopyWithImpl;
@useResult
$Res call({
 String firstName, String lastName, String email, String password, String schoolCode
});




}
/// @nodoc
class _$StudentSignUpRequestCopyWithImpl<$Res>
    implements $StudentSignUpRequestCopyWith<$Res> {
  _$StudentSignUpRequestCopyWithImpl(this._self, this._then);

  final StudentSignUpRequest _self;
  final $Res Function(StudentSignUpRequest) _then;

/// Create a copy of StudentSignUpRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? firstName = null,Object? lastName = null,Object? email = null,Object? password = null,Object? schoolCode = null,}) {
  return _then(_self.copyWith(
firstName: null == firstName ? _self.firstName : firstName // ignore: cast_nullable_to_non_nullable
as String,lastName: null == lastName ? _self.lastName : lastName // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,schoolCode: null == schoolCode ? _self.schoolCode : schoolCode // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [StudentSignUpRequest].
extension StudentSignUpRequestPatterns on StudentSignUpRequest {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _StudentSignUpRequest value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _StudentSignUpRequest() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _StudentSignUpRequest value)  $default,){
final _that = this;
switch (_that) {
case _StudentSignUpRequest():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _StudentSignUpRequest value)?  $default,){
final _that = this;
switch (_that) {
case _StudentSignUpRequest() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String firstName,  String lastName,  String email,  String password,  String schoolCode)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _StudentSignUpRequest() when $default != null:
return $default(_that.firstName,_that.lastName,_that.email,_that.password,_that.schoolCode);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String firstName,  String lastName,  String email,  String password,  String schoolCode)  $default,) {final _that = this;
switch (_that) {
case _StudentSignUpRequest():
return $default(_that.firstName,_that.lastName,_that.email,_that.password,_that.schoolCode);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String firstName,  String lastName,  String email,  String password,  String schoolCode)?  $default,) {final _that = this;
switch (_that) {
case _StudentSignUpRequest() when $default != null:
return $default(_that.firstName,_that.lastName,_that.email,_that.password,_that.schoolCode);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _StudentSignUpRequest implements StudentSignUpRequest {
  const _StudentSignUpRequest({required this.firstName, required this.lastName, required this.email, required this.password, required this.schoolCode});
  factory _StudentSignUpRequest.fromJson(Map<String, dynamic> json) => _$StudentSignUpRequestFromJson(json);

@override final  String firstName;
@override final  String lastName;
@override final  String email;
@override final  String password;
@override final  String schoolCode;

/// Create a copy of StudentSignUpRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StudentSignUpRequestCopyWith<_StudentSignUpRequest> get copyWith => __$StudentSignUpRequestCopyWithImpl<_StudentSignUpRequest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$StudentSignUpRequestToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _StudentSignUpRequest&&(identical(other.firstName, firstName) || other.firstName == firstName)&&(identical(other.lastName, lastName) || other.lastName == lastName)&&(identical(other.email, email) || other.email == email)&&(identical(other.password, password) || other.password == password)&&(identical(other.schoolCode, schoolCode) || other.schoolCode == schoolCode));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,firstName,lastName,email,password,schoolCode);

@override
String toString() {
  return 'StudentSignUpRequest(firstName: $firstName, lastName: $lastName, email: $email, password: $password, schoolCode: $schoolCode)';
}


}

/// @nodoc
abstract mixin class _$StudentSignUpRequestCopyWith<$Res> implements $StudentSignUpRequestCopyWith<$Res> {
  factory _$StudentSignUpRequestCopyWith(_StudentSignUpRequest value, $Res Function(_StudentSignUpRequest) _then) = __$StudentSignUpRequestCopyWithImpl;
@override @useResult
$Res call({
 String firstName, String lastName, String email, String password, String schoolCode
});




}
/// @nodoc
class __$StudentSignUpRequestCopyWithImpl<$Res>
    implements _$StudentSignUpRequestCopyWith<$Res> {
  __$StudentSignUpRequestCopyWithImpl(this._self, this._then);

  final _StudentSignUpRequest _self;
  final $Res Function(_StudentSignUpRequest) _then;

/// Create a copy of StudentSignUpRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? firstName = null,Object? lastName = null,Object? email = null,Object? password = null,Object? schoolCode = null,}) {
  return _then(_StudentSignUpRequest(
firstName: null == firstName ? _self.firstName : firstName // ignore: cast_nullable_to_non_nullable
as String,lastName: null == lastName ? _self.lastName : lastName // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,schoolCode: null == schoolCode ? _self.schoolCode : schoolCode // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
