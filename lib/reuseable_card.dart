import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ReuseableCard extends StatelessWidget {
  Color colour;
  Widget? cardChild;

  ReuseableCard({super.key, required this.colour, this.cardChild});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: colour,
        borderRadius: const BorderRadius.all(
          Radius.circular(15),
        ),
      ),
      child: cardChild,
    );
  }
}
