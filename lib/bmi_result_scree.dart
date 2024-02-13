import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';

class BmiResult extends StatelessWidget {
  const BmiResult({super.key, required this.bmi});
  final double bmi;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 7, 31, 43),
        iconTheme: const IconThemeData(color:Color.fromARGB(255, 255, 255, 255)),
        title:const Text("BMI",style:titleTextStyle)
      ),
      backgroundColor: backgroundColor,
      body:Center(
        child: 
          Text("${bmi.toStringAsFixed(2)}",
          style:titleTextStyle.copyWith(fontSize: 23))
        ,
      )
    );
  }
}