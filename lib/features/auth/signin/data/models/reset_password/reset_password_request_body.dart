import 'package:freezed_annotation/freezed_annotation.dart';
part 'reset_password_request_body.g.dart';

@JsonSerializable()
class ResetPasswordRequestBody {
  String token;
  String password;
  String cpassword;
  ResetPasswordRequestBody(
      {required this.token, required this.password, required this.cpassword});
  Map<String, dynamic> toJson() => _$ResetPasswordRequestBodyToJson(this);
}
