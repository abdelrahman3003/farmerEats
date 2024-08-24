
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import '../network/api_service.dart';
import '../network/dio_factory.dart';

final getit = GetIt.instance;
Future<void> setupGetit() async {
  Dio dio = DioFactory.getDio();
  getit.registerLazySingleton<ApiService>(() => ApiService(dio));

//   //login
//   getit.registerLazySingleton<LoginRepo>(() => LoginRepo(getit()));
//   getit.registerLazySingleton<LoginCubit>(() => LoginCubit(getit()));
// //signUp
//   getit.registerLazySingleton<SignupRepo>(() => SignupRepo(getit()));
//   getit.registerLazySingleton<SignupCubit>(() => SignupCubit(getit()));

// //home
//   getit.registerLazySingleton<HomeRepo>(() => HomeRepo(getit()));
//   getit.registerLazySingleton<HomeCubit>(() => HomeCubit(getit()));

}
