import 'dart:developer';
import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:spot_on/app/features/auth/providers/auth_providers.dart';

class AuthInterceptor extends Interceptor {
  final Ref _ref;

  AuthInterceptor(this._ref);

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    const publicPaths = [
      '/v1/api/auth/login',
      '/v1/api/auth/student/login',
      '/v1/api/auth/educator/signup',
      '/v1/api/auth/student/signup',
    ];

    if (publicPaths.any((path) => options.path.contains(path))) {
      return handler.next(options);
    }

    final token = _ref.read(loginProviders).authToken;
    log('AuthInterceptor token: $token');

    if (token != null && token.isNotEmpty) {
      options.headers['Authorization'] = 'Bearer $token';
    }

    return handler.next(options);
  }
}