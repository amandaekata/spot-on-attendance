import 'package:dio/dio.dart';
import 'package:spot_on/src/exceptions/app_http_client_exception.dart';

class NotFoundException<T>
    extends AppNetworkResponseException<DioException, T> {
  NotFoundException({
    required super.message,
    required super.exception,
  });
}
