import 'package:bloccounter/repository/authentication_repository/authentication_repository.dart';
import 'package:bloccounter/repository/user_repository/user_repository.dart';
import 'package:bloccounter/services/dio_client.dart';
import 'package:bloccounter/services/post/post_service.dart';
import 'package:get_it/get_it.dart';

import '../app_routes/app_pages.gr.dart';
import '../repository/post_repository.dart';

final getIt = GetIt.I;

void setupDependencies() {
  getIt.registerSingleton(DioModule());
  getIt.registerSingleton(AppRouter());
  getIt.registerSingleton(AuthenticationRepository());
  getIt.registerSingleton(UserRepository());
  getIt.registerLazySingleton<PostService>(
      () => PostService(getIt.get<DioModule>().dio));
  getIt.registerLazySingleton<PostRepository>(() => PostRepository());
}
