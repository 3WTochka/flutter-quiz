import 'package:first_quiz/models/QuestionModel.dart';

class QuestionsData {
  List<QuestionModel> questions = [
    QuestionModel(
        question: 'firstQuestion',
        answers: ['option 1', 'option 2', 'option 3', 'option 4'],
        rightAnswer: 1),
    QuestionModel(
        question: 'Question2',
        answers: ['option 1', 'option 2', 'option 3', 'option 4'],
        rightAnswer: 2),
    QuestionModel(
        question: 'Question3',
        answers: ['option 1', 'option 2', 'option 3', 'option 4'],
        rightAnswer: 3),
    QuestionModel(
        question: 'Question4',
        answers: ['option 1', 'option 2', 'option 3', 'option 4'],
        rightAnswer: 4),
    QuestionModel(
        question: 'Question5',
        answers: ['option 1', 'option 2', 'option 3', 'option 4'],
        rightAnswer: 1),
    QuestionModel(
        question: 'Question6',
        answers: ['option 1', 'option 2', 'option 3', 'option 4'],
        rightAnswer: 2)
  ];
}
