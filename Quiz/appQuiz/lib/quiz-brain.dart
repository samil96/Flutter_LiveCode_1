import 'package:appQuiz/question.dart';

class QuizBrain {
  List<Question> _questionBank = [
    Question(q: "Me gusta el ceviche", a: false),
    Question(q: "Amo las uvas", a: true),
    Question(q: "Me gusta el helado", a: true),
    Question(q: "No me gusta los libros de fición", a: true),
    Question(q: "La verdura que más me encanta es la espinaca", a: true),
    Question(q: "Mi personaje favorito de Disney es Mulan", a: true),
    Question(q: "Amo el choclito", a: true),
    Question(q: "Amo el acaguate", a: true),
  ];

  int _questionNumber = 0;

  String getQuestionText() {
    return _questionBank[_questionNumber].questionText;
  }

  bool getQuestionAnswer() {
    return _questionBank[_questionNumber].questionAnswer;
  }

  void nextQuestion() {
    if (_questionNumber < _questionBank.length-1) {
      _questionNumber++;
    }
  }
}
