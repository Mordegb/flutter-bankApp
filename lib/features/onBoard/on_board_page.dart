import 'package:D.bank/features/onBoard/widgets/dollarSign/dollar_sign.dart';
import 'package:D.bank/features/onBoard/widgets/signInButton/sign_in_button.dart';
import 'package:flutter/material.dart';

class OnboardPage extends StatelessWidget {
  const OnboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Expanded(flex: 4, child: DollarSign()),
            Text('Bem vindo ao D.Bank one' , style: TextStyle(
              fontSize: 24.0,
              fontWeight: FontWeight(250),
            ),),
            Expanded(
              child: Center(
                child: SignInButton(text: 'Entrar', route: '/',)
              ),
            ),
          ],
        ),
      ),
    );
  }
}
