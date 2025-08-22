import 'package:json_annotation/json_annotation.dart';

part 'sign_up_request_body.g.dart';

@JsonSerializable()
class SignUpRequestBody {

final String name;
final String email;
final String phone;
final String gender;
final String password;
@JsonKey(name: 'password_confirmation')
final String passwordConfirmation;

const SignUpRequestBody({required this.name,required this.email,required this.phone,required this.gender,required this.password,required this.passwordConfirmation});





  Map<String, dynamic> toJson() => _$SignUpRequestBodyToJson(this);


}