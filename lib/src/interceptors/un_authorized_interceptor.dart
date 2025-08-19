import 'dart:developer';

import 'package:dio/dio.dart';

class UnAuthorizedInterceptor extends Interceptor {
  UnAuthorizedInterceptor({required this.onAuthorized});

  final Future<void> Function()? onAuthorized;

  @override
  Future<void> onError(
    DioException err,
    ErrorInterceptorHandler handler,
  ) async {
    try {
      final statusCode = err.response?.statusCode;

      if (statusCode == 401) {
        await onAuthorized?.call();
      }
    } catch (e) {
      log('token not invalid $e');
    } finally {
      super.onError(err, handler);
    }
  }
}
