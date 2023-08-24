import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ReuseableIconAndLabel extends StatelessWidget {
  ReuseableIconAndLabel({super.key, required this.icon, required this.label});

  IconData icon;
  String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: iconSize,
        ),
        const SizedBox(height: 15),
        Text(
          label,
          style: kLabelTextStyle,
        )
      ],
    );
  }
}
