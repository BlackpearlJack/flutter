import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:medlink_app/components/constants.dart';
import 'package:medlink_app/widgets/background_image.dart';
import 'package:medlink_app/widgets/password_input.dart';
import 'package:medlink_app/widgets/rounded_button.dart';
import 'package:medlink_app/widgets/text_input_field.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Stack(
        children: [
          BackgroundImage(image: 'assets/images/login_bg.png'),
          Scaffold(
            backgroundColor: Colors.transparent,
            body: Column(
              children: [
                Flexible(
                  child: Center(
                    child: Text(
                      'Medlink',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 40,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    TextInputField(
                      icon: FontAwesomeIcons.envelope,
                      hint: 'Email',
                      inputType: TextInputType.emailAddress,
                      inputAction: TextInputAction.next,
                    ),
                    PasswordInput(
                      icon: FontAwesomeIcons.lock,
                      hint: 'Password',
                      inputAction: TextInputAction.done,
                    ),
                    GestureDetector(
                      onTap: () => Navigator.pushNamed(context, 'ForgotPassword'),
                      child: Text(
                        'Forgot Password',
                        style: kBodyText,
                      ),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    RoundedButton(buttonName: 'Login'),
                    SizedBox(
                      height: 25,
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Don't have an account?",
                      style: kBodyText,
                    ),
                    GestureDetector(
                      onTap: () => Navigator.pushNamed(context, 'CreateNewAccount'),
                      child: Text(
                        'Sign Up',
                        style: kBodyText.copyWith(
                          color: kBlue,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
