import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({this.height, this.weight, this.age});

  final int height, weight, age;

  double _bmi;

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return 'OVERWEIGHT';
    } else if (_bmi > 18.5) {
      return 'NORMAL';
    } else {
      return 'UNDERWEIGHT';
    }
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return 'Eat less';
    } else if (_bmi > 18.5) {
      return 'You are good';
    } else {
      return 'Eat More';
    }
  }
}
