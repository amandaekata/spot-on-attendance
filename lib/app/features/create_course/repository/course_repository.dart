import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fpdart/fpdart.dart';
import 'package:spot_on/app/features/create_course/client/course_client.dart';
import 'package:spot_on/app/features/create_course/model/course_response.dart';
import 'package:spot_on/src/dio_service/dio_service.dart';
import 'package:spot_on/src/dio_service/dio_service_provider.dart';
import 'package:spot_on/src/exceptions/exceptions.dart';

abstract class CourseRepository {
  TaskEither<String, CourseListResponse> getCourses(String institutionId);
}

class CourseRepositoryImpl implements CourseRepository {
  CourseRepositoryImpl({required DioService dioService})
      : _client = CourseClient(dioService.dio);

  final CourseClient _client;

  @override
  TaskEither<String, CourseListResponse> getCourses(String institutionId) {
    return TaskEither.tryCatch(
      () => _client.getCourses(institutionId),
      (error, stackTrace) =>
          AppHttpClientException.parseException(error, s: stackTrace),
    );
  }
}

final courseRepositoryProvider = Provider<CourseRepository>(
  (ref) => CourseRepositoryImpl(dioService: ref.watch(dioServiceProvider)),
);