import 'dart:math';

import 'package:flutter/material.dart';

class CalculateBrain {
  CalculateBrain({@required this.height, @required this.weight});

  final weight;
  final height;
  double _bmi;
  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi > 25) {
      return 'Overweight';
    } else if (_bmi > 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String getInterpretation() {
    if (_bmi > 25) {
      return 'Your BMI is quite high, you should excersice more!';
    } else if (_bmi > 18.5) {
      return 'Your BMI is perfect, maintain the same and stary healthy!';
    } else {
      return 'Your BMI is quite low, you should eat more! ';
    }
  }
}
