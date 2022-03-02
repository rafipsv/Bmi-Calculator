// ignore_for_file: missing_required_param, deprecated_member_use

import 'package:bmi_calculator/result_page.dart';
import 'package:flutter/material.dart';

import 'input_page.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: Color(0xFF0A0E21),
        primaryColor: Color(0xFF0A0E21),
      ),
      routes: {
        "/": (context) => InputPage(),
        "/CalculatePage": (context) => ResultPage(),
      },
    );
  }
}
