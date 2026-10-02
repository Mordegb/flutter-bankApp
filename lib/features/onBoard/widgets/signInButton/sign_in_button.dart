import 'package:D.bank/common/app_routes.dart';
import 'package:D.bank/common/constats/app_colors.dart';
import 'package:flutter/material.dart';

class SignInButton extends StatelessWidget {
  const SignInButton({
    super.key,
    required this.text,
    required this.route, // campos que vai pedir quando usar o widget
  });

  final String text;
  final String route;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.80, // 70% da largura da tela
      height: 56,
      child: Ink(
        decoration: BoxDecoration(
          gradient: AppColors.blueMainGradient,
          borderRadius: BorderRadius.circular(50),
        ),
        child: ElevatedButton(
          onPressed: () => Navigator.pushReplacementNamed(context, AppRoutes.home),
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.transparent,
            shadowColor: Colors.transparent,
            foregroundColor: Colors.white,
          ),
          child:Text(text, style: TextStyle(fontSize: 20)),
        ),
      ),
    );
  }
}
