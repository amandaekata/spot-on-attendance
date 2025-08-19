import 'package:fpdart/fpdart.dart';
import 'package:spot_on/src/dio_service/dio_service.dart';
import 'package:spot_on/app/features/auth/client/auth_client.dart';
import 'package:spot_on/app/features/auth/model/login_request/login_request.dart';
import 'package:spot_on/app/features/auth/model/login_response/login_response.dart';
import 'package:spot_on/src/exceptions/exceptions.dart';

part 'login_repository.dart';

class LoginRepositoryImpl implements LoginRepository{
  LoginRepositoryImpl({
    required DioService dioService,
    AuthClient? client,
  }) : _client = client ?? AuthClient(dioService.dio);

  final AuthClient _client;
  @override
  TaskEither<String, LoginResponse> login(
    LoginRequest loginRequest,
  ) {
    return TaskEither.tryCatch(
      () => _client.login(loginRequest),
      (error, stackTrace) => AppHttpClientException.parseException(
        error,
        s: stackTrace,
      ),
    );
  }  
  
}