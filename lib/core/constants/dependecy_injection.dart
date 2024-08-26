import 'package:dio/dio.dart';
import 'package:farmereats/features/auth/signin/data/api/signin_api.dart';
import 'package:farmereats/features/auth/signin/data/repos/signin_repo.dart';
import 'package:farmereats/features/auth/signin/presentation/controller/cubit/signin_cubit.dart';
import 'package:get_it/get_it.dart';

import '../network/dio_factory.dart';

final getit = GetIt.instance;
Future<void> setupGetit() async {
  Dio dio = DioFactory.getDio();
//  getit.registerLazySingleton<ApiService>(() => ApiService(dio));

  //login
  getit.registerLazySingleton<SigninApiService>(() => SigninApiService(dio));
  getit.registerLazySingleton<SigninRepo>(() => SigninRepo(getit()));
  getit.registerFactory<SigninCubit>(() => SigninCubit(getit()));
// //signUp
//   getit.registerLazySingleton<SignupRepo>(() => SignupRepo(getit()));
//   getit.registerLazySingleton<SignupCubit>(() => SignupCubit(getit()));

// //home
//   getit.registerLazySingleton<HomeRepo>(() => HomeRepo(getit()));
//   getit.registerLazySingleton<HomeCubit>(() => HomeCubit(getit()));
}
