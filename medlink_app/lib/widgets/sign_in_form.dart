import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:medlink_app/components/constants.dart';
import 'package:medlink_app/net/flutterfire.dart';
import 'package:medlink_app/ui/screens/welcome_screen.dart';
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
            Padding(
              padding: const EdgeInsets.only(
                left:8.0,
                right: 8.0,
                bottom: 24.0
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  TextInputField(
                    icon: FontAwesomeIcons.envelope,
                    controller: _emailController,
                    focusNode: widget.emailFocusNode,
                    inputType: TextInputType.emailAddress,
                    inputAction: TextInputAction.next,

                    label: 'Email',
                    hint: 'Enter your email',
                      validator: (value) => Validator.validateEmail(
                        email: value,
                      ),
                  ),
                  SizedBox(
                    height: 16.0
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
                      style: kBodyText.copyWith(
                        color: kPrimaryLightColor
                      ),
                    ),
                  ),
                ],
              ),
            ),
            _isSigningIn
              ? Padding(
                padding: const EdgeInsets.all(16.0),
                child: CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(
                    Colors.deepPurpleAccent,
                  ),
                )
              )
              : Padding(
                 padding: EdgeInsets.only(left: 0.0, right: 0.0),
                  child: RoundedButton(
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

                        if(user != null){
                          Navigator.of(context).pushReplacement(
                              MaterialPageRoute(
                                  builder: (context) => WelcomeScreen()
                              )
                          );
                        }
                      }

                      setState(() {
                        _isSigningIn = false;
                      });
                    },
                  ),
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