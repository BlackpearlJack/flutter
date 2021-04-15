import 'package:flutter/material.dart';
import 'package:medlink_app/net/flutterfire.dart';

import 'home_view.dart';

class Authentication extends StatefulWidget {
  Authentication({Key key}) : super(key: key);


  @override
  _AuthenticationState createState() => _AuthenticationState();
}

class _AuthenticationState extends State<Authentication> {
  TextEditingController _emailField = TextEditingController();
  TextEditingController _passwordField = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
            color: Colors.blueAccent
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TextFormField(
                controller: _emailField,
                decoration: InputDecoration(
                  hintText: "something@email.com",
                  labelText: "Email",
                  labelStyle: TextStyle(
                    color: Colors.white
                  ),
                ),
              ),
              TextFormField(
                controller: _passwordField,
                decoration: InputDecoration(
                  hintText: "password",
                  labelText: "Password",
                  labelStyle: TextStyle(
                      color: Colors.white
                  ),
                ),
                obscureText: true,
              ),
              Container(
                width: MediaQuery.of(context).size.width/1.4,
                height: 45,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.0),
                  color: Colors.white,
                ),
                child: MaterialButton(
                  onPressed: () async {
                    bool shouldNavigate = await register(_emailField.text, _passwordField.text);
                    if (shouldNavigate) {
                      // Navigate
                      if (shouldNavigate) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => HomeView(),
                          ),
                        );
                      }
                    }
                  },
                  child: Text("Register"),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width/1.4,
                height: 45,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.0),
                  color: Colors.white,
                ),
                child: MaterialButton(
                  onPressed: () async {
                    bool shouldNavigate = await signIn(_emailField.text, _passwordField.text);
                    if (shouldNavigate) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HomeView(),
                        ),
                      );
                    }
                  },
                  child: Text("Login"),
                ),
              ),
            ],
          )
        ),
    );
  }
}
