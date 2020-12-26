import 'package:flutter/material.dart';
import 'package:aliveapp/signup_page.dart';
import 'package:aliveapp/login_page.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: ConstrainedBox(
        constraints: 
          BoxConstraints(
            maxHeight: MediaQuery.of(context).size.height),
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: double.infinity,
          color: Color(0xFFEB404D),
          child: Column(
              children: <Widget>[     
                SizedBox
                  (height: 160),
                Image.asset('assets/SplashMain.jpg'),
                Column(children: [
                  RaisedButton(onPressed: () {
                    Navigator.push(context,
                      MaterialPageRoute(
                        builder: (context) {
                          return SignUpScreen();
                        },
                      ),
                    );
                  },
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25),
                      side: BorderSide(color: Colors.white)),
                    color: Color(0xFFEB404D),
                    textColor: Color(0xFFFFFFFF),
                    child: Container(
                      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 80),
                      child: Text("SIGN UP",
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                      ),
                      )
                    ),
                  ),

                  SizedBox(height: 8),

                  RaisedButton(onPressed: () {
                    Navigator.push(context,
                      MaterialPageRoute(
                        builder: (context) {
                          return LoginScreen();
                        },
                      ),
                    );
                  }, 
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25),
                      side: BorderSide(color: Colors.red)),
                    color: Color(0xFFFFFFFF),
                    textColor: Color(0xFFEB404D),
                    child: Container(
                      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 85),
                      child: Text("LOGIN",
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                      ),)
                    ),
                  ),
                ],)
              ],
            ),
          ),
        ),
      );
  }
}