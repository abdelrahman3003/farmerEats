import 'package:freezed_annotation/freezed_annotation.dart';
part 'rest_password_response.g.dart';

@JsonSerializable()
class ResetPasswordResponse {
  bool success;
  String message;
  bool? isVerified;
  ResetPasswordResponse(
      {required this.success, required this.message, this.isVerified});
  factory ResetPasswordResponse.fromJson(Map<String, dynamic> json) =>
      _$ResetPasswordResponseFromJson(json);
}
