import "package:json_annotation/json_annotation.dart";

part 'user_info.g.dart';

enum Gender { F, M }

@JsonSerializable()
class UserInfo {
  final String name;
  final String email;
  final DateTime dob;
  final Gender gender;
  final String phoneNumber;
  final String occupation;
  final String address;

  UserInfo(
      {required this.name,
      required this.email,
      required this.dob,
      required this.gender,
      required this.phoneNumber,
      required this.occupation,
      required this.address});

  factory UserInfo.fromJson(Map<String, dynamic> json) =>
      _$UserInfoFromJson(json);

  Map<String, dynamic> toJson() => _$UserInfoToJson(this);
}
