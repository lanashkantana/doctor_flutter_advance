import 'package:flutter/material.dart';
import 'package:p1/core/routing/routes.dart';
import 'package:p1/features/login/ui/widgets/login.dart';
import 'package:p1/features/on_boarding_screen/on_boarding_screen.dart';

class AppRouter {
  Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.onBoardingScreen:
        return MaterialPageRoute(builder: (_) => OnBoardingScreen());

      case Routes.loginScreen:
        return MaterialPageRoute(builder: (_) => const LoginScreen());
      default:
        return MaterialPageRoute(
          builder:
              (_) => Scaffold(
                body: Center(
                  child: Text("No Route Define for ${settings.name}"),
                ),
              ),
        );
    }
  }
}
