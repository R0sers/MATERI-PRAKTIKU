import 'package:flutter/material.dart';
import 'package:p1/home.dart';

void main() {
  runApp(const RoseApp());
}

class RoseApp extends StatelessWidget {
  const RoseApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Rose Pertemuan',
      debugShowCheckedModeBanner: false,

      home: Home()
    );
  }
}
