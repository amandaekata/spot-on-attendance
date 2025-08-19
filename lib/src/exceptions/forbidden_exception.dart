import 'package:dio/dio.dart';
import 'package:spot_on/src/exceptions/app_http_client_exception.dart';

class ForbiddenException<T>
    extends AppNetworkResponseException<DioException, T> {
  ForbiddenException({
    required super.message,
    required super.exception,
  });
}
