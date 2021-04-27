import 'package:flutter/material.dart';
import 'package:login_dashboard/components/custom_button.dart';
import 'package:login_dashboard/components/custom_button_animation.dart';
import 'package:login_dashboard/screens/login_screen.dart';

class HomeScreenState extends StatefulWidget {
  @override
  _HomeScreenStateState createState() => _HomeScreenStateState();
}

class _HomeScreenStateState extends State<HomeScreenState> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            "assets/images/home.jpg",
            fit: BoxFit.cover,
          ),
          Container(
            width: size.width,
            height: size.height,
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 30),
            margin: EdgeInsets.only(top:80, bottom: 80),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                        "Best waves for",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 22,
                            letterSpacing: 2
                        )
                    ),
                    Text(
                        ".surfing",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 50,
                            fontWeight: FontWeight.bold
                        )
                    ),
                  ],
                ),

                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CustomButton(
                      label: "Sign Up",
                      background: Colors.transparent,
                      fontColor: Colors.white,
                      borderColor: Colors.white,
                    ),
                    SizedBox(height: 20),
                    CustomButtonAnimation(
                      label: "Sign In",
                      background: Colors.white,
                      borderColor: Colors.white,
                      fontColor: Color(0xFFF001117),
                      child: LoginScreen(),
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
