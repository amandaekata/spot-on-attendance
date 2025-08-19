import 'package:dio/dio.dart';

import 'package:spot_on/src/exceptions/app_http_client_exception.dart';

class UnauthorizedException<T>
    extends AppNetworkResponseException<DioException, T> {
  UnauthorizedException({
    required super.message,
    required super.exception,
  });
}
