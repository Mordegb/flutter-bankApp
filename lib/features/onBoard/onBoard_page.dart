import 'package:app1/common/constats/AppColors.dart';
import 'package:app1/features/onBoard/widgets/dollar_sign.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class OnboardPage extends StatelessWidget {
  const OnboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Expanded(flex: 4, child: Container(child: DollarSign())),
            Container(child: Text('Bem vindo ao D.Bank one' , style: TextStyle(
              fontSize: 24.0,
              fontWeight: FontWeight(250),
            ),)),
            Expanded(
              child: Center(
                child: SizedBox(
                  width:
                      MediaQuery.of(context).size.width *
                      0.80, // 70% da largura da tela
                  height: 56,
                  child: Ink(
                    decoration: BoxDecoration(
                      gradient: AppColors.blueMainGradient,
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.transparent,
                        shadowColor: Colors.transparent,
                        foregroundColor: Colors.white,
                      ),
                      child: const Text('Entrar'),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
