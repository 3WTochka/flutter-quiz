import 'package:first_quiz/models/QuestionModel.dart';

class QuestionsData {
  List<QuestionModel> questions = [
    QuestionModel(
        question: 'Question1',
        answers: ['1 option 1', '1 option 2', '1 option 3', '1 option 4'],
        rightAnswer: '1 option 1'),
    QuestionModel(
        question: 'Question2',
        answers: ['2 option 1', '2 option 2', '2 option 3', '2 option 4'],
        rightAnswer: '2 option 2'),
    QuestionModel(
        question: 'Question3',
        answers: ['3 option 1', '3 option 2', '3 option 3', '3 option 4'],
        rightAnswer: '3 option 3'),
    QuestionModel(
        question: 'Question4',
        answers: ['4 option 1', '4 option 2', '4 option 3', '4 option 4'],
        rightAnswer: '4 option 4'),
    QuestionModel(
        question: 'Question5',
        answers: ['5 option 1', '5 option 2', '5 option 3', '5 option 4'],
        rightAnswer: '5 option 1'),
    QuestionModel(
        question: 'Question6',
        answers: ['6 option 1', '6 option 2', '6 option 3', '6 option 4'],
        rightAnswer: '6 option 2')
  ];
}
