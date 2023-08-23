// ignore_for_file: must_be_immutable

import 'package:bmi_calculator/icon_label.dart';
import 'package:bmi_calculator/reuseable_card.dart';
import 'package:flutter/material.dart';

const activeCardColor = Color(0xff1D1F33);
const inactiveCardColor = Color(0xff111328);

const bottomConatainerHeight = 75.0;
const bottomConatainerColor = Color(0xffeb1555);

enum Gender {
  male,
  female,
}

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender? selectedGender;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('BMI CALCULATOR')),
      ),
      body: Column(
        children: [
          // First two boxes

          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedGender = Gender.male;
                      });
                    },
                    child: ReuseableCard(
                      colour: selectedGender == Gender.male
                          ? activeCardColor
                          : inactiveCardColor,
                      cardChild: ReuseableIconAndLabel(
                        icon: Icons.male,
                        label: 'Male',
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedGender = Gender.female;
                      });
                    },
                    child: ReuseableCard(
                      colour: selectedGender == Gender.female
                          ? activeCardColor
                          : inactiveCardColor,
                      cardChild: ReuseableIconAndLabel(
                        icon: Icons.female,
                        label: 'Female',
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          // Middle Box
          Expanded(
            child: ReuseableCard(
              colour: activeCardColor,
            ),
          ),
          // Last two boxes
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReuseableCard(
                    colour: activeCardColor,
                  ),
                ),
                Expanded(
                  child: ReuseableCard(
                    colour: activeCardColor,
                  ),
                ),
              ],
            ),
          ),
          //Bottom Container
          Container(
            color: const Color(0xffeb1555),
            height: bottomConatainerHeight,
          )
        ],
      ),
    );
  }
}
