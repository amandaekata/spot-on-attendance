import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_request.g.dart';
part 'login_request.freezed.dart';
//This is what the app will collect from the user when they want to login
@freezed
abstract class LoginRequest with _$LoginRequest {
  factory LoginRequest({
    String? email,
    String? password,
  }) = _LoginRequest;

  factory LoginRequest.fromJson(Map<String, dynamic> json) =>
      _$LoginRequestFromJson(json);
}