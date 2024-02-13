import 'package:bmi_calculator/bmi_calc_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Bmi());
}

class Bmi extends StatelessWidget {
  const Bmi({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: BmiCalScreen(),
    );
  }
}