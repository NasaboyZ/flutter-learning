import 'package:adv_basics/questions_screen.dart';
import 'package:flutter/material.dart';
import 'package:adv_basics/start_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});
  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

//lifting a State up
class _QuizState extends State<Quiz> {
  // Widget? activeScreen;

  // @override
  // void initState() {
  //   activeScreen = StartScreen(switchScreen);
  //   super.initState();
  // }
  var activeScreen =
      'start-screen'; // ist die schönere version mit Thinery Operator
  void switchScreen() {
    setState(() {
      activeScreen = 'questions-screen';
    });
  }

  @override
  Widget build(context) {
    Widget screenWidget = StartScreen(switchScreen);
    if (activeScreen == 'questions-screen') {
      screenWidget = const QuestionsScreen();
    }
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                const Color.fromARGB(205, 46, 127, 208),
                const Color.fromARGB(191, 160, 33, 195),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: screenWidget,
        ),
      ),
    );
  }
}
