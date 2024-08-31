import 'package:freezed_annotation/freezed_annotation.dart';
part 'signup_response.g.dart';

@JsonSerializable()
class SignupResponse {
  bool success;
  String message;
  String token;

  SignupResponse(
      {required this.success, required this.message, required this.token});
  factory SignupResponse.fromJson(Map<String, dynamic> json) =>
      _$SignupResponseFromJson(json);
}
