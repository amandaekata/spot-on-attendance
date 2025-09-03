import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:spot_on/app/features/auth/model/login_request/login_request.dart';
import 'package:spot_on/app/features/auth/model/login_response/login_response.dart';
import 'package:spot_on/app/features/auth/model/sign_up_request.dart/sign_up_request.dart';
import 'package:spot_on/app/features/auth/model/sign_up_response/sign_up_response.dart';
part 'auth_client.g.dart';

@RestApi()
abstract class AuthClient {
  factory AuthClient(Dio dio, {String baseUrl}) = _AuthClient;

  static const version1 = 'v1';
  // login
  @POST('/$version1/api/auth/login')
  Future<LoginResponse> login(@Body() LoginRequest loginRequest);

  //Educator Signup
  @POST('/$version1/api/auth/educator/signup')
  Future<SignUpResponse> signup(@Body() SignUpRequest signUpRequest);
}
