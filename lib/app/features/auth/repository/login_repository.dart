import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fpdart/fpdart.dart';
import 'package:spot_on/app/features/auth/client/auth_client.dart';
import 'package:spot_on/app/features/auth/model/login_request/login_request.dart';
import 'package:spot_on/app/features/auth/model/login_response/login_response.dart';
import 'package:spot_on/app/features/auth/model/sign_up_request.dart/sign_up_request.dart';
import 'package:spot_on/app/features/auth/model/sign_up_response/sign_up_response.dart';
import 'package:spot_on/src/dio_service/dio_service.dart';
import 'package:spot_on/src/dio_service/dio_service_provider.dart';
import 'package:spot_on/src/exceptions/exceptions.dart';
part 'login_repository_impl.dart';



abstract class LoginRepository {
  TaskEither<String, LoginResponse> login(
    LoginRequest loginRequest,
  );

  TaskEither<String, SignUpResponse> signUp(
    SignUpRequest signUpRequest,
  );
}