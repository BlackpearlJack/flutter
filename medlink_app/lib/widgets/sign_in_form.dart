import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:medlink_app/components/constants.dart';
import 'package:medlink_app/net/flutterfire.dart';
import 'package:medlink_app/ui/authentication.dart';
import 'package:medlink_app/utils/validator.dart';
import 'package:medlink_app/widgets/password_input.dart';
import 'package:medlink_app/widgets/rounded_button.dart';
import 'package:medlink_app/widgets/text_input_field.dart';

class SignInForm extends StatefulWidget {
  final FocusNode emailFocusNode;
  final FocusNode passwordFocusNode;

  const SignInForm({
    Key key,
    @required this.emailFocusNode,
    @required this.passwordFocusNode,
  }) : super(key: key);

  @override
  _SignInFormState createState() => _SignInFormState();
}

class _SignInFormState extends State<SignInForm> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  final _signInFormKey = GlobalKey<FormState>();

  bool _isSigningIn = false;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _signInFormKey,
        child: Column(
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
                  icon: FontAwesomeIcons.lock,
                  emailController: _emailController,
                  emailFocusNode: widget.emailFocusNode,
                  inputType: TextInputType.text,
                  inputAction: TextInputAction.done,

                  label: 'Password',
                  hint: 'Enter your password',
                    validator: (value) => Validator.validateEmail(
                      email: value,
                    ),
                ),
                PasswordInput(
                  icon: FontAwesomeIcons.lock,
                  passwordController: _passwordController,
                  passwordFocusNode: widget.passwordFocusNode,
                  inputType: TextInputType.text,
                  hint: 'Enter your password',
                  label: 'Password',
                  validator: (value) => Validator.validatePassword(
                    password: value,
                  ),
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
                RoundedButton(
                  buttonName: 'Login',
                  on_pressed: () async {
                    widget.emailFocusNode.unfocus();
                    widget.passwordFocusNode.unfocus();

                    setState(() {
                      _isSigningIn = true;
                    });

                    if(_signInFormKey.currentState.validate()){
                      User user = await NetAuthentication.signInUsingEmailPassword(
                        context: context,
                        email: _emailController.text,
                        password: _passwordController.text,
                      );
                    }
                  },
                ),
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
    );
  }
}