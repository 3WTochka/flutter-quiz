import 'package:first_quiz/questions_screen.dart';
import 'package:first_quiz/result_screen.dart';
import 'package:flutter/material.dart';

import 'first_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  // Widget? activeScreen;
  var activeScreenId = 'start-screen';

  void switchScreen() {
    setState(() {
      activeScreenId = 'questions-screen';
    });
  }

  void showResultScreen() {
    setState(() {
      activeScreenId = 'result-screen';
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget screenWidget = FirstScreen(switchScreen);

    if (activeScreenId == 'questions-screen') {
      screenWidget = QuestionsScreen(showResultScreen: showResultScreen);
    }

    if (activeScreenId == 'result-screen') {
      screenWidget = const ResultScreen();
    }

    return Scaffold(
      // appBar: AppBar(
      //   title: Text('First Screen Title'),
      // ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [Colors.deepPurple, Color.fromARGB(255, 85, 15, 209)],
          ),
        ),
        child: screenWidget,
      ),
    );
  }
}
