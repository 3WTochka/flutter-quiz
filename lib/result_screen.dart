import 'package:first_quiz/models/QuestionModel.dart';
import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen(this.navigateToFirstScreen, {super.key, required this.results});

  final Function() navigateToFirstScreen;
  final List<QuestionModel> results;

  List<Widget> printResults() {
    return results.map((question) {
      return Text(
        'Question: ${question.question} is ${question.userAnswer == question.rightAnswer ? 'Correct' : 'Wrong'} \n'
        'Your Answer: ${question.userAnswer}\n'
        'Right Answer: ${question.rightAnswer}\n\n',
        style: const TextStyle(fontSize: 16),
      );
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ...printResults(),
        ElevatedButton(
          onPressed: () {
            navigateToFirstScreen();
          },
          child: const Text('Go To Main Screen'),
        )
      ],
    ));
  }
}
