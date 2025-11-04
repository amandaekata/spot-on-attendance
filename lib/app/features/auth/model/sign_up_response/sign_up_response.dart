import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:spot_on/app/features/auth/model/login_response/user.dart';


part 'sign_up_response.freezed.dart';
part 'sign_up_response.g.dart';

@freezed
abstract class SignUpResponse with _$SignUpResponse {
  const factory SignUpResponse({
    required User user,
  }) = _SignUpResponse;

  factory SignUpResponse.fromJson(Map<String, dynamic> json) =>
      _$SignUpResponseFromJson(json);
}