
import 'package:freezed_annotation/freezed_annotation.dart';
part 'forget_password_response.g.dart';
@JsonSerializable()
class ForgetPasswordResponse {
  bool? success;
  String? message;

  ForgetPasswordResponse({this.success, this.message});
       factory ForgetPasswordResponse.fromJson(Map<String, dynamic> json) => _$ForgetPasswordResponseFromJson(json);

}
