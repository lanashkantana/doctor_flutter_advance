import 'package:json_annotation/json_annotation.dart';

part 'sign_up_response.g.dart';

@JsonSerializable()
class SignUpResponse {
  String? message;
  @JsonKey(name: 'data')
  Userdata? userdata;
  bool? status;
  int? code;

  SignUpResponse({this.message, this.userdata, this.status, this.code});
    factory SignUpResponse.fromJson(Map<String, dynamic> json) => _$SignUpResponseFromJson(json);


  Map<String, dynamic> toJson() => _$SignUpResponseToJson(this);
}
@JsonSerializable()
class Userdata {
  String? token;
  @JsonKey(name: 'username')
  String? userName;

  Userdata({this.token, this.userName});
    factory Userdata.fromJson(Map<String, dynamic> json) => _$UserdataFromJson(json);


  Map<String, dynamic> toJson() => _$UserdataToJson(this);
}
