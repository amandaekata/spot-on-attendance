import 'dart:developer';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:spot_on/app/core/utils/loading_utils/i_loading_service.dart';
import 'package:spot_on/app/core/utils/loading_utils/loading_service_impl.dart';
import 'package:spot_on/app/features/auth/model/login_request/login_request.dart';
import 'package:spot_on/app/features/auth/model/sign_up_request.dart/sign_up_request.dart';
import 'package:spot_on/app/features/auth/providers/auth_state.dart';
import 'package:spot_on/app/features/auth/repository/login_repository.dart';



class AuthProviders extends StateNotifier<AuthState> {
  AuthProviders({
    required ILoadingService loadingService,
    required LoginRepository loginRepository,
  }) : _loadingService = loadingService,
       _loginRepository = loginRepository,
       super(const AuthState());

  final ILoadingService _loadingService;
  final LoginRepository _loginRepository;
  

  void onEmailChange(String email) {
    state = state.copyWith(email: email);
  }

  void onPasswordChange(String password) {
    state = state.copyWith(password: password);
  }

  Future<bool> login(String email, String password) async {
    bool isValid = false;
    try {
      _loadingService.showLoading();
      final request = LoginRequest(email: email, password: password);
      final response = await _loginRepository.login(request).run();

      response.fold(
        (l) {
          _loadingService.showError(l);
          log(l);
        },
        (r) {
          log(r.user.toString());
          state = state.copyWith(user: r.user);
          _loadingService.dismiss();
          isValid = true;
        },
      );
    } catch (e) {
      log(e.toString());

      _loadingService.showError(e.toString());

      isValid = false;

      rethrow;
    }

    return isValid;
  }

  Future<bool> signup({
    required String name,
    required String email,
    required String password,
  }) async {
    bool isSignedUp = false;
    try {
      _loadingService.showLoading();
     
      final nameParts = name.split(' ');
      final firstName = nameParts.isNotEmpty ? nameParts.first : '';
      final lastName = nameParts.length > 1 ? nameParts.sublist(1).join(' ') : '';

      final request = SignUpRequest(
        title: 'Mr', // Dummy data
        firstName: firstName,
        lastName: lastName,
        email: email,
        password: password,
        institutionId: 'c19cbb34-a1fd-4e2c-aba6-f0ba72460e25', 
      );

      final response = await _loginRepository.signUp(request).run();
      response.fold(
        (l) {
          _loadingService.showError(l);
          log(l);
        },
        (r) {
          log(r.user.toString());
          state = state.copyWith(user: r.user);
          _loadingService.dismiss();
          isSignedUp = true;
        },
      );
    } catch (e) {
      log(e.toString());
      _loadingService.showError(e.toString());
      isSignedUp = false;
      rethrow;
    }
    return isSignedUp;
  }
}

final loginProviders = StateNotifierProvider<AuthProviders, AuthState>(
  (ref) => AuthProviders(
    loadingService: ref.watch(loadingServiceProvider),
    loginRepository: ref.watch(loginRepositoryProvider),
  ),
);
