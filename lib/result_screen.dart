import 'package:first_quiz/models/QuestionModel.dart';
import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen(this.navigateToFirstScreen,
      {super.key, required this.results});

  final Function() navigateToFirstScreen;
  final List<QuestionModel> results;

  List<Widget> printResults() {
    int countOfQuestions = 1;
    return results.map((question) {
      return Row(
        children: [
          Text(
            (countOfQuestions++).toString(),
            style: const TextStyle(fontSize: 16),
          ),
          Expanded(
            child: Column(
              children: [
                Text(
                  question.question,
                  style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 33, 1, 95)),
                ),
                Text(
                  question.userAnswer,
                  style: const TextStyle(fontSize: 16),
                ),
                Text(
                  question.rightAnswer,
                  style: TextStyle(
                      fontSize: 16,
                      color: question.isCorrect()
                          ? const Color.fromARGB(255, 91, 140, 91)
                          : const Color.fromARGB(255, 216, 59, 32)),
                ),
              ],
            ),
          ),
        ],
      );

      // return Text(
      //   'Question: ${question.question} is ${question.isCorrect() ? 'Correct' : 'Wrong'} \n'
      //   'Your Answer: ${question.userAnswer}\n'
      //   'Right Answer: ${question.rightAnswer}\n\n',
      //   style: const TextStyle(fontSize: 16),
      // );
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            getSummary(),
            const SizedBox(height: 30),
            ...printResults(),
            const SizedBox(height: 30),
            buttonToMainScreen()
          ],
        ),
      ),
    );
  }

  ElevatedButton buttonToMainScreen() {
    return ElevatedButton(
      onPressed: () {
        navigateToFirstScreen();
      },
      child: const Text('Go To Main Screen'),
    );
  }

  Widget getSummary() {
    int correctAnswers = results.where((element) => element.isCorrect()).length;
    return Text(
      'You answered $correctAnswers out of ${results.length} questions correctly!',
      style: const TextStyle(fontSize: 24),
    );
  }
}
