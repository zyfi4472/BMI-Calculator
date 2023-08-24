import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/reuseable_card.dart';
import 'package:flutter/material.dart';

class ResultsPage extends StatelessWidget {
  const ResultsPage(
      {super.key,
      required this.bmiResult,
      required this.interpretation,
      required this.resultText});

  final String bmiResult;
  final String resultText;
  final String interpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI CALCULATOR'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const SizedBox(height: 15),
          const Text(
            'Your Result',
            style: kLargeTextStyle,
          ),
          const SizedBox(height: 15),
          Expanded(
            child: ReuseableCard(
              colour: kActiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    bmiResult,
                    style: kLabelTextStyle,
                  ),
                  SizedBox(height: 70),
                  Text(
                    resultText,
                    style: kLargeTextStyle,
                  ),
                  SizedBox(height: 70),
                  SizedBox(
                    width: 350,
                    child: Text(
                      interpretation,
                      style: const TextStyle(
                        fontSize: 20,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  )
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
              color: const Color(0xffeb1555),
              height: kBottomConatainerHeight,
              margin: const EdgeInsets.all(10),
              child: const Center(
                  child: Text(
                'RE CALCULATE',
                style: kLargeTextStyle,
              )),
            ),
          )
        ],
      ),
    );
  }
}
