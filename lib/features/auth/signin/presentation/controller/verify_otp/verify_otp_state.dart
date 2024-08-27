part of 'verify_otp_cubit.dart';

@freezed
class VerifyOtpState with _$VerifyOtpState {
  const factory VerifyOtpState.initial() = _Initial;
  const factory VerifyOtpState.loading() = Loading;
  const factory VerifyOtpState.success(
      VerifyOtpResponse verifyOtpResponse, String token) = Success;
  const factory VerifyOtpState.error(String errorMessage) = Error;
}
