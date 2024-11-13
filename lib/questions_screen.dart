import 'dart:math';

import 'package:first_quiz/dummyData/QuestionsData.dart';
import 'package:flutter/material.dart';

import 'models/QuestionModel.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen(
      {super.key, required this.showResultScreen(List<QuestionModel> results)});

  final void Function(List<QuestionModel> results) showResultScreen;

  @override
  State<QuestionsScreen> createState() => _QuestionsScreenState();
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  QuestionsData questionsData = QuestionsData();
  List<QuestionModel> questions = [];

  int questionIndex = 0;

  _QuestionsScreenState() {
    questions = questionsData.questions;
    // questionIndex = questions.length - 1;
  }

  Text createQuestionText(String text) => Text(text,
      style: Theme.of(context).textTheme.bodyLarge,
      textAlign: TextAlign.center);

  List<ElevatedButton> prepareButtons(QuestionModel model) {
    List<ElevatedButton> buttons = [];
    for (int i = 0; i < model.answers.length; i++) {
      String answer = model.answers[i];
      buttons.add(ElevatedButton(
        onPressed: () {
          model.userAnswer = answer;
          answerAction();
          print(
              'The answer is: ${model.userAnswer == model.rightAnswer ? 'Correct' : 'Wrong'}');
        },
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
          backgroundColor: const Color.fromARGB(255, 33, 1, 95),
          foregroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(40),
          ),
        ),
        child: Text(answer, textAlign: TextAlign.center),
      ));
    }
    buttons.shuffle();
    return buttons;
  }

  final random = Random();

  void answerAction() {
    setState(() {
      print('questionIndex: $questionIndex');
      if (questionIndex < questions.length - 1) {
        questionIndex++;
      } else {
        widget.showResultScreen(questions);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20),
      child: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: prepareQuestionScreen(questions[questionIndex])),
      ),
    );
  }

  List<Widget> prepareQuestionScreen(QuestionModel questionModel) {
    return [
      createQuestionText(questionModel.question),
      const SizedBox(height: 20),
      ...prepareButtons(questionModel),
    ];
  }
}
