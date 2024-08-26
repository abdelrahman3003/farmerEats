part of 'signin_cubit.dart';

@freezed
class SigninState with _$SigninState {
  const factory SigninState.initial() = _Initial;
  const factory SigninState.loading() = Loading;
  const factory SigninState.success(SigninResponse signinresponse) = Success;
  const factory SigninState.error(String errorMessage) = Error;
}
