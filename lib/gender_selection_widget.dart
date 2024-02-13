import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class GenderSelectionWidget extends StatelessWidget {
  const GenderSelectionWidget({
    super.key,
    required this.width,
    required this.isMale,
    required this.backgroundColor,
  });

  final double width;
  final bool isMale;
  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            FaIcon(
              isMale ? FontAwesomeIcons.mars : FontAwesomeIcons.venus,
              color: Colors.white,
              size: 50,
            ),
            Text(
              isMale ? 'Male' : 'Female',
              style: titleTextStyle,
              
            )
          ],
        ),
        width: width * 0.45,
        height: width * 0.45,
        decoration: BoxDecoration(
            color: backgroundColor,
            // color: Colors.amber,
            borderRadius: BorderRadius.circular(15)),
      ),
    );
  }
}