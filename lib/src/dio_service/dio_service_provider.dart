import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:spot_on/src/dio_service/dio_service.dart';

/// dio service provider
final dioServiceProvider = Provider<DioService>((ref) {
  return DioService(
    dio: Dio(
      BaseOptions(
        baseUrl: dotenv.env['BASE_URL'] ?? '',
        // check the environment variable
      ),
    ),
    // add interceptors
    // talker: logger,
  );
});
