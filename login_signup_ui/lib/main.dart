import 'package:flutter/material.dart';
import 'package:login_signup_ui/ui/login_page.dart';

void main() {
  runApp(MaterialApp(
    home: LoginPage(),
  ));
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
          child: Container(
            height: size.height,
            padding: EdgeInsets.symmetric(horizontal: 30, vertical: 50 ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "Welcome",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Automatic identity verification which enables you to verify your identity",
                      style: TextStyle(
                          color: Colors.grey[700],
                          fontSize: 15
                      ),
                      textAlign: TextAlign.center,
                    )
                  ],
                ),
                Container(
                  height: size.height/3,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/Illustration.png')
                    )
                  ),
                ),
                Column(
                  children: <Widget>[
                    MaterialButton(
                      minWidth: double.infinity,
                      height: 60,
                      onPressed: () {},
                      shape: RoundedRectangleBorder(
                        side: BorderSide(
                          color: Colors.black
                        ),
                        borderRadius: BorderRadius.circular(50)
                      ),
                      child: Text(
                          "Login",
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 18
                        ),
                      ),
                    ),
                    SizedBox(height: 20,),
                    Container(
                      padding: EdgeInsets.only(top: 3, left: 3),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        border: Border(
                          bottom: BorderSide(color: Colors.black),
                          top: BorderSide(color: Colors.black),
                          left: BorderSide(color: Colors.black),
                          right: BorderSide(color: Colors.black)
                        )
                      ),
                      child: MaterialButton(
                        minWidth: double.infinity,
                        height: 60,
                        onPressed: () {},
                        color: Colors.yellow,
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50)
                        ),
                        child: Text(
                          "Sign Up",
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 18
                          ),
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          )
      ),
    );
  }
}

