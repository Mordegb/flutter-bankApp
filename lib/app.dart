import 'package:app1/features/onBoard/onBoard_page.dart';
import 'package:app1/features/splash/splash_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'features/splash/splash_page.dart';

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
