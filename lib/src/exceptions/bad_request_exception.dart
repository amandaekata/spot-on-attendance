import 'package:dio/dio.dart';
import 'package:spot_on/src/exceptions/app_http_client_exception.dart';

class BadRequestException<T>
    extends AppNetworkResponseException<DioException, T> {
  BadRequestException({
    required super.message,
    required super.exception,
  });
}
