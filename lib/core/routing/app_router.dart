import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:p1/core/di/depedency_injection.dart';
import 'package:p1/core/routing/routes.dart';
import 'package:p1/features/home_Screen/ui/home_screen.dart';
import 'package:p1/features/login/logic/login_cubit/login_cubit.dart';
import 'package:p1/features/login/ui/login_screen.dart';
import 'package:p1/features/on_boarding_screen/on_boarding_screen.dart';
import 'package:p1/features/sign_up/logic/sign_up_cubit/sign_up_cubit.dart';
import 'package:p1/features/sign_up/ui/sign_up_screen.dart';

class AppRouter {
  Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.onBoardingScreen:
        return MaterialPageRoute(builder: (_) => OnBoardingScreen());

        
      case Routes.signUpScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (BuildContext context) => getIt<SignUpCubit>(),
            child: const SignupScreen(),
          ),
        );

      case Routes.loginScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (BuildContext context) => getIt<LoginCubit>(),
            child: const LoginScreen(),
          ),
        );
        
      case Routes.homeScreen:
        return MaterialPageRoute(builder: (_) => HomeScreen());
        
    

      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text("No Route Defined for ${settings.name}"),
            ),
          ),
        );
    }
  }
}