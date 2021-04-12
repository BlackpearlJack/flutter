import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'Access/screens/sign_in_screen.dart';
import 'Access/signup.dart';
import 'Screens/welcome_screen.dart';




void main() => runApp(MaterialApp(
  home: MyAPP()),
);



class MyAPP extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: <String, WidgetBuilder>{
        '/signup': (BuildContext context) => new SignupPage(),
        '/welcomepage': (BuildContext context) => new WelcomeScreen(),
      },
      home: SignInScreen(),
    );
  }
}

