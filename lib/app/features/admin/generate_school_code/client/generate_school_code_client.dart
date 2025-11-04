import 'package:dio/dio.dart';
import 'package:retrofit/error_logger.dart';
import 'package:retrofit/http.dart';
import 'package:spot_on/app/features/admin/generate_school_code/model/generate_school_code_request/generate_school_code_request.dart';
import 'package:spot_on/app/features/admin/generate_school_code/model/generate_school_code_response/school_code_response.dart';

part 'generate_school_code_client.g.dart';

@RestApi()
abstract class GenerateSchoolCodeClient {
  factory GenerateSchoolCodeClient(Dio dio, {String baseUrl}) =
      _GenerateSchoolCodeClient;

  static const version1 = 'v1';

  // Generate temporary School Code
  @POST('/$version1/api/admin/school-code')
  Future<SchoolCodeResponse> generateSchoolCode(
    @Body() GenerateSchoolCodeRequest request,
  );
}
