// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'course_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CourseListResponseImpl _$$CourseListResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$CourseListResponseImpl(
      success: json['success'] as bool,
      total: (json['total'] as num).toInt(),
      items: (json['items'] as List<dynamic>)
          .map((e) => CourseItem.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$CourseListResponseImplToJson(
        _$CourseListResponseImpl instance) =>
    <String, dynamic>{
      'success': instance.success,
      'total': instance.total,
      'items': instance.items,
    };

_$CourseItemImpl _$$CourseItemImplFromJson(Map<String, dynamic> json) =>
    _$CourseItemImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      code: json['code'] as String,
      year: (json['year'] as num).toInt(),
      courseTime: json['courseTime'] as String?,
      day: json['day'] as String?,
      institutionId: json['institutionId'] as String,
      departmentId: json['departmentId'] as String,
      educatorId: json['educatorId'] as String?,
      department:
          Department.fromJson(json['department'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$CourseItemImplToJson(_$CourseItemImpl instance) =>
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

_$DepartmentImpl _$$DepartmentImplFromJson(Map<String, dynamic> json) =>
    _$DepartmentImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      faculty: Faculty.fromJson(json['faculty'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$DepartmentImplToJson(_$DepartmentImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'faculty': instance.faculty,
    };

_$FacultyImpl _$$FacultyImplFromJson(Map<String, dynamic> json) =>
    _$FacultyImpl(
      id: json['id'] as String,
      name: json['name'] as String,
    );

Map<String, dynamic> _$$FacultyImplToJson(_$FacultyImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };
