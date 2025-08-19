import 'package:freezed_annotation/freezed_annotation.dart';

part 'parent.freezed.dart';
part 'parent.g.dart';
//example response from login endpoint. This is like the user model . therefore, 'parent'
@freezed
class Parent with _$Parent {
  factory Parent({
    String? id,
    String? title,
    String? firstname,
    String? middlename,
    String? lastname,
    String? email,
    String? role,
  }) = _Parent;

  factory Parent.fromJson(Map<String, dynamic> json) => _$ParentFromJson(json);
}
