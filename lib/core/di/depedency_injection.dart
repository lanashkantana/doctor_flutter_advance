import 'package:dio/dio.dart';

import 'package:get_it/get_it.dart';
import 'package:p1/core/networking/api_services.dart';
import 'package:p1/core/networking/dio_factory.dart';
import 'package:p1/features/login/data/repository/login_repo.dart';
import 'package:p1/features/login/logic/login_cubit/login_cubit.dart';
import 'package:p1/features/sign_up/data/repo/sign_up_repo.dart';
import 'package:p1/features/sign_up/logic/sign_up_cubit/sign_up_cubit.dart';


final getIt = GetIt.instance;

Future<void> setupGetIt() async {
  // Dio & ApiService
  Dio dio = DioFactory.getDio();
  getIt.registerLazySingleton<ApiService>(() => ApiService(dio));

  // login
  getIt.registerLazySingleton<LoginRepo>(() => LoginRepo(getIt()));
  getIt.registerFactory<LoginCubit>(() => LoginCubit(getIt()));
  
  // sign up
  getIt.registerLazySingleton<SignUpRepo>(() => SignUpRepo(getIt()));
  getIt.registerFactory<SignUpCubit>(() => SignUpCubit(getIt()));
}