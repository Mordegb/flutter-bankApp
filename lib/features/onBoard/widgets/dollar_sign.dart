import 'package:app1/common/constats/AppColors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class DollarSign extends StatelessWidget {
  const DollarSign({super.key});

  @override
  Widget build(BuildContext context) {
    // return Image.asset('assets/images/cifrao.png');
    return
    Container(padding: const EdgeInsets.all(16),
    decoration: BoxDecoration(
      boxShadow: [
        BoxShadow(
          blurRadius: 90.0,
          spreadRadius: 10,
          offset: const Offset(0, 10),
          color: const Color.fromARGB(138, 102, 206, 225),
        )
      ]
    ),
    child:Image.asset('assets/images/cifrao.png')
    );
  }
}
