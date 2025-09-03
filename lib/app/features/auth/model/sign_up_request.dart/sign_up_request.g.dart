// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sign_up_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SignUpRequestImpl _$$SignUpRequestImplFromJson(Map<String, dynamic> json) =>
    _$SignUpRequestImpl(
      title: json['title'] as String,
      firstName: json['firstName'] as String,
      middleName: json['middleName'] as String?,
      lastName: json['lastName'] as String,
      email: json['email'] as String,
      password: json['password'] as String,
      institutionId: json['institutionId'] as String,
    );

Map<String, dynamic> _$$SignUpRequestImplToJson(_$SignUpRequestImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'firstName': instance.firstName,
      'middleName': instance.middleName,
      'lastName': instance.lastName,
      'email': instance.email,
      'password': instance.password,
      'institutionId': instance.institutionId,
    };
