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
        backgroundColor: Color(0xff00C4B4),
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget> [
              CircleAvatar(
                radius: 50,
                backgroundImage: NetworkImage("https://pbs.twimg.com/profile_images/1180657921493016577/kZn1QGVE_400x400.jpg"), 
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "@Lesly.Samaritano",
                style: TextStyle(
                  fontSize: 22,
                  color: Color(0xffF2E7FE),
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 5,
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
              SizedBox(
                width: 160,
                height: 30,
                child: Divider(
                thickness: 0.9,
                color: Color(0xffF2E7FE),
                ),
              ),
              Card(
                color: Color(0xffF2E7FE),
                margin: EdgeInsets.symmetric(horizontal: 15),
                child: ListTile(
                leading: Icon(
                  Icons.phone_android, 
                  size: 32, 
                  color: Color(0xff5600E8),
                ),
                title: Text("+51 960084505",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff23036A),
                  ),
                ),
                //subtitle: Text("Subtitulo"),
                trailing: Icon(
                  Icons.check, 
                  size: 32,
                  color: Color(0xff5600E8),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Card(
                color: Color(0xffF2E7FE),
                margin: EdgeInsets.symmetric(horizontal: 15),
                child: ListTile(
                leading: Icon(
                  Icons.mail, 
                  size: 32, 
                  color: Color(0xff5600E8),
                ),
                title: Text("lesly.samaritano.ayala@gmail.com",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff23036A),
                  ),
                ),
                //subtitle: Text("Subtitulo"),
                trailing: Icon(
                  Icons.check, 
                  size: 32,
                  color: Color(0xff5600E8),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                   Image.asset(
                    "assets/images/linkedin.png",
                    width: 40,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Image.asset(
                    "assets/images/instagram.png",
                    width: 40,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Image.asset(
                    "assets/images/facebook.png",
                    width: 40,
                  ),
                ],
              ),
            ],
          ),
        )
      ),
    );
  }
}