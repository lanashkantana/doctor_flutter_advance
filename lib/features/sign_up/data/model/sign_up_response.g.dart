// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sign_up_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SignUpResponse _$SignUpResponseFromJson(Map<String, dynamic> json) =>
    SignUpResponse(
      message: json['message'] as String?,
      userdata:
          json['data'] == null
              ? null
              : Userdata.fromJson(json['data'] as Map<String, dynamic>),
      status: json['status'] as bool?,
      code: (json['code'] as num?)?.toInt(),
    );

Map<String, dynamic> _$SignUpResponseToJson(SignUpResponse instance) =>
    <String, dynamic>{
      'message': instance.message,
      'data': instance.userdata,
      'status': instance.status,
      'code': instance.code,
    };

Userdata _$UserdataFromJson(Map<String, dynamic> json) => Userdata(
  token: json['token'] as String?,
  userName: json['username'] as String?,
);

Map<String, dynamic> _$UserdataToJson(Userdata instance) => <String, dynamic>{
  'token': instance.token,
  'username': instance.userName,
};
