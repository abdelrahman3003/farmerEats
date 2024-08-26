import 'package:freezed_annotation/freezed_annotation.dart';
part 'forget_password_request_body.g.dart';

@JsonSerializable()
class ForgetPasswordRequestBody {
  final String? mobile;

  ForgetPasswordRequestBody({required this.mobile});
  Map<String, dynamic> toJson() => _$ForgetPasswordRequestBodyToJson(this);
}
