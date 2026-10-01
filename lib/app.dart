import 'package:app1/common/app_routes.dart';
import 'package:app1/features/home/home_page.dart';
import 'package:app1/features/onBoard/on_board_page.dart';
import 'package:app1/features/splash/splash_page.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     initialRoute: AppRoutes.splash,
     routes: {
      AppRoutes.splash: (context) => const SplashPage(),
      AppRoutes.onboard: (context) => const OnboardPage(),
      AppRoutes.home: (context) => const HomePage(),
     },
    );
  }
}
