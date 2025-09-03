import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';
part 'user.g.dart';

//example response from login endpoint. This is like the user model .
@freezed
class User with _$User {
  factory User({
    String? id,
    String? title,
    String? firstname,
    String? middlename,
    String? lastname,
    String? email,
    String? role,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}
