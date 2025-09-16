import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:spot_on/app/features/create_course/model/course_response.dart';

part 'course_client.g.dart';

@RestApi()
abstract class CourseClient {
  factory CourseClient(Dio dio, {String baseUrl}) = _CourseClient;

  static const version1 = 'v1';

  @GET('/$version1/api/courses/courses')
  Future<CourseListResponse> getCourses(
    @Query('institutionId') String institutionId,
  );
}