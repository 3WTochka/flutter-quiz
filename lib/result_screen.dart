import 'package:first_quiz/models/QuestionModel.dart';
import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen(this.navigateToFirstScreen,
      {super.key, required this.results});

  final Function() navigateToFirstScreen;
  final List<QuestionModel> results;

  List<Widget> printResults(BuildContext context) {
    int countOfQuestions = 1;
    return results.map((question) {
      return Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 30,
            height: 30,
            decoration: BoxDecoration(
              color: question.isCorrect()
                  ? const Color.fromARGB(255, 112, 204, 230)
                  : const Color.fromARGB(255, 213, 87, 213),
              shape: BoxShape.circle,
            ),
            alignment: Alignment.center,
            child: Text(
              (countOfQuestions++).toString(),
            ),
          ),
          const SizedBox(width: 20),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  question.question,
                  style: Theme.of(context)
                      .textTheme
                      .bodyMedium
                      ?.copyWith(fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(question.rightAnswer,
                    style: Theme.of(context).textTheme.bodyMedium),
                Text(question.userAnswer,
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        color: question.isCorrect()
                            ? const Color.fromARGB(255, 112, 204, 230)
                            : const Color.fromARGB(255, 228, 111, 115))),
                const SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
        ],
      );
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
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            getSummary(context),
            const SizedBox(height: 30),
            SizedBox(
              height: 350,
              child: SingleChildScrollView(
                child: Column(
                  children: printResults(context),
                ),
              ),
            ),
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

  Widget getSummary(BuildContext context) {
    int correctAnswers = results.where((element) => element.isCorrect()).length;
    return Text(
      'You answered $correctAnswers out of ${results.length} questions correctly!',
      style: Theme.of(context).textTheme.bodyLarge,
      textAlign: TextAlign.center,
    );
  }
}
