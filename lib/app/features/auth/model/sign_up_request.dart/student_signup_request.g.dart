// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'student_signup_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_StudentSignUpRequest _$StudentSignUpRequestFromJson(
  Map<String, dynamic> json,
) => _StudentSignUpRequest(
  firstName: json['firstName'] as String,
  lastName: json['lastName'] as String,
  email: json['email'] as String,
  password: json['password'] as String,
  schoolCode: json['schoolCode'] as String,
);

Map<String, dynamic> _$StudentSignUpRequestToJson(
  _StudentSignUpRequest instance,
) => <String, dynamic>{
  'firstName': instance.firstName,
  'lastName': instance.lastName,
  'email': instance.email,
  'password': instance.password,
  'schoolCode': instance.schoolCode,
};
