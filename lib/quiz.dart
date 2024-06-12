import 'package:advanced_basics/data/questions.dart';
import 'package:advanced_basics/questions_screen.dart';
import 'package:advanced_basics/start_screen.dart';
import 'package:flutter/material.dart';

import 'package:advanced_basics/gradient_container.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  List<String> selectedAnswers = [];
  var activeScreen = 'start-screen';

  void switchScreen() {
    setState(() {
      activeScreen = 'questions-screen';
    });
  }

  void selectAnswer(String answer) {
    selectedAnswers.add(answer);

    if (selectedAnswers.length >= questions.length) {
      selectedAnswers = [];

      setState(() {
        activeScreen = 'start-screen';
      });
    }
  }

  @override
  Widget build(context) {
    final screenWidget = activeScreen == 'start-screen'
        ? StartScreen(switchScreen: switchScreen)
        : QuestionsScreen(onSelectAnswer: selectAnswer);

    return MaterialApp(
      home: Scaffold(
        body: GradientContainer(const [
          Color.fromARGB(255, 104, 78, 2),
          Color.fromARGB(255, 177, 139, 25)
        ], child: screenWidget),
      ),
    );
  }
}
