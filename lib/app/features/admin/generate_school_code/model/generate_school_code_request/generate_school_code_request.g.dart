// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'generate_school_code_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_GenerateSchoolCodeRequest _$GenerateSchoolCodeRequestFromJson(
  Map<String, dynamic> json,
) => _GenerateSchoolCodeRequest(
  expiresInMinutes: (json['expiresInMinutes'] as num).toInt(),
);

Map<String, dynamic> _$GenerateSchoolCodeRequestToJson(
  _GenerateSchoolCodeRequest instance,
) => <String, dynamic>{'expiresInMinutes': instance.expiresInMinutes};
