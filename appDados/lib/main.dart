import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      backgroundColor: Colors.redAccent,
      appBar: AppBar(
        title: Text("DiceApp"),
        backgroundColor: Color(0xffFF8A80),
      ),
      body: DicePage(),
    ),
  ));
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber = 3;

  int rightDiceNumber = 5;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            flex: 1,
            child: FlatButton(
              child: Image(
                image: AssetImage("assets/images/dice$leftDiceNumber.png"),
              ),
              onPressed: () {
                setState(() {
                  leftDiceNumber = 6;
                });
              },
            ),
          ),
          Expanded(
            flex: 1,
            child: FlatButton(
              child: Image(
                image: AssetImage("assets/images/dice$rightDiceNumber.png"),
              ),
              onPressed: () {
                //regresca la pantalla
                setState(() {
                  rightDiceNumber = 3;
                });
              },
            ),
          ),
        ],
      ),
    );
  }
}
