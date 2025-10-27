import 'dart:developer';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:spot_on/app/features/lecturer/dashboard_and_components/create_course/model/course_response.dart';
import 'package:spot_on/app/features/lecturer/dashboard_and_components/create_course/repository/course_repository.dart';

part 'course_provider.freezed.dart';

@freezed
class CourseState with _$CourseState {
  const factory CourseState.initial() = _Initial;
  const factory CourseState.loading() = _Loading;
  const factory CourseState.data(List<CourseItem> courses) = _Data;
  const factory CourseState.error(String message) = _Error;
}

class CourseNotifier extends StateNotifier<CourseState> {
  CourseNotifier(this._repository) : super(const CourseState.initial());

  final CourseRepository _repository;

  Future<void> getCourses({
    required String institutionId,
    required int year,
  }) async {
    state = const CourseState.loading();
    // Assuming the repository and client are updated to accept 'year'
    final result =
        await _repository.getCourses(institutionId, year: year).run();
    result.fold(
      (l) {
        log(l);
        state = CourseState.error(l);
      },
      (r) {
        log('API returned: ${r.items}');
        state = CourseState.data(r.items);
      },
    );
  }
}

final courseProvider = StateNotifierProvider<CourseNotifier, CourseState>(
  (ref) => CourseNotifier(ref.watch(courseRepositoryProvider)),
);
