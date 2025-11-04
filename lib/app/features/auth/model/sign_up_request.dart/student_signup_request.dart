import 'package:freezed_annotation/freezed_annotation.dart';

part 'student_signup_request.freezed.dart';
part 'student_signup_request.g.dart';

@freezed
abstract class StudentSignUpRequest with _$StudentSignUpRequest {
  const factory StudentSignUpRequest({
    required String firstName,
    required String lastName,
    required String email,
    required String password,
    required String schoolCode,
  }) = _StudentSignUpRequest;

  factory StudentSignUpRequest.fromJson(Map<String, dynamic> json) =>
      _$StudentSignUpRequestFromJson(json);
}