import 'package:flutter/material.dart';

class DollarSignController {
  DollarSignController({required TickerProvider vsync}) {
    _controller = AnimationController(
      vsync: vsync,
      duration: const Duration(seconds: 2),
    )..repeat(reverse: true);

    floatAnimation = Tween<double>(begin: -10, end: 10).animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeInOut),
    );
  }

  late final AnimationController _controller;
  late final Animation<double> floatAnimation;

  void dispose() {
    _controller.dispose();
  }
}