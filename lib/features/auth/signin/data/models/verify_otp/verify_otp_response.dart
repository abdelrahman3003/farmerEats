import 'package:freezed_annotation/freezed_annotation.dart';
part 'verify_otp_response.g.dart';

@JsonSerializable()
class VerifyOtpResponse {
  bool success;
  String message;
  String token;

  VerifyOtpResponse(
      {required this.success, required this.message, required this.token});

  factory VerifyOtpResponse.fromJson(Map<String, dynamic> json) =>
      _$VerifyOtpResponseFromJson(json);
}
