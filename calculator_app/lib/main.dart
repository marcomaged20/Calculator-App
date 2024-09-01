import 'package:calculator_app/calculatorscreen.dart';
import 'package:calculator_app/counterscreen.dart';
import 'package:calculator_app/homescreen.dart';
import 'package:calculator_app/loginscreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: CalculatorScreen.routName,
      routes: {
        LoginScreen.routName: (context) => const LoginScreen(),
        HomeScreen.routName: (context) => const HomeScreen(),
        CounterScreen.routName: (context) => const CounterScreen(),
        CalculatorScreen.routName: (context) => CalculatorScreen(),
      },
    );
  }
}
