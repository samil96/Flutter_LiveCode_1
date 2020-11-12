import 'package:flutter/material.dart';


void main() {
  runApp(LomoSaltado());
}

class LomoSaltado extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xff018786),
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget> [
              CircleAvatar(
                radius: 50,
                backgroundImage: NetworkImage("https://pbs.twimg.com/profile_images/1180657921493016577/kZn1QGVE_400x400.jpg"), 
              ),
              Text(
                "@Lesly.Samaritano",
                style: TextStyle(
                  fontSize: 22,
                  color: Color(0xffF2E7FE),
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "FLUTTER DEVELOPER",
                style: TextStyle(
                  fontSize: 18,
                  color: Color(0xffF2E7FE),
                  fontWeight: FontWeight.w300,
                  letterSpacing: 3,
                ),
              ),
              Divider(
                thickness: 0.4,
                color: Color(0xffF2E7FE),
              )
            ],
          ),
        )
      ),
    );
  }
}