import 'package:flutter/material.dart';

const double iconSize = 70;
const double labelSize = 30;

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
          style: const TextStyle(
            fontSize: labelSize,
          ),
        )
      ],
    );
  }
}
