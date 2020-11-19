import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

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
  List<Icon> scoreKeeper = [
    Icon(
      Icons.check,
      color: Colors.green,
    ),
    Icon(
      Icons.close,
      color: Colors.red,
    ),
  ];

  List<String> question = [
    "Amo los helados",
    "Me gusta los libros de acción",
    "Me gustal el ceviche",
    "Amo mi carrera",
    "Soy feliz",
  ];

  int questionNumber = 0;

  List<bool> answers = [
    true, false, false, true, true,
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Expanded(
          flex: 5,
          child: Center(
              child: Text(
            question[questionNumber],
            style: TextStyle(color: Color(0xff8869A5), fontWeight: FontWeight.bold,)
            ),
          ),
        ),

        Expanded(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            child: FlatButton(
              onPressed: () {
                scoreKeeper.add(
                  Icon(Icons.check, color: Colors.green),
                );
                questionNumber++;
                setState(() {
                  
                });
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
                scoreKeeper.add(
                  Icon(Icons.close, color: Colors.redAccent,)                           
                );

                questionNumber++;
                  setState(() {

                  });
              },
              child: Text("Falso"),
              color: Color(0xff8095CE),
            ),
          ),
        ),
        Row(
          children: scoreKeeper
        )
      ],
    );
  }
}
