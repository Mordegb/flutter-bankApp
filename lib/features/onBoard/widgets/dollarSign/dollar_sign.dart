import 'package:app1/features/onBoard/widgets/dollarSign/dollar_sign_controller.dart';
import 'package:flutter/material.dart';

class DollarSign extends StatefulWidget {
  const DollarSign({super.key});

  @override
  State<DollarSign> createState() => _DollarSignState();
}

class _DollarSignState extends State<DollarSign>
  with SingleTickerProviderStateMixin {
  late final DollarSignController _controller;

  @override
  void initState() {
    super.initState();
    _controller = DollarSignController(vsync: this);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller.floatAnimation,
      builder: (context, child) {
        return Transform.translate(
          offset: Offset(0, _controller.floatAnimation.value),
          child: child,
        );
      },
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              blurRadius: 250.0,
              spreadRadius: 10,
              offset: const Offset(0, 6),
              // color: AppColors.primary.withValues(alpha: 0.25),
              color: const Color.fromARGB(73, 36, 92, 246),
            ),
          ],
        ),
        child: Image.asset('assets/images/cifrao.png'),
      ),
    );
  }
}
