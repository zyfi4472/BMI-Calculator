import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ReuseableCard extends StatelessWidget {
  Color colour;
  Widget? cardChild;
  Function()? onpress;

  ReuseableCard({
    super.key,
    required this.colour,
    this.cardChild,
    this.onpress,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onpress,
      child: Container(
        margin: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: colour,
          borderRadius: const BorderRadius.all(
            Radius.circular(15),
          ),
        ),
        child: cardChild,
      ),
    );
  }
}
