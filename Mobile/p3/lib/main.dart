import 'package:flutter/material.dart';
import 'package:p3/BMIScreen.dart';
import 'package:p3/bmicnth.dart';

void main() {
  runApp(const BMIApp());
}

class BMIApp extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Kalkulator BMI',
      debugShowCheckedModeBanner: false,
      home: BMIScreen(),
    );
  }
}
