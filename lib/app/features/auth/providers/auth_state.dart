import 'package:equatable/equatable.dart';
import 'package:spot_on/app/features/auth/model/login_response/user.dart';
class AuthState extends Equatable {
  final User? user;
  final String? authToken;
  final String? email;
  final String? password;
  const AuthState({
    this.user,
    this.authToken,
    this.email,
    this.password,
  });
  AuthState copyWith({
    User? user,
    String? authToken,
    String? email,
    String? password,
  }) {
    return AuthState(
      user: user ?? this.user,
      authToken: authToken ?? this.authToken,
      email: email ?? this.email,
      password: password ?? this.password,
    );
  }
    @override
  bool get stringify => true;
    @override
  List<Object?> get props => [
        user,
        authToken,
        email,
        password,
      ];
}