import 'package:flutter_riverpod/flutter_riverpod.dart';

final selectedCoursesProvider = StateNotifierProvider<SelectedCoursesNotifier, List<Course>>((ref) {
  return SelectedCoursesNotifier();
});

class Course {
  final String code;
  final String name;
  Course({required this.code, required this.name});
}

class SelectedCoursesNotifier extends StateNotifier<List<Course>> {
  SelectedCoursesNotifier() : super([]);

  void toggleCourse(Course course) {
    if (state.any((c) => c.code == course.code)) {
      state = state.where((c) => c.code != course.code).toList();
    } else {
      state = [...state, course];
    }
  }

  void clear() => state = [];
}