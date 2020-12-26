import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';
import 'welcomescreen.dart';

void main() {
  runApp(new MaterialApp(
    debugShowCheckedModeBanner: false,
    home: new MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

//splash screen
class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context){
    return SplashScreen(
      seconds: 5,
      backgroundColor: Colors.white,
      image: Image.asset('assets/splashwhite2.png'),
      photoSize: 200.0,
      navigateAfterSeconds: WelcomeScreen(),
    );
  }
}
 