// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'course_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CourseListResponse _$CourseListResponseFromJson(Map<String, dynamic> json) =>
    _CourseListResponse(
      success: json['success'] as bool,
      total: (json['total'] as num).toInt(),
      items:
          (json['items'] as List<dynamic>)
              .map((e) => CourseItem.fromJson(e as Map<String, dynamic>))
              .toList(),
    );

Map<String, dynamic> _$CourseListResponseToJson(_CourseListResponse instance) =>
    <String, dynamic>{
      'success': instance.success,
      'total': instance.total,
      'items': instance.items,
    };

_CourseItem _$CourseItemFromJson(Map<String, dynamic> json) => _CourseItem(
  id: json['id'] as String,
  name: json['name'] as String,
  code: json['code'] as String,
  year: (json['year'] as num).toInt(),
  courseTime: json['courseTime'] as String?,
  day: json['day'] as String?,
  institutionId: json['institutionId'] as String,
  departmentId: json['departmentId'] as String,
  educatorId: json['educatorId'] as String?,
  department: Department.fromJson(json['department'] as Map<String, dynamic>),
);

Map<String, dynamic> _$CourseItemToJson(_CourseItem instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'code': instance.code,
      'year': instance.year,
      'courseTime': instance.courseTime,
      'day': instance.day,
      'institutionId': instance.institutionId,
      'departmentId': instance.departmentId,
      'educatorId': instance.educatorId,
      'department': instance.department,
    };

_Department _$DepartmentFromJson(Map<String, dynamic> json) => _Department(
  id: json['id'] as String,
  name: json['name'] as String,
  faculty: Faculty.fromJson(json['faculty'] as Map<String, dynamic>),
);

Map<String, dynamic> _$DepartmentToJson(_Department instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'faculty': instance.faculty,
    };

_Faculty _$FacultyFromJson(Map<String, dynamic> json) =>
    _Faculty(id: json['id'] as String, name: json['name'] as String);

Map<String, dynamic> _$FacultyToJson(_Faculty instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
};
