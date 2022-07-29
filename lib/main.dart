import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(const BMICalculator());
}

class BMICalculator extends StatelessWidget {
  const BMICalculator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF0A0E21),
        scaffoldBackgroundColor: Color(0xFF0A0E21),
        colorScheme:
            ColorScheme.fromSwatch().copyWith(secondary: Colors.purple),
        textTheme: TextTheme(
          bodyText1: TextStyle(color: Color(0xFFFFFFFF)),
        ),
      ),
      home: InputPage(),
    );
  }
}
