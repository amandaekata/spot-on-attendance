import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fpdart/fpdart.dart';
import 'package:spot_on/app/features/admin/generate_school_code/client/generate_school_code_client.dart';
import 'package:spot_on/app/features/admin/generate_school_code/model/generate_school_code_request/generate_school_code_request.dart';
import 'package:spot_on/app/features/admin/generate_school_code/model/generate_school_code_response/school_code_response.dart';
import 'package:spot_on/src/dio_service/dio_service.dart';
import 'package:spot_on/src/dio_service/dio_service_provider.dart';
import 'package:spot_on/src/exceptions/exceptions.dart';

part 'generate_school_code_repository_impl.dart';

abstract class GenerateSchoolCodeRepository {
  TaskEither<String, SchoolCodeResponse> generateSchoolCode(
    GenerateSchoolCodeRequest request,
  );
}