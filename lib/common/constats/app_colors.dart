import 'package:flutter/material.dart';

class AppColors {
  AppColors._(); //sp para poder acessar as propriedades e metodos da classe

  static const Color primary = Color.fromARGB(255, 36, 92, 246);
  static const Color text = Color.fromARGB(255, 255, 255, 255);
  static const blueMainGradient = LinearGradient(
    colors: [Color(0xFF2196F3), Color(0xFF03DAC6)],
  );
  // static const Color shadow1 = Color.fromARGB(115, 10, 215, 251);
  static const Color shadow1 = Color.fromARGB(138, 102, 206, 225);
  static const Color shadow2 = Color.fromARGB(190, 36, 92, 246);
}
