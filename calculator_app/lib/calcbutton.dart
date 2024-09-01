import 'package:flutter/material.dart';

class Calcbutton extends StatelessWidget {
  String text;
  Function onButtonClick;
  Calcbutton({super.key, required this.text, required this.onButtonClick});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ElevatedButton(
          onPressed: () {
            onButtonClick(text);
          },
          child: Text(
            text,
            style: const TextStyle(fontSize: 30),
          )),
    );
  }
}
