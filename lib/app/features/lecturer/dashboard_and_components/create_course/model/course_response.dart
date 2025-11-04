import 'package:freezed_annotation/freezed_annotation.dart';

part 'course_response.freezed.dart';
part 'course_response.g.dart';

@freezed
abstract class CourseListResponse with _$CourseListResponse {
  const factory CourseListResponse({
    required bool success,
    required int total,
    required List<CourseItem> items,
  }) = _CourseListResponse;

  factory CourseListResponse.fromJson(Map<String, dynamic> json) =>
      _$CourseListResponseFromJson(json);
}

@freezed
abstract class CourseItem with _$CourseItem {
  const factory CourseItem({
    required String id,
    required String name,
    required String code,
    required int year,
    String? courseTime,
    String? day,
    required String institutionId,
    required String departmentId,
    String? educatorId,
    required Department department,
  }) = _CourseItem;

  factory CourseItem.fromJson(Map<String, dynamic> json) =>
      _$CourseItemFromJson(json);
}

@freezed
abstract class Department with _$Department {
  const factory Department({
    required String id,
    required String name,
    required Faculty faculty,
  }) = _Department;

  factory Department.fromJson(Map<String, dynamic> json) =>
      _$DepartmentFromJson(json);
}

@freezed
abstract class Faculty with _$Faculty {
  const factory Faculty({
    required String id,
    required String name,
  }) = _Faculty;

  factory Faculty.fromJson(Map<String, dynamic> json) =>
      _$FacultyFromJson(json);
}