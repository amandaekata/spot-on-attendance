import 'package:freezed_annotation/freezed_annotation.dart';

part 'school_code_response.freezed.dart';
part 'school_code_response.g.dart';

@freezed
abstract class SchoolCodeResponse with _$SchoolCodeResponse {
  const factory SchoolCodeResponse({
    required bool success,
    required SchoolCode schoolCode,
  }) = _SchoolCodeResponse;

  factory SchoolCodeResponse.fromJson(Map<String, dynamic> json) =>
      _$SchoolCodeResponseFromJson(json);
}

@freezed
abstract class SchoolCode with _$SchoolCode {
  const factory SchoolCode({
    required String id,
    required String code,
    required DateTime expiresAt,
  }) = _SchoolCode;

  factory SchoolCode.fromJson(Map<String, dynamic> json) =>
      _$SchoolCodeFromJson(json);
}