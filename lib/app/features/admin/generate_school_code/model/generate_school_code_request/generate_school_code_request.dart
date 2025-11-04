import 'package:freezed_annotation/freezed_annotation.dart';

part 'generate_school_code_request.freezed.dart';
part 'generate_school_code_request.g.dart';

@freezed
abstract class GenerateSchoolCodeRequest with _$GenerateSchoolCodeRequest {
  const factory GenerateSchoolCodeRequest({
    required int expiresInMinutes,
  }) = _GenerateSchoolCodeRequest;

  factory GenerateSchoolCodeRequest.fromJson(Map<String, dynamic> json) =>
      _$GenerateSchoolCodeRequestFromJson(json);
}