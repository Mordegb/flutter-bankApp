import 'package:app1/features/onBoard/on_board_page.dart';
// import 'package:app1/features/splash/splash_page.dart';
import 'package:flutter/material.dart';
// import 'features/splash/splash_page.dart';flu

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      // home: SplashPage(),
      home: OnboardPage(),
    );
  }
}
