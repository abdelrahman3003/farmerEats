import 'package:dio/dio.dart';
import 'package:farmereats/features/auth/signin/data/api/forget_password_api.dart';
import 'package:farmereats/features/auth/signin/data/api/reset_password_api.dart';
import 'package:farmereats/features/auth/signin/data/api/signin_api.dart';
import 'package:farmereats/features/auth/signin/data/api/verify_otp_api.dart';
import 'package:farmereats/features/auth/signin/data/repos/forget_password_repo.dart';
import 'package:farmereats/features/auth/signin/data/repos/reset_password_repo.dart';
import 'package:farmereats/features/auth/signin/data/repos/signin_repo.dart';
import 'package:farmereats/features/auth/signin/data/repos/verify_otp_repo.dart';
import 'package:farmereats/features/auth/signin/presentation/controller/forget_password/forgetpassword_cubit.dart';
import 'package:farmereats/features/auth/signin/presentation/controller/reset_password/reset_password_cubit.dart';
import 'package:farmereats/features/auth/signin/presentation/controller/signin/signin_cubit.dart';
import 'package:farmereats/features/auth/signin/presentation/controller/verify_otp/verify_otp_cubit.dart';
import 'package:farmereats/features/auth/signup/data/api/signup-api.dart';
import 'package:get_it/get_it.dart';

import '../../features/auth/signup/data/repos/signup_repo.dart';
import '../../features/auth/signup/presentation/controller/signup/signup_cubit.dart';
import '../network/dio_factory.dart';

final getit = GetIt.instance;
Future<void> setupGetit() async {
  Dio dio = DioFactory.getDio();


  //login
  getit.registerLazySingleton<SigninApiService>(() => SigninApiService(dio));
  getit.registerLazySingleton<SigninRepo>(() => SigninRepo(getit()));
  getit.registerFactory<SigninCubit>(() => SigninCubit(getit()));

  //forget password
  getit.registerLazySingleton<ForgetPasswordApi>(() => ForgetPasswordApi(dio));
  getit.registerLazySingleton<ForgetPasswordRepo>(
      () => ForgetPasswordRepo(getit()));
  getit
      .registerFactory<ForgetpasswordCubit>(() => ForgetpasswordCubit(getit()));

  //verify otp
  getit.registerLazySingleton<VerifyOtpApi>(() => VerifyOtpApi(dio));
  getit.registerLazySingleton<VerifyOtpRepo>(() => VerifyOtpRepo(getit()));
  getit.registerFactory<VerifyOtpCubit>(() => VerifyOtpCubit(getit()));

  //reset password
  getit.registerLazySingleton<ResetPasswordApi>(() => ResetPasswordApi(dio));
  getit.registerLazySingleton<ResetPasswordRepo>(
      () => ResetPasswordRepo(getit()));
  getit.registerFactory<ResetPasswordCubit>(() => ResetPasswordCubit(getit()));

  //signUp
  getit.registerLazySingleton<SignupApi>(() => SignupApi(dio));
  getit.registerLazySingleton<SignupRepo>(() => SignupRepo(getit()));
  getit.registerLazySingleton<SignupCubit>(() => SignupCubit(getit()));


}
