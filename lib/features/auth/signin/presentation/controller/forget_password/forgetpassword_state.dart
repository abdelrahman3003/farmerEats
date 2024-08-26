part of 'forgetpassword_cubit.dart';

@freezed
class ForgetpasswordState with _$ForgetpasswordState {
  const factory ForgetpasswordState.initial() = _Initial;
  const factory ForgetpasswordState.loading() = Loading;
  const factory ForgetpasswordState.success(ForgetPasswordResponse forgetPasswordResponse) = Success;
  const factory ForgetpasswordState.error(String errorMessage) = Error;
}
