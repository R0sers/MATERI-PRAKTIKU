import 'package:flutter/material.dart';
import 'package:p5_shift8_mobile/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Toko Baariq',
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
    
  }
}