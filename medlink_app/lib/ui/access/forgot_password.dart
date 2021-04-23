import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:medlink_app/components/constants.dart';
import 'package:medlink_app/widgets/background_image.dart';
import 'package:medlink_app/widgets/rounded_button.dart';
import 'package:medlink_app/widgets/text_input_field.dart';

class ForgotPassword extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Stack(
      children: [
        BackgroundImage(image: 'assets/images/login_bg.png'),
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            leading: IconButton(
              icon: Icon(
                Icons.arrow_back_ios,
                color: kWhite,
              ),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            title: Text(
              'Forgot Password',
              style: kBodyText,
            ),
            centerTitle: true,
          ),
          body: SingleChildScrollView(
            child: Center(
              child: Column(
                children: [
                  Container(
                    width: size.width * 0.8,
                    child: Text(''
                        'Enter your email we will send instructions to reset your password',
                      style: kBodyText,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextInputField(
                    icon: FontAwesomeIcons.envelope,
                    hint: 'Email',
                    inputType: TextInputType.emailAddress,
                    inputAction: TextInputAction.done,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  RoundedButton(
                    buttonName: 'Send',
                  )
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
