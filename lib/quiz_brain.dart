import 'question.dart';

class QuizBrain {
  int _currentQuestionNumber = 0;
  final List<Question> _questionBank = [
    Question(
        questionText: 'You can lead a cow down stairs but not up stairs.',
        questionAnswer: false),
    Question(
        questionText:
            'Approximately one quarter of human bones are in the feet.',
        questionAnswer: true),
    Question(questionText: 'A slug\'s blood is green.', questionAnswer: true),
  ];

  bool nextQuestion() {
    if (_currentQuestionNumber < (_questionBank.length - 1)) {
      _currentQuestionNumber++;
      return true;
    } else {
      return false;
    }
  }

  String getQuestionText() {
    return _questionBank[_currentQuestionNumber].questionText;
  }

  bool getCorrectAnswer() {
    return _questionBank[_currentQuestionNumber].questionAnswer;
  }

  void restart() {
    _currentQuestionNumber = 0;
  }
}
