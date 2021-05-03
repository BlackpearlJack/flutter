import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: HomePage(),
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
              children: <Widget>[
                Column(
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
                      image: AssetImage('')
                    )
                  ),
                )
              ],
            ),
          )
      ),
    );
  }
}

