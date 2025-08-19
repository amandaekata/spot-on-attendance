import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:spot_on/app/features/auth/model/login_request/login_request.dart';
import 'package:spot_on/app/features/auth/model/login_response/login_response.dart';
part 'auth_client.g.dart';

@RestApi()
abstract class AuthClient {
  factory AuthClient(Dio dio, {String baseUrl}) = _AuthClient;

  static const version1 = 'v1';
  // login
  @POST('$version1/api/auth/login')
  Future<LoginResponse> login(@Body() LoginRequest loginRequest);
}
