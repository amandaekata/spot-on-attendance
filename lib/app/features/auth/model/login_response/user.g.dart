// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_User _$UserFromJson(Map<String, dynamic> json) => _User(
  id: json['id'] as String?,
  title: json['title'] as String?,
  firstname: json['firstname'] as String?,
  middlename: json['middlename'] as String?,
  lastname: json['lastname'] as String?,
  email: json['email'] as String?,
  role: json['role'] as String?,
);

Map<String, dynamic> _$UserToJson(_User instance) => <String, dynamic>{
  'id': instance.id,
  'title': instance.title,
  'firstname': instance.firstname,
  'middlename': instance.middlename,
  'lastname': instance.lastname,
  'email': instance.email,
  'role': instance.role,
};
