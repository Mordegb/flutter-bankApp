import 'package:app1/common/constats/AppColors.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override

  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors:  [Color(0xFF2196F3), Color(0xFF03DAC6)],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Text(
          'D.Bank',
          style: TextStyle(
            fontSize: 60.0,
            fontWeight: FontWeight(600),
            color: AppColors.text,
          ),
        ),
      ),
    );
  }
}
