part of 'login_repository_impl.dart';



abstract class LoginRepository {
  TaskEither<String, LoginResponse> login(
    LoginRequest loginRequest,
  );
}