import 'package:flutter/material.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen(this.goQuiz, {super.key});

  final void Function() goQuiz;

  void onPressed() {
    print('Button pressed');
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              'assets/images/quiz-logo.png',
              width: 300,
              color: const Color.fromARGB(150, 255, 255, 255),
            ),
            const SizedBox(height: 40),
            const Text(
              'Learn Flutter with this quiz app!',
              style: TextStyle(fontSize: 20, color: Colors.white),
            ),
            const SizedBox(height: 40),
            ElevatedButton.icon(
              style: ElevatedButton.styleFrom(
                textStyle: const TextStyle(fontSize: 15, color: Colors.purple),
              ),
              onPressed: goQuiz,
              icon: const Icon(Icons.question_answer),
              label: const Text('Start Quiz!'),
            ),
          ]),
    );
  }
}
