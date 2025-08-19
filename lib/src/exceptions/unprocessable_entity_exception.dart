import 'package:dio/dio.dart';
import 'package:spot_on/src/exceptions/app_http_client_exception.dart';

class UnprocessableEntityException<T>
    extends AppNetworkResponseException<DioException, T> {
  UnprocessableEntityException({
    required super.message,
    required super.exception,
  });
}
