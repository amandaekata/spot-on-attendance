// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'school_code_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SchoolCodeResponse _$SchoolCodeResponseFromJson(Map<String, dynamic> json) =>
    _SchoolCodeResponse(
      success: json['success'] as bool,
      schoolCode: SchoolCode.fromJson(
        json['schoolCode'] as Map<String, dynamic>,
      ),
    );

Map<String, dynamic> _$SchoolCodeResponseToJson(_SchoolCodeResponse instance) =>
    <String, dynamic>{
      'success': instance.success,
      'schoolCode': instance.schoolCode,
    };

_SchoolCode _$SchoolCodeFromJson(Map<String, dynamic> json) => _SchoolCode(
  id: json['id'] as String,
  code: json['code'] as String,
  expiresAt: DateTime.parse(json['expiresAt'] as String),
);

Map<String, dynamic> _$SchoolCodeToJson(_SchoolCode instance) =>
    <String, dynamic>{
      'id': instance.id,
      'code': instance.code,
      'expiresAt': instance.expiresAt.toIso8601String(),
    };
