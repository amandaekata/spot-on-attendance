import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:spot_on/app/features/auth/interceptor/auth_interceptor.dart';
import 'package:talker/talker.dart';
import 'package:talker_dio_logger/talker_dio_logger.dart';

class DioService {
  DioService({required this.dio, required this.ref, this.talker}) {
    _init();
  }

  final Dio dio;
  final Talker? talker;
  final Ref ref;

  void _init() {
    // Setting your timeouts
    dio.options.connectTimeout = const Duration(seconds: 20);
    dio.options.receiveTimeout = const Duration(seconds: 30);

    // Set the default headers for all requests
    dio.options.headers = {
      'Content-Type': 'application/json',
      'Accept': 'application/json',
    };

    print('Dio baseUrl: ${dio.options.baseUrl}');
    dio.interceptors.addAll([
      AuthInterceptor(ref),
      InterceptorsWrapper(
        onRequest: (options, handler) {
          print('Request URL: ${options.uri}');
          print('Request Headers: ${options.headers}');
          return handler.next(options);
        },
      ),
      TalkerDioLogger(
        talker: talker,
        settings: const TalkerDioLoggerSettings(
          printRequestHeaders: true,
          printResponseHeaders: true,
          printResponseData: true,
        ),
      ),
    ]);
  }
}