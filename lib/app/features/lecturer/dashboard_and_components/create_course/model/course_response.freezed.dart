// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'course_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CourseListResponse _$CourseListResponseFromJson(Map<String, dynamic> json) {
  return _CourseListResponse.fromJson(json);
}

/// @nodoc
mixin _$CourseListResponse {
  bool get success => throw _privateConstructorUsedError;
  int get total => throw _privateConstructorUsedError;
  List<CourseItem> get items => throw _privateConstructorUsedError;

  /// Serializes this CourseListResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CourseListResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CourseListResponseCopyWith<CourseListResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CourseListResponseCopyWith<$Res> {
  factory $CourseListResponseCopyWith(
          CourseListResponse value, $Res Function(CourseListResponse) then) =
      _$CourseListResponseCopyWithImpl<$Res, CourseListResponse>;
  @useResult
  $Res call({bool success, int total, List<CourseItem> items});
}

/// @nodoc
class _$CourseListResponseCopyWithImpl<$Res, $Val extends CourseListResponse>
    implements $CourseListResponseCopyWith<$Res> {
  _$CourseListResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CourseListResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? total = null,
    Object? items = null,
  }) {
    return _then(_value.copyWith(
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      items: null == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<CourseItem>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CourseListResponseImplCopyWith<$Res>
    implements $CourseListResponseCopyWith<$Res> {
  factory _$$CourseListResponseImplCopyWith(_$CourseListResponseImpl value,
          $Res Function(_$CourseListResponseImpl) then) =
      __$$CourseListResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool success, int total, List<CourseItem> items});
}

/// @nodoc
class __$$CourseListResponseImplCopyWithImpl<$Res>
    extends _$CourseListResponseCopyWithImpl<$Res, _$CourseListResponseImpl>
    implements _$$CourseListResponseImplCopyWith<$Res> {
  __$$CourseListResponseImplCopyWithImpl(_$CourseListResponseImpl _value,
      $Res Function(_$CourseListResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of CourseListResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? total = null,
    Object? items = null,
  }) {
    return _then(_$CourseListResponseImpl(
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      items: null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<CourseItem>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CourseListResponseImpl implements _CourseListResponse {
  const _$CourseListResponseImpl(
      {required this.success,
      required this.total,
      required final List<CourseItem> items})
      : _items = items;

  factory _$CourseListResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$CourseListResponseImplFromJson(json);

  @override
  final bool success;
  @override
  final int total;
  final List<CourseItem> _items;
  @override
  List<CourseItem> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  String toString() {
    return 'CourseListResponse(success: $success, total: $total, items: $items)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CourseListResponseImpl &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.total, total) || other.total == total) &&
            const DeepCollectionEquality().equals(other._items, _items));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, success, total, const DeepCollectionEquality().hash(_items));

  /// Create a copy of CourseListResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CourseListResponseImplCopyWith<_$CourseListResponseImpl> get copyWith =>
      __$$CourseListResponseImplCopyWithImpl<_$CourseListResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CourseListResponseImplToJson(
      this,
    );
  }
}

abstract class _CourseListResponse implements CourseListResponse {
  const factory _CourseListResponse(
      {required final bool success,
      required final int total,
      required final List<CourseItem> items}) = _$CourseListResponseImpl;

  factory _CourseListResponse.fromJson(Map<String, dynamic> json) =
      _$CourseListResponseImpl.fromJson;

  @override
  bool get success;
  @override
  int get total;
  @override
  List<CourseItem> get items;

  /// Create a copy of CourseListResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CourseListResponseImplCopyWith<_$CourseListResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CourseItem _$CourseItemFromJson(Map<String, dynamic> json) {
  return _CourseItem.fromJson(json);
}

/// @nodoc
mixin _$CourseItem {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get code => throw _privateConstructorUsedError;
  int get year => throw _privateConstructorUsedError;
  String? get courseTime => throw _privateConstructorUsedError;
  String? get day => throw _privateConstructorUsedError;
  String get institutionId => throw _privateConstructorUsedError;
  String get departmentId => throw _privateConstructorUsedError;
  String? get educatorId => throw _privateConstructorUsedError;
  Department get department => throw _privateConstructorUsedError;

  /// Serializes this CourseItem to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CourseItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CourseItemCopyWith<CourseItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CourseItemCopyWith<$Res> {
  factory $CourseItemCopyWith(
          CourseItem value, $Res Function(CourseItem) then) =
      _$CourseItemCopyWithImpl<$Res, CourseItem>;
  @useResult
  $Res call(
      {String id,
      String name,
      String code,
      int year,
      String? courseTime,
      String? day,
      String institutionId,
      String departmentId,
      String? educatorId,
      Department department});

  $DepartmentCopyWith<$Res> get department;
}

/// @nodoc
class _$CourseItemCopyWithImpl<$Res, $Val extends CourseItem>
    implements $CourseItemCopyWith<$Res> {
  _$CourseItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CourseItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? code = null,
    Object? year = null,
    Object? courseTime = freezed,
    Object? day = freezed,
    Object? institutionId = null,
    Object? departmentId = null,
    Object? educatorId = freezed,
    Object? department = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      year: null == year
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as int,
      courseTime: freezed == courseTime
          ? _value.courseTime
          : courseTime // ignore: cast_nullable_to_non_nullable
              as String?,
      day: freezed == day
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as String?,
      institutionId: null == institutionId
          ? _value.institutionId
          : institutionId // ignore: cast_nullable_to_non_nullable
              as String,
      departmentId: null == departmentId
          ? _value.departmentId
          : departmentId // ignore: cast_nullable_to_non_nullable
              as String,
      educatorId: freezed == educatorId
          ? _value.educatorId
          : educatorId // ignore: cast_nullable_to_non_nullable
              as String?,
      department: null == department
          ? _value.department
          : department // ignore: cast_nullable_to_non_nullable
              as Department,
    ) as $Val);
  }

  /// Create a copy of CourseItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DepartmentCopyWith<$Res> get department {
    return $DepartmentCopyWith<$Res>(_value.department, (value) {
      return _then(_value.copyWith(department: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CourseItemImplCopyWith<$Res>
    implements $CourseItemCopyWith<$Res> {
  factory _$$CourseItemImplCopyWith(
          _$CourseItemImpl value, $Res Function(_$CourseItemImpl) then) =
      __$$CourseItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      String code,
      int year,
      String? courseTime,
      String? day,
      String institutionId,
      String departmentId,
      String? educatorId,
      Department department});

  @override
  $DepartmentCopyWith<$Res> get department;
}

/// @nodoc
class __$$CourseItemImplCopyWithImpl<$Res>
    extends _$CourseItemCopyWithImpl<$Res, _$CourseItemImpl>
    implements _$$CourseItemImplCopyWith<$Res> {
  __$$CourseItemImplCopyWithImpl(
      _$CourseItemImpl _value, $Res Function(_$CourseItemImpl) _then)
      : super(_value, _then);

  /// Create a copy of CourseItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? code = null,
    Object? year = null,
    Object? courseTime = freezed,
    Object? day = freezed,
    Object? institutionId = null,
    Object? departmentId = null,
    Object? educatorId = freezed,
    Object? department = null,
  }) {
    return _then(_$CourseItemImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      year: null == year
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as int,
      courseTime: freezed == courseTime
          ? _value.courseTime
          : courseTime // ignore: cast_nullable_to_non_nullable
              as String?,
      day: freezed == day
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as String?,
      institutionId: null == institutionId
          ? _value.institutionId
          : institutionId // ignore: cast_nullable_to_non_nullable
              as String,
      departmentId: null == departmentId
          ? _value.departmentId
          : departmentId // ignore: cast_nullable_to_non_nullable
              as String,
      educatorId: freezed == educatorId
          ? _value.educatorId
          : educatorId // ignore: cast_nullable_to_non_nullable
              as String?,
      department: null == department
          ? _value.department
          : department // ignore: cast_nullable_to_non_nullable
              as Department,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CourseItemImpl implements _CourseItem {
  const _$CourseItemImpl(
      {required this.id,
      required this.name,
      required this.code,
      required this.year,
      this.courseTime,
      this.day,
      required this.institutionId,
      required this.departmentId,
      this.educatorId,
      required this.department});

  factory _$CourseItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$CourseItemImplFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String code;
  @override
  final int year;
  @override
  final String? courseTime;
  @override
  final String? day;
  @override
  final String institutionId;
  @override
  final String departmentId;
  @override
  final String? educatorId;
  @override
  final Department department;

  @override
  String toString() {
    return 'CourseItem(id: $id, name: $name, code: $code, year: $year, courseTime: $courseTime, day: $day, institutionId: $institutionId, departmentId: $departmentId, educatorId: $educatorId, department: $department)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CourseItemImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.year, year) || other.year == year) &&
            (identical(other.courseTime, courseTime) ||
                other.courseTime == courseTime) &&
            (identical(other.day, day) || other.day == day) &&
            (identical(other.institutionId, institutionId) ||
                other.institutionId == institutionId) &&
            (identical(other.departmentId, departmentId) ||
                other.departmentId == departmentId) &&
            (identical(other.educatorId, educatorId) ||
                other.educatorId == educatorId) &&
            (identical(other.department, department) ||
                other.department == department));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, code, year, courseTime,
      day, institutionId, departmentId, educatorId, department);

  /// Create a copy of CourseItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CourseItemImplCopyWith<_$CourseItemImpl> get copyWith =>
      __$$CourseItemImplCopyWithImpl<_$CourseItemImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CourseItemImplToJson(
      this,
    );
  }
}

abstract class _CourseItem implements CourseItem {
  const factory _CourseItem(
      {required final String id,
      required final String name,
      required final String code,
      required final int year,
      final String? courseTime,
      final String? day,
      required final String institutionId,
      required final String departmentId,
      final String? educatorId,
      required final Department department}) = _$CourseItemImpl;

  factory _CourseItem.fromJson(Map<String, dynamic> json) =
      _$CourseItemImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String get code;
  @override
  int get year;
  @override
  String? get courseTime;
  @override
  String? get day;
  @override
  String get institutionId;
  @override
  String get departmentId;
  @override
  String? get educatorId;
  @override
  Department get department;

  /// Create a copy of CourseItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CourseItemImplCopyWith<_$CourseItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Department _$DepartmentFromJson(Map<String, dynamic> json) {
  return _Department.fromJson(json);
}

/// @nodoc
mixin _$Department {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  Faculty get faculty => throw _privateConstructorUsedError;

  /// Serializes this Department to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Department
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DepartmentCopyWith<Department> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DepartmentCopyWith<$Res> {
  factory $DepartmentCopyWith(
          Department value, $Res Function(Department) then) =
      _$DepartmentCopyWithImpl<$Res, Department>;
  @useResult
  $Res call({String id, String name, Faculty faculty});

  $FacultyCopyWith<$Res> get faculty;
}

/// @nodoc
class _$DepartmentCopyWithImpl<$Res, $Val extends Department>
    implements $DepartmentCopyWith<$Res> {
  _$DepartmentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Department
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? faculty = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      faculty: null == faculty
          ? _value.faculty
          : faculty // ignore: cast_nullable_to_non_nullable
              as Faculty,
    ) as $Val);
  }

  /// Create a copy of Department
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FacultyCopyWith<$Res> get faculty {
    return $FacultyCopyWith<$Res>(_value.faculty, (value) {
      return _then(_value.copyWith(faculty: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DepartmentImplCopyWith<$Res>
    implements $DepartmentCopyWith<$Res> {
  factory _$$DepartmentImplCopyWith(
          _$DepartmentImpl value, $Res Function(_$DepartmentImpl) then) =
      __$$DepartmentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String name, Faculty faculty});

  @override
  $FacultyCopyWith<$Res> get faculty;
}

/// @nodoc
class __$$DepartmentImplCopyWithImpl<$Res>
    extends _$DepartmentCopyWithImpl<$Res, _$DepartmentImpl>
    implements _$$DepartmentImplCopyWith<$Res> {
  __$$DepartmentImplCopyWithImpl(
      _$DepartmentImpl _value, $Res Function(_$DepartmentImpl) _then)
      : super(_value, _then);

  /// Create a copy of Department
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? faculty = null,
  }) {
    return _then(_$DepartmentImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      faculty: null == faculty
          ? _value.faculty
          : faculty // ignore: cast_nullable_to_non_nullable
              as Faculty,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DepartmentImpl implements _Department {
  const _$DepartmentImpl(
      {required this.id, required this.name, required this.faculty});

  factory _$DepartmentImpl.fromJson(Map<String, dynamic> json) =>
      _$$DepartmentImplFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final Faculty faculty;

  @override
  String toString() {
    return 'Department(id: $id, name: $name, faculty: $faculty)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DepartmentImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.faculty, faculty) || other.faculty == faculty));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, faculty);

  /// Create a copy of Department
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DepartmentImplCopyWith<_$DepartmentImpl> get copyWith =>
      __$$DepartmentImplCopyWithImpl<_$DepartmentImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DepartmentImplToJson(
      this,
    );
  }
}

abstract class _Department implements Department {
  const factory _Department(
      {required final String id,
      required final String name,
      required final Faculty faculty}) = _$DepartmentImpl;

  factory _Department.fromJson(Map<String, dynamic> json) =
      _$DepartmentImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  Faculty get faculty;

  /// Create a copy of Department
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DepartmentImplCopyWith<_$DepartmentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Faculty _$FacultyFromJson(Map<String, dynamic> json) {
  return _Faculty.fromJson(json);
}

/// @nodoc
mixin _$Faculty {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  /// Serializes this Faculty to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Faculty
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FacultyCopyWith<Faculty> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FacultyCopyWith<$Res> {
  factory $FacultyCopyWith(Faculty value, $Res Function(Faculty) then) =
      _$FacultyCopyWithImpl<$Res, Faculty>;
  @useResult
  $Res call({String id, String name});
}

/// @nodoc
class _$FacultyCopyWithImpl<$Res, $Val extends Faculty>
    implements $FacultyCopyWith<$Res> {
  _$FacultyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Faculty
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FacultyImplCopyWith<$Res> implements $FacultyCopyWith<$Res> {
  factory _$$FacultyImplCopyWith(
          _$FacultyImpl value, $Res Function(_$FacultyImpl) then) =
      __$$FacultyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String name});
}

/// @nodoc
class __$$FacultyImplCopyWithImpl<$Res>
    extends _$FacultyCopyWithImpl<$Res, _$FacultyImpl>
    implements _$$FacultyImplCopyWith<$Res> {
  __$$FacultyImplCopyWithImpl(
      _$FacultyImpl _value, $Res Function(_$FacultyImpl) _then)
      : super(_value, _then);

  /// Create a copy of Faculty
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_$FacultyImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FacultyImpl implements _Faculty {
  const _$FacultyImpl({required this.id, required this.name});

  factory _$FacultyImpl.fromJson(Map<String, dynamic> json) =>
      _$$FacultyImplFromJson(json);

  @override
  final String id;
  @override
  final String name;

  @override
  String toString() {
    return 'Faculty(id: $id, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FacultyImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  /// Create a copy of Faculty
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FacultyImplCopyWith<_$FacultyImpl> get copyWith =>
      __$$FacultyImplCopyWithImpl<_$FacultyImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FacultyImplToJson(
      this,
    );
  }
}

abstract class _Faculty implements Faculty {
  const factory _Faculty(
      {required final String id, required final String name}) = _$FacultyImpl;

  factory _Faculty.fromJson(Map<String, dynamic> json) = _$FacultyImpl.fromJson;

  @override
  String get id;
  @override
  String get name;

  /// Create a copy of Faculty
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FacultyImplCopyWith<_$FacultyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
