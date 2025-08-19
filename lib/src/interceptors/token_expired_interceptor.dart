import 'dart:developer';

import 'package:dio/dio.dart';

class TokenExpiredInterceptor extends Interceptor {
  TokenExpiredInterceptor({required this.onTokenExpired});

  final Future<void> Function()? onTokenExpired;

  @override
  Future<void> onError(
    DioException err,
    ErrorInterceptorHandler handler,
  ) async {
    try {
      final data = err.response!.data as Map<String, dynamic>;
      final message = data['message'] as String;

      if (message.toLowerCase().contains('token has expired')) {
        await onTokenExpired?.call();
      }
    } catch (e) {
      log('token has expired $e');
    } finally {
      super.onError(err, handler);
    }
  }
}
