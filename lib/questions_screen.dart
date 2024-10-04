import 'dart:math';

import 'package:first_quiz/dummyData/QuestionsData.dart';
import 'package:flutter/material.dart';

import 'models/QuestionModel.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({Key? key}) : super(key: key);

  @override
  State<QuestionsScreen> createState() => _QuestionsScreenState();
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  QuestionsData questionsData = QuestionsData();
  List<QuestionModel> questions = [];
  List<ElevatedButton> questionButtons = [];
  List<Widget> questionWidgets = [];
  Text questionText = const Text('some question');
  int questionIndex = 5;

  _QuestionsScreenState() {
    questions = questionsData.questions;
    questionText = Text(questions[questionIndex].question);
    questionButtons = prepareButtons(questions[questionIndex]);
    questionWidgets.add(questionText);
    questionWidgets.addAll(questionButtons);
    // --questionIndex;
  }

  List<ElevatedButton> prepareButtons(QuestionModel model) {
    List<ElevatedButton> buttons = [];
    for (int i = 0; i < model.answers.length; i++) {
      String answer = model.answers[i];
      buttons.add(ElevatedButton(
        onPressed: () {
          model.userAnswer = i;
          answerAction(i, model);
          print(
              '${model.userAnswer} User Pressed: $i but the right answer is: ${model.rightAnswer}');
        },
        child: Text(answer),
      ));
    }
    return buttons;
  }

  final random = Random();

  List<Widget> printResults() {
    return questions.map((question) {
      return Text(
        'Question: ${question.question}\n'
        'Your Answer: ${question.answers[question.userAnswer]}\n'
        'Right Answer: ${question.answers[question.rightAnswer-1]}',
        // 'Your Answer: ${question.userAnswer}\n'
        //     'Right Answer: ${question.rightAnswer}',
        style: TextStyle(fontSize: 16),
      );
    }).toList();
  }

  void answerAction(int i, QuestionModel model) {
    setState(() {
      print('questionIndex: $questionIndex');
      if (questionIndex > 0) {
        questionIndex--;
        // model.userAnswer = i;
        var questionModel = questions[questionIndex];
        questionText = Text(questionModel.question);
        questionButtons = prepareButtons(questionModel);
        questionWidgets = [];
        questionWidgets.add(questionText);
        questionWidgets.addAll(questionButtons);
      } else {
        questionWidgets = [];
        questionWidgets.addAll(printResults());
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: questionWidgets,
      ),
    );
  }
}
