import 'package:bloccounter/app_routes/app_pages.gr.dart';
import 'package:bloccounter/locator/service_locator.dart';
import 'package:bloccounter/repository/authentication_repository/authentication_repository.dart';
import 'package:bloccounter/repository/user_repository/user_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

import 'bloc/authentication_bloc/authentication_bloc.dart';
import 'bloc/product_bloc/product_bloc.dart';

void main() {
  setupDependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => ProductBloc()),
        BlocProvider(
            create: (context) => AuthenticationBloc(
                authenticationRepository: GetIt.I<AuthenticationRepository>(),
                userRepository: GetIt.I<UserRepository>())),
      ],
      child: MaterialApp.router(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        routerDelegate: GetIt.I<AppRouter>().delegate(),
        routeInformationParser: GetIt.I<AppRouter>().defaultRouteParser(),
      ),
    );
  }
}
