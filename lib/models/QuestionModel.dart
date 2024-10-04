class QuestionModel {
  String question;
  List<String> answers;
  int rightAnswer = -1;
  int userAnswer = -1;

  QuestionModel(
      {required this.question,
      required this.answers,
      required this.rightAnswer});
}
