import 'package:appQuiz/quiz-brain.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

QuizBrain quizBrain = QuizBrain();

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: Color(0xffB1BEEA),
          body: SafeArea(
            child: QuizPage(),
          ),
        ));
  }
}

class QuizPage extends StatefulWidget {
  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  List<Icon> scoreKeeper = [];

  void checkAnswer(bool userPickedAnswer) {
    bool correctAnswer = quizBrain.getQuestionAnswer();
    if (correctAnswer == userPickedAnswer) {
      scoreKeeper.add(Icon(
        Icons.check,
        color: Colors.greenAccent,
      ));
    } else {
      scoreKeeper.add(Icon(
        Icons.close,
        color: Colors.redAccent,
      ));
    }

    quizBrain.nextQuestion();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Expanded(
          flex: 5,
          child: Center(
            child: Text(quizBrain.getQuestionText(),
                style: TextStyle(
                  color: Color(0xff8869A5),
                  fontWeight: FontWeight.bold,
                )),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            child: FlatButton(
              onPressed: () {
                checkAnswer(true);
              },
              child: Text("Verdadero"),
              color: Color(0xffC58ADE),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            child: FlatButton(
              onPressed: () {
                checkAnswer(false);
              },
              child: Text("Falso"),
              color: Color(0xff8095CE),
            ),
          ),
        ),
        Row(children: scoreKeeper)
      ],
    );
  }
}
