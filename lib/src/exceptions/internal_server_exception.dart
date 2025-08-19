import 'package:dio/dio.dart';
import 'package:spot_on/src/exceptions/app_http_client_exception.dart';

class InternalServerException
    extends AppNetworkResponseException<DioException, Map<String, dynamic>> {
  InternalServerException({
    required super.message,
    required super.exception,
  });
}
