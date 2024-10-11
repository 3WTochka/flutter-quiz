import 'package:first_quiz/models/QuestionModel.dart';

class QuestionsData {
  List<QuestionModel> questions = [
    QuestionModel(
        question: 'What is the secret ingredient in grandma’s soup?',
        answers: ['Love', 'More soup', 'Old socks', 'A pinch of magic'],
        rightAnswer: 'Love'),
    QuestionModel(
        question: 'Why did the computer go to therapy?',
        answers: [
          'It had too many bugs',
          'It was feeling defragmented',
          'It had a virus',
          'It couldn’t find its Ctrl'
        ],
        rightAnswer: 'It couldn’t find its Ctrl'),
    QuestionModel(
        question: 'What is faster than a speeding bullet?',
        answers: [
          'A cheetah',
          'Superman',
          'The internet',
          'My mom when I forget to do chores'
        ],
        rightAnswer: 'My mom when I forget to do chores'),
    QuestionModel(
        question: 'Why don’t skeletons fight each other?',
        answers: [
          'They’re spineless',
          'They don’t have the guts',
          'They’re boned out',
          'They’re too dead for that'
        ],
        rightAnswer: 'They don’t have the guts'),
    QuestionModel(
        question: 'What’s a cat’s favorite color?',
        answers: ['Purrrple', 'Meowroon', 'Cyanide', 'Tabby-teal'],
        rightAnswer: 'Purrrple'),
    QuestionModel(
        question: 'If life gives you lemons, what should you do?',
        answers: [
          'Make lemonade',
          'Throw them back',
          'Sell them',
          'Eat them whole like a champion'
        ],
        rightAnswer: 'Eat them whole like a champion')
  ];
}
