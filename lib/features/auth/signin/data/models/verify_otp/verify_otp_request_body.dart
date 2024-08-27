import 'package:freezed_annotation/freezed_annotation.dart';
part 'verify_otp_request_body.g.dart';
@JsonSerializable()
class VerifyOtpRequestBody {
  final String otp;

  VerifyOtpRequestBody({required this.otp});
  Map<String, dynamic> toJson() => _$VerifyOtpRequestBodyToJson(this);
}
