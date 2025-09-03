part of 'login_repository.dart';

class LoginRepositoryImpl implements LoginRepository {
  LoginRepositoryImpl({required DioService dioService, AuthClient? client})
    : _client = client ?? AuthClient(dioService.dio);

  final AuthClient _client;
  @override
  TaskEither<String, LoginResponse> login(LoginRequest loginRequest) {
    return TaskEither.tryCatch(
      () => _client.login(loginRequest),
      (error, stackTrace) =>
          AppHttpClientException.parseException(error, s: stackTrace),
    );
  }

  @override
  TaskEither<String, SignUpResponse> signUp(SignUpRequest signUpRequest) {
    return TaskEither.tryCatch(
      () => _client.signup(signUpRequest),
      (error, stackTrace) =>
          AppHttpClientException.parseException(error, s: stackTrace),
    );
  }
}

final loginRepositoryProvider = Provider<LoginRepository>(
  (ref) => LoginRepositoryImpl(dioService: ref.watch(dioServiceProvider)),
);
