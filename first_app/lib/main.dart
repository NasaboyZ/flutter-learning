import 'package:first_app/gradient_container.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: GradientContainer(
          const Color.fromARGB(184, 32, 52, 203),
          const Color.fromARGB(186, 39, 163, 240),
        ),
      ),
    ),
  );
}
