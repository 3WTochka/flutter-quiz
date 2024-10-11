class QuestionModel {
  String question;
  List<String> answers;
  String rightAnswer;
  String userAnswer = '';

  QuestionModel(
      {required this.question,
      required this.answers,
      required this.rightAnswer});
}
