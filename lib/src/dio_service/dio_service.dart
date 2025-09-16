import 'package:dio/dio.dart';
import 'package:talker/talker.dart';
import 'package:talker_dio_logger/talker_dio_logger.dart';

class DioService {
  DioService({required this.dio, this.talker}) {
    _init();
  }

  final Dio dio;
  final Talker? talker;

  void _init() {
    // Setting your timeouts
    dio.options.connectTimeout = const Duration(seconds: 20);
    dio.options.receiveTimeout = const Duration(seconds: 30);

   
    // Set the default headers for all requests
    dio.options.headers = {
      'Content-Type': 'application/json',
      'Accept': 'application/json',
    };

   
    dio.interceptors.add(
      TalkerDioLogger(
        talker: talker,
        settings: const TalkerDioLoggerSettings(
          printRequestHeaders: true,
          printResponseHeaders: true,
          printResponseData: true,
        ),
      ),
    );
  }
}