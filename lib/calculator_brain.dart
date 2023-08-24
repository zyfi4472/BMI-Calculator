import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({required this.height1, required this.weight});

  final int weight;
  final int height1;

  double _bmi = 20;

  String calculateBMI() {
    _bmi = weight / pow(height1 / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return 'Overweight';
    } else if (_bmi >= 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return 'Your have higher than normal body weight. Try to exercise more.';
    } else if (_bmi >= 18.5) {
      return 'Your have normal body weight.';
    } else {
      return 'You are Underweight. Try to improve your diet and sleep cycle.';
    }
  }
}
