import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      backgroundColor: Color(0xff53A8F5),
      appBar: AppBar(
        title: Text(
          "@Lesly Samaritano",
        ),
        backgroundColor: Color(0xff4964DE),
      ),
      body: Center(
        child: Image(
          image: NetworkImage("https://iheartsvg.com/wp-content/uploads/2019/01/panda.png"),
          //image: AssetImage("assets/images/pandas.png"),
        ),
      ),
    ),
  ));
}
