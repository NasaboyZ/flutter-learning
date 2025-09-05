import 'package:flutter/material.dart';

class StyletText extends StatelessWidget {
  const StyletText(this.outputText, {super.key});

  final String outputText;
  @override
  Widget build(context) {
    return Text(
      outputText,
      style: const TextStyle(
        color: Color.fromARGB(255, 241, 241, 241),
        fontSize: 28.0,
      ),
    );
  }
}
