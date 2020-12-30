import 'package:aliveapp/homescreen.dart';
import 'package:aliveapp/signup_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:aliveapp/forgotpassword.dart';

class LoginScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: ConstrainedBox(
          constraints: 
          BoxConstraints(maxHeight: MediaQuery.of(context).size.height),
          child: Container(
            width: double.infinity,
            color: Color(0xFFEB404D),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(height: 75),
                Padding(
                  padding: EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text("Login",
                        style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text("Welcome to Alive App",
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),

                SizedBox(height: 40),
                //white portion
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(60),
                        topRight: Radius.circular(60),
                      ),
                    ),   
                    
                    child: Padding(
                      padding: EdgeInsets.only(
                        top:0.0,
                        bottom: 0.0,
                        right: 26.0,
                        left: 26.0,
                      ),
                      child: Column(
                        children: <Widget>[
                          Container(
                            height: MediaQuery.of(context).size.height / 1.5,
                            width: MediaQuery.of(context).size.width,
                            padding: EdgeInsets.only(top:60.0),
                          child: Column(
                            children: <Widget>[
                              //username
                              Container(
                                width: MediaQuery.of(context).size.width / 1.2,
                                height: 45.0,
                                padding: EdgeInsets.only(
                                  top:0.0,
                                  bottom: 0.0,
                                  right: 20.0,
                                  left: 20.0,
                                ),
                                margin: EdgeInsets.only(top: 40.0),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(15.0),
                                  ),
                                  color: Colors.grey[100],
                                  boxShadow: [BoxShadow(
                                    color: Colors.black12, 
                                    blurRadius: 4.0)
                                  ]
                                ),
                                child: TextField(
                                  cursorColor: Color(0xFFEB404D),
                                  textInputAction: TextInputAction.next,
                                  keyboardType: TextInputType.emailAddress,
                                  decoration: InputDecoration(
                                    icon: Icon(Icons.email),
                                    border: InputBorder.none,
                                    hintText: 'Email or Username',
                                    hintStyle: TextStyle(
                                      color: Colors.black45,
                                    ),
                                  ),
                                ),
                              ),

                              //password
                              Container(
                                width: MediaQuery.of(context).size.width / 1.2,
                                height: 45.0,
                                padding: EdgeInsets.only(
                                  top:0.0,
                                  bottom: 0.0,
                                  right: 20.0,
                                  left: 20.0,
                                ),
                                margin: EdgeInsets.only(top: 18.0),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(15.0),
                                  ),
                                  color: Colors.grey[100],
                                  boxShadow: [BoxShadow(
                                    color: Colors.black12, 
                                    blurRadius: 4.0)
                                  ]
                                ),
                                child: TextField(
                                  obscureText: true,
                                  cursorColor: Color(0xFFEB404D),
                                  textInputAction: TextInputAction.next,
                                  keyboardType: TextInputType.visiblePassword,
                                  decoration: InputDecoration(
                                    icon: Icon(Icons.lock),
                                    suffixIcon: IconButton(
                                      onPressed: () {},
                                      icon: Icon(Icons.visibility_off,
                                      color: Colors.grey,
                                      ),
                                    ),
                                    border: InputBorder.none,
                                    hintText: 'Password',
                                    hintStyle: TextStyle(
                                      color: Colors.black45,
                                    ),
                                  ),
                                ),
                              ),
                              
                              Padding(
                                padding: const EdgeInsets.only(top: 16.0),
                                child: Align(
                                  alignment: Alignment.centerRight,
                                  child: FlatButton(
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => ForgotPassword(),
                                        ));
                                    },
                                    color: Colors.white,
                                    highlightColor: Colors.transparent,
                                    child: Text(
                                      'Forgot Password?',
                                      style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 16,
                                      ),
                                    ),
                                  ),
                                ),
                              ),

                              Spacer(),
                              Container(
                                width: double.infinity,
                                padding: EdgeInsets.only(
                                  top: 0.0,
                                  bottom: 80.0,
                                  right: 10.0,
                                  left: 10.0,
                                ),
                                child: RaisedButton(
                                  elevation: 5.0,
                                  padding: EdgeInsets.all(12.0),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.all(Radius.circular(13.0)),
                                  ),
                                  color: Color(0xFFEB404D),
                                  onPressed: () {
                                    Navigator.push(context,
                                      MaterialPageRoute(
                                        builder: (context) => HomeScreen(),
                                    )
                                  );
                                  },
                                  child: Text(
                                    'Login'.toUpperCase(),
                                    style: TextStyle(
                                      fontWeight: FontWeight.normal,
                                      color: Colors.white,
                                      fontSize: 18.0,
                                    ),
                                  ),
                                ),
                              ),

                              Padding(
                                padding: const EdgeInsets.only(top: 16.0),
                                child: Align(
                                  alignment: Alignment.center,
                                  child: FlatButton(
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => SignUpScreen(),
                                        ));
                                    },
                                    color: Colors.white,
                                    highlightColor: Colors.transparent,
                                    child: Row(
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.only(left: 40.0),
                                        ),
                                        Text(
                                          'Create an Account',
                                          style: TextStyle(
                                            color: Colors.grey,
                                            fontSize: 16,
                                          ),
                                        ),
                                        Text(
                                          ' Sign Up',
                                          style: TextStyle(
                                            color: Color(0xFFEB404D),
                                            fontSize: 16,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          )
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      ),
    );
  }
}
