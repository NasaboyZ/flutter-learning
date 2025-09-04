import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: Scaffold(body: GradientContainer())));
}

class GradientContainer extends StatelessWidget {
  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            const Color.fromARGB(174, 72, 53, 219),
            const Color.fromARGB(170, 57, 151, 228),
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: const Center(
        child: Text(
          'josef',
          style: TextStyle(
            color: Color.fromARGB(255, 241, 241, 241),
            fontSize: 28.0,
          ),
        ),
      ),
    );
  }
}
