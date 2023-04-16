// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserInfo _$UserInfoFromJson(Map<String, dynamic> json) => UserInfo(
      name: json['name'] as String,
      email: json['email'] as String,
      dob: DateTime.parse(json['dob'] as String),
      gender: $enumDecode(_$GenderEnumMap, json['gender']),
      phoneNumber: json['phoneNumber'] as String,
      occupation: json['occupation'] as String,
      address: json['address'] as String,
    );

Map<String, dynamic> _$UserInfoToJson(UserInfo instance) => <String, dynamic>{
      'name': instance.name,
      'email': instance.email,
      'dob': instance.dob.toIso8601String(),
      'gender': _$GenderEnumMap[instance.gender]!,
      'phoneNumber': instance.phoneNumber,
      'occupation': instance.occupation,
      'address': instance.address,
    };

const _$GenderEnumMap = {
  Gender.F: 'F',
  Gender.M: 'M',
};
