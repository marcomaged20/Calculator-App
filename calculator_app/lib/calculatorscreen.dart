import 'package:calculator_app/calcbutton.dart';
import 'package:flutter/material.dart';

class CalculatorScreen extends StatefulWidget {
  static const String routName = 'calculator';

  const CalculatorScreen({super.key});

  @override
  State<CalculatorScreen> createState() => _CalculatorScreenState();
}

class _CalculatorScreenState extends State<CalculatorScreen> {
  String restext = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Calculator"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
              child: Container(
                  child: Row(
            children: [
              Text(
                restext,
                style: const TextStyle(fontSize: 35),
              ),
            ],
          ))),
          Expanded(
            child: Container(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Calcbutton(text: '7', onButtonClick: onDiditClick),
                  Calcbutton(text: '8', onButtonClick: onDiditClick),
                  Calcbutton(text: '9', onButtonClick: onDiditClick),
                  Calcbutton(text: '*', onButtonClick: onOpereatorclick),
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Calcbutton(text: '4', onButtonClick: onDiditClick),
                  Calcbutton(text: '5', onButtonClick: onDiditClick),
                  Calcbutton(text: '6', onButtonClick: onDiditClick),
                  Calcbutton(text: '/', onButtonClick: onOpereatorclick),
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Calcbutton(text: '1', onButtonClick: onDiditClick),
                  Calcbutton(text: '2', onButtonClick: onDiditClick),
                  Calcbutton(text: '3', onButtonClick: onDiditClick),
                  Calcbutton(text: '+', onButtonClick: onOpereatorclick),
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Calcbutton(text: '.', onButtonClick: onDiditClick),
                  Calcbutton(text: '0', onButtonClick: onDiditClick),
                  Calcbutton(text: '=', onButtonClick: onEqual),
                  Calcbutton(text: '-', onButtonClick: onOpereatorclick),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  void onDiditClick(String text) {
    restext += text;
    setState(() {});
  }

  String numb = '';
  String operator = '';
  void onOpereatorclick(String onlickoperat) {
    if (operator.isEmpty) {
      numb = restext;
      operator = onlickoperat;
      restext = '';
    } else {
      String rhs = restext;
      calculate(numb, rhs, operator);
      restext = '';
    }
  }

  String calculate(String numb, String rhs, String operator) {
    double num1 = double.parse(numb);
    double num2 = double.parse(rhs);
    double res = 0.0;
    if (operator == '+') {
      res = num1 + num2;
    } else if (operator == '*') {
      res = num1 * num2;
    } else if (operator == '/') {
      res = num1 / num2;
    }
    return res.toString();
  }

  void onEqual(String onequal) {
    String rhs = restext;
    restext = calculate(numb, rhs, operator);
    numb = '';
    operator = '';
    setState(() {});
  }
}
