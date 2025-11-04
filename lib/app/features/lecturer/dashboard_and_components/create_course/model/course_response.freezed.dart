// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'course_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CourseListResponse {

 bool get success; int get total; List<CourseItem> get items;
/// Create a copy of CourseListResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CourseListResponseCopyWith<CourseListResponse> get copyWith => _$CourseListResponseCopyWithImpl<CourseListResponse>(this as CourseListResponse, _$identity);

  /// Serializes this CourseListResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CourseListResponse&&(identical(other.success, success) || other.success == success)&&(identical(other.total, total) || other.total == total)&&const DeepCollectionEquality().equals(other.items, items));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,total,const DeepCollectionEquality().hash(items));

@override
String toString() {
  return 'CourseListResponse(success: $success, total: $total, items: $items)';
}


}

/// @nodoc
abstract mixin class $CourseListResponseCopyWith<$Res>  {
  factory $CourseListResponseCopyWith(CourseListResponse value, $Res Function(CourseListResponse) _then) = _$CourseListResponseCopyWithImpl;
@useResult
$Res call({
 bool success, int total, List<CourseItem> items
});




}
/// @nodoc
class _$CourseListResponseCopyWithImpl<$Res>
    implements $CourseListResponseCopyWith<$Res> {
  _$CourseListResponseCopyWithImpl(this._self, this._then);

  final CourseListResponse _self;
  final $Res Function(CourseListResponse) _then;

/// Create a copy of CourseListResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? success = null,Object? total = null,Object? items = null,}) {
  return _then(_self.copyWith(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,items: null == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as List<CourseItem>,
  ));
}

}


/// Adds pattern-matching-related methods to [CourseListResponse].
extension CourseListResponsePatterns on CourseListResponse {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CourseListResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CourseListResponse() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CourseListResponse value)  $default,){
final _that = this;
switch (_that) {
case _CourseListResponse():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CourseListResponse value)?  $default,){
final _that = this;
switch (_that) {
case _CourseListResponse() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool success,  int total,  List<CourseItem> items)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CourseListResponse() when $default != null:
return $default(_that.success,_that.total,_that.items);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool success,  int total,  List<CourseItem> items)  $default,) {final _that = this;
switch (_that) {
case _CourseListResponse():
return $default(_that.success,_that.total,_that.items);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool success,  int total,  List<CourseItem> items)?  $default,) {final _that = this;
switch (_that) {
case _CourseListResponse() when $default != null:
return $default(_that.success,_that.total,_that.items);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CourseListResponse implements CourseListResponse {
  const _CourseListResponse({required this.success, required this.total, required final  List<CourseItem> items}): _items = items;
  factory _CourseListResponse.fromJson(Map<String, dynamic> json) => _$CourseListResponseFromJson(json);

@override final  bool success;
@override final  int total;
 final  List<CourseItem> _items;
@override List<CourseItem> get items {
  if (_items is EqualUnmodifiableListView) return _items;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_items);
}


/// Create a copy of CourseListResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CourseListResponseCopyWith<_CourseListResponse> get copyWith => __$CourseListResponseCopyWithImpl<_CourseListResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CourseListResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CourseListResponse&&(identical(other.success, success) || other.success == success)&&(identical(other.total, total) || other.total == total)&&const DeepCollectionEquality().equals(other._items, _items));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,total,const DeepCollectionEquality().hash(_items));

@override
String toString() {
  return 'CourseListResponse(success: $success, total: $total, items: $items)';
}


}

/// @nodoc
abstract mixin class _$CourseListResponseCopyWith<$Res> implements $CourseListResponseCopyWith<$Res> {
  factory _$CourseListResponseCopyWith(_CourseListResponse value, $Res Function(_CourseListResponse) _then) = __$CourseListResponseCopyWithImpl;
@override @useResult
$Res call({
 bool success, int total, List<CourseItem> items
});




}
/// @nodoc
class __$CourseListResponseCopyWithImpl<$Res>
    implements _$CourseListResponseCopyWith<$Res> {
  __$CourseListResponseCopyWithImpl(this._self, this._then);

  final _CourseListResponse _self;
  final $Res Function(_CourseListResponse) _then;

/// Create a copy of CourseListResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? success = null,Object? total = null,Object? items = null,}) {
  return _then(_CourseListResponse(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,items: null == items ? _self._items : items // ignore: cast_nullable_to_non_nullable
as List<CourseItem>,
  ));
}


}


/// @nodoc
mixin _$CourseItem {

 String get id; String get name; String get code; int get year; String? get courseTime; String? get day; String get institutionId; String get departmentId; String? get educatorId; Department get department;
/// Create a copy of CourseItem
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CourseItemCopyWith<CourseItem> get copyWith => _$CourseItemCopyWithImpl<CourseItem>(this as CourseItem, _$identity);

  /// Serializes this CourseItem to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CourseItem&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.code, code) || other.code == code)&&(identical(other.year, year) || other.year == year)&&(identical(other.courseTime, courseTime) || other.courseTime == courseTime)&&(identical(other.day, day) || other.day == day)&&(identical(other.institutionId, institutionId) || other.institutionId == institutionId)&&(identical(other.departmentId, departmentId) || other.departmentId == departmentId)&&(identical(other.educatorId, educatorId) || other.educatorId == educatorId)&&(identical(other.department, department) || other.department == department));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,code,year,courseTime,day,institutionId,departmentId,educatorId,department);

@override
String toString() {
  return 'CourseItem(id: $id, name: $name, code: $code, year: $year, courseTime: $courseTime, day: $day, institutionId: $institutionId, departmentId: $departmentId, educatorId: $educatorId, department: $department)';
}


}

/// @nodoc
abstract mixin class $CourseItemCopyWith<$Res>  {
  factory $CourseItemCopyWith(CourseItem value, $Res Function(CourseItem) _then) = _$CourseItemCopyWithImpl;
@useResult
$Res call({
 String id, String name, String code, int year, String? courseTime, String? day, String institutionId, String departmentId, String? educatorId, Department department
});


$DepartmentCopyWith<$Res> get department;

}
/// @nodoc
class _$CourseItemCopyWithImpl<$Res>
    implements $CourseItemCopyWith<$Res> {
  _$CourseItemCopyWithImpl(this._self, this._then);

  final CourseItem _self;
  final $Res Function(CourseItem) _then;

/// Create a copy of CourseItem
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? code = null,Object? year = null,Object? courseTime = freezed,Object? day = freezed,Object? institutionId = null,Object? departmentId = null,Object? educatorId = freezed,Object? department = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String,year: null == year ? _self.year : year // ignore: cast_nullable_to_non_nullable
as int,courseTime: freezed == courseTime ? _self.courseTime : courseTime // ignore: cast_nullable_to_non_nullable
as String?,day: freezed == day ? _self.day : day // ignore: cast_nullable_to_non_nullable
as String?,institutionId: null == institutionId ? _self.institutionId : institutionId // ignore: cast_nullable_to_non_nullable
as String,departmentId: null == departmentId ? _self.departmentId : departmentId // ignore: cast_nullable_to_non_nullable
as String,educatorId: freezed == educatorId ? _self.educatorId : educatorId // ignore: cast_nullable_to_non_nullable
as String?,department: null == department ? _self.department : department // ignore: cast_nullable_to_non_nullable
as Department,
  ));
}
/// Create a copy of CourseItem
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DepartmentCopyWith<$Res> get department {
  
  return $DepartmentCopyWith<$Res>(_self.department, (value) {
    return _then(_self.copyWith(department: value));
  });
}
}


/// Adds pattern-matching-related methods to [CourseItem].
extension CourseItemPatterns on CourseItem {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CourseItem value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CourseItem() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CourseItem value)  $default,){
final _that = this;
switch (_that) {
case _CourseItem():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CourseItem value)?  $default,){
final _that = this;
switch (_that) {
case _CourseItem() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name,  String code,  int year,  String? courseTime,  String? day,  String institutionId,  String departmentId,  String? educatorId,  Department department)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CourseItem() when $default != null:
return $default(_that.id,_that.name,_that.code,_that.year,_that.courseTime,_that.day,_that.institutionId,_that.departmentId,_that.educatorId,_that.department);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name,  String code,  int year,  String? courseTime,  String? day,  String institutionId,  String departmentId,  String? educatorId,  Department department)  $default,) {final _that = this;
switch (_that) {
case _CourseItem():
return $default(_that.id,_that.name,_that.code,_that.year,_that.courseTime,_that.day,_that.institutionId,_that.departmentId,_that.educatorId,_that.department);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name,  String code,  int year,  String? courseTime,  String? day,  String institutionId,  String departmentId,  String? educatorId,  Department department)?  $default,) {final _that = this;
switch (_that) {
case _CourseItem() when $default != null:
return $default(_that.id,_that.name,_that.code,_that.year,_that.courseTime,_that.day,_that.institutionId,_that.departmentId,_that.educatorId,_that.department);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CourseItem implements CourseItem {
  const _CourseItem({required this.id, required this.name, required this.code, required this.year, this.courseTime, this.day, required this.institutionId, required this.departmentId, this.educatorId, required this.department});
  factory _CourseItem.fromJson(Map<String, dynamic> json) => _$CourseItemFromJson(json);

@override final  String id;
@override final  String name;
@override final  String code;
@override final  int year;
@override final  String? courseTime;
@override final  String? day;
@override final  String institutionId;
@override final  String departmentId;
@override final  String? educatorId;
@override final  Department department;

/// Create a copy of CourseItem
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CourseItemCopyWith<_CourseItem> get copyWith => __$CourseItemCopyWithImpl<_CourseItem>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CourseItemToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CourseItem&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.code, code) || other.code == code)&&(identical(other.year, year) || other.year == year)&&(identical(other.courseTime, courseTime) || other.courseTime == courseTime)&&(identical(other.day, day) || other.day == day)&&(identical(other.institutionId, institutionId) || other.institutionId == institutionId)&&(identical(other.departmentId, departmentId) || other.departmentId == departmentId)&&(identical(other.educatorId, educatorId) || other.educatorId == educatorId)&&(identical(other.department, department) || other.department == department));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,code,year,courseTime,day,institutionId,departmentId,educatorId,department);

@override
String toString() {
  return 'CourseItem(id: $id, name: $name, code: $code, year: $year, courseTime: $courseTime, day: $day, institutionId: $institutionId, departmentId: $departmentId, educatorId: $educatorId, department: $department)';
}


}

/// @nodoc
abstract mixin class _$CourseItemCopyWith<$Res> implements $CourseItemCopyWith<$Res> {
  factory _$CourseItemCopyWith(_CourseItem value, $Res Function(_CourseItem) _then) = __$CourseItemCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, String code, int year, String? courseTime, String? day, String institutionId, String departmentId, String? educatorId, Department department
});


@override $DepartmentCopyWith<$Res> get department;

}
/// @nodoc
class __$CourseItemCopyWithImpl<$Res>
    implements _$CourseItemCopyWith<$Res> {
  __$CourseItemCopyWithImpl(this._self, this._then);

  final _CourseItem _self;
  final $Res Function(_CourseItem) _then;

/// Create a copy of CourseItem
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? code = null,Object? year = null,Object? courseTime = freezed,Object? day = freezed,Object? institutionId = null,Object? departmentId = null,Object? educatorId = freezed,Object? department = null,}) {
  return _then(_CourseItem(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String,year: null == year ? _self.year : year // ignore: cast_nullable_to_non_nullable
as int,courseTime: freezed == courseTime ? _self.courseTime : courseTime // ignore: cast_nullable_to_non_nullable
as String?,day: freezed == day ? _self.day : day // ignore: cast_nullable_to_non_nullable
as String?,institutionId: null == institutionId ? _self.institutionId : institutionId // ignore: cast_nullable_to_non_nullable
as String,departmentId: null == departmentId ? _self.departmentId : departmentId // ignore: cast_nullable_to_non_nullable
as String,educatorId: freezed == educatorId ? _self.educatorId : educatorId // ignore: cast_nullable_to_non_nullable
as String?,department: null == department ? _self.department : department // ignore: cast_nullable_to_non_nullable
as Department,
  ));
}

/// Create a copy of CourseItem
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DepartmentCopyWith<$Res> get department {
  
  return $DepartmentCopyWith<$Res>(_self.department, (value) {
    return _then(_self.copyWith(department: value));
  });
}
}


/// @nodoc
mixin _$Department {

 String get id; String get name; Faculty get faculty;
/// Create a copy of Department
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DepartmentCopyWith<Department> get copyWith => _$DepartmentCopyWithImpl<Department>(this as Department, _$identity);

  /// Serializes this Department to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Department&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.faculty, faculty) || other.faculty == faculty));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,faculty);

@override
String toString() {
  return 'Department(id: $id, name: $name, faculty: $faculty)';
}


}

/// @nodoc
abstract mixin class $DepartmentCopyWith<$Res>  {
  factory $DepartmentCopyWith(Department value, $Res Function(Department) _then) = _$DepartmentCopyWithImpl;
@useResult
$Res call({
 String id, String name, Faculty faculty
});


$FacultyCopyWith<$Res> get faculty;

}
/// @nodoc
class _$DepartmentCopyWithImpl<$Res>
    implements $DepartmentCopyWith<$Res> {
  _$DepartmentCopyWithImpl(this._self, this._then);

  final Department _self;
  final $Res Function(Department) _then;

/// Create a copy of Department
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? faculty = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,faculty: null == faculty ? _self.faculty : faculty // ignore: cast_nullable_to_non_nullable
as Faculty,
  ));
}
/// Create a copy of Department
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FacultyCopyWith<$Res> get faculty {
  
  return $FacultyCopyWith<$Res>(_self.faculty, (value) {
    return _then(_self.copyWith(faculty: value));
  });
}
}


/// Adds pattern-matching-related methods to [Department].
extension DepartmentPatterns on Department {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Department value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Department() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Department value)  $default,){
final _that = this;
switch (_that) {
case _Department():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Department value)?  $default,){
final _that = this;
switch (_that) {
case _Department() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name,  Faculty faculty)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Department() when $default != null:
return $default(_that.id,_that.name,_that.faculty);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name,  Faculty faculty)  $default,) {final _that = this;
switch (_that) {
case _Department():
return $default(_that.id,_that.name,_that.faculty);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name,  Faculty faculty)?  $default,) {final _that = this;
switch (_that) {
case _Department() when $default != null:
return $default(_that.id,_that.name,_that.faculty);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Department implements Department {
  const _Department({required this.id, required this.name, required this.faculty});
  factory _Department.fromJson(Map<String, dynamic> json) => _$DepartmentFromJson(json);

@override final  String id;
@override final  String name;
@override final  Faculty faculty;

/// Create a copy of Department
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DepartmentCopyWith<_Department> get copyWith => __$DepartmentCopyWithImpl<_Department>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DepartmentToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Department&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.faculty, faculty) || other.faculty == faculty));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,faculty);

@override
String toString() {
  return 'Department(id: $id, name: $name, faculty: $faculty)';
}


}

/// @nodoc
abstract mixin class _$DepartmentCopyWith<$Res> implements $DepartmentCopyWith<$Res> {
  factory _$DepartmentCopyWith(_Department value, $Res Function(_Department) _then) = __$DepartmentCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, Faculty faculty
});


@override $FacultyCopyWith<$Res> get faculty;

}
/// @nodoc
class __$DepartmentCopyWithImpl<$Res>
    implements _$DepartmentCopyWith<$Res> {
  __$DepartmentCopyWithImpl(this._self, this._then);

  final _Department _self;
  final $Res Function(_Department) _then;

/// Create a copy of Department
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? faculty = null,}) {
  return _then(_Department(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,faculty: null == faculty ? _self.faculty : faculty // ignore: cast_nullable_to_non_nullable
as Faculty,
  ));
}

/// Create a copy of Department
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FacultyCopyWith<$Res> get faculty {
  
  return $FacultyCopyWith<$Res>(_self.faculty, (value) {
    return _then(_self.copyWith(faculty: value));
  });
}
}


/// @nodoc
mixin _$Faculty {

 String get id; String get name;
/// Create a copy of Faculty
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FacultyCopyWith<Faculty> get copyWith => _$FacultyCopyWithImpl<Faculty>(this as Faculty, _$identity);

  /// Serializes this Faculty to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Faculty&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name);

@override
String toString() {
  return 'Faculty(id: $id, name: $name)';
}


}

/// @nodoc
abstract mixin class $FacultyCopyWith<$Res>  {
  factory $FacultyCopyWith(Faculty value, $Res Function(Faculty) _then) = _$FacultyCopyWithImpl;
@useResult
$Res call({
 String id, String name
});




}
/// @nodoc
class _$FacultyCopyWithImpl<$Res>
    implements $FacultyCopyWith<$Res> {
  _$FacultyCopyWithImpl(this._self, this._then);

  final Faculty _self;
  final $Res Function(Faculty) _then;

/// Create a copy of Faculty
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [Faculty].
extension FacultyPatterns on Faculty {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Faculty value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Faculty() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Faculty value)  $default,){
final _that = this;
switch (_that) {
case _Faculty():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Faculty value)?  $default,){
final _that = this;
switch (_that) {
case _Faculty() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Faculty() when $default != null:
return $default(_that.id,_that.name);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name)  $default,) {final _that = this;
switch (_that) {
case _Faculty():
return $default(_that.id,_that.name);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name)?  $default,) {final _that = this;
switch (_that) {
case _Faculty() when $default != null:
return $default(_that.id,_that.name);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Faculty implements Faculty {
  const _Faculty({required this.id, required this.name});
  factory _Faculty.fromJson(Map<String, dynamic> json) => _$FacultyFromJson(json);

@override final  String id;
@override final  String name;

/// Create a copy of Faculty
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FacultyCopyWith<_Faculty> get copyWith => __$FacultyCopyWithImpl<_Faculty>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FacultyToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Faculty&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name);

@override
String toString() {
  return 'Faculty(id: $id, name: $name)';
}


}

/// @nodoc
abstract mixin class _$FacultyCopyWith<$Res> implements $FacultyCopyWith<$Res> {
  factory _$FacultyCopyWith(_Faculty value, $Res Function(_Faculty) _then) = __$FacultyCopyWithImpl;
@override @useResult
$Res call({
 String id, String name
});




}
/// @nodoc
class __$FacultyCopyWithImpl<$Res>
    implements _$FacultyCopyWith<$Res> {
  __$FacultyCopyWithImpl(this._self, this._then);

  final _Faculty _self;
  final $Res Function(_Faculty) _then;

/// Create a copy of Faculty
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,}) {
  return _then(_Faculty(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
