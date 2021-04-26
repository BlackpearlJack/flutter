import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:medlink_app/components/constants.dart';
import 'package:medlink_app/net/flutterfire.dart';
import 'package:medlink_app/ui/access/sign_in_screen.dart';
import 'package:medlink_app/ui/screens/welcome_screen.dart';
import 'package:medlink_app/utils/validator.dart';
import 'package:medlink_app/widgets/password_input.dart';
import 'package:medlink_app/widgets/rounded_button.dart';
import 'package:medlink_app/widgets/text_input_field.dart';

class RegisterForm extends StatefulWidget {
  final FocusNode nameFocusNode;
  final FocusNode emailFocusNode;
  final FocusNode passwordFocusNode;

  const RegisterForm({
    Key key,
    @required this.nameFocusNode,
    @required this.emailFocusNode,
    @required this.passwordFocusNode,
  }) : super(key: key);
  @override
  _RegisterFormState createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  final _registerFormKey = GlobalKey<FormState>();

  bool _isSingningUp = false;

  Route _routeToSignInScreen() {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) => LoginScreen(),
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        var begin = Offset(-1.0, 0.0);
        var end = Offset.zero;
        var curve = Curves.ease;

        var tween =
        Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

        return SlideTransition(
          position: animation.drive(tween),
          child: child,
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _registerFormKey,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(
              left: 8.0,
              right: 8.0,
            ),
            child: Column(
              children: [
                TextInputField(
                  icon: FontAwesomeIcons.user,
                  controller: _nameController,
                  focusNode: widget.nameFocusNode,
                  inputType: TextInputType.name,
                  inputAction: TextInputAction.next,
                  validator: (value) => Validator.validateName(
                    name: value,
                  ),
                  label: 'Name',
                  hint: 'Enter your name',
                ),
                SizedBox(height: 16.0),
                TextInputField(
                  icon: FontAwesomeIcons.envelope,
                  controller: _emailController,
                  focusNode: widget.emailFocusNode,
                  inputType: TextInputType.emailAddress,
                  inputAction: TextInputAction.next,
                  validator: (value) => Validator.validateEmail(
                    email: value,
                  ),
                  label: 'Email',
                  hint: 'Enter your email',
                ),
                SizedBox(height: 16.0),
                PasswordInput(
                  icon: FontAwesomeIcons.lock,
                  passwordController: _passwordController,
                  passwordFocusNode: widget.passwordFocusNode,
                  inputType: TextInputType.text,
                  inputAction: TextInputAction.done,
                  validator: (value) => Validator.validatePassword(
                    password: value,
                  ),
                  label: 'Password',
                  hint: 'Enter your password',
                ),
              ],
            ),
          ),
          SizedBox(height: 24.0),
          _isSingningUp
              ? Padding(
            padding: const EdgeInsets.all(16.0),
            child: CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation<Color>(
                Colors.deepPurpleAccent,
              ),
            ),
          )
              : RoundedButton(
                buttonName: 'Register',
                on_pressed: () async {
                  widget.emailFocusNode.unfocus();
                  widget.passwordFocusNode.unfocus();

                  setState(() {
                    _isSingningUp = true;
                  });

                  if (_registerFormKey.currentState.validate()) {
                    User user =
                    await NetAuthentication.registerUsingEmailPassword(
                      name: _nameController.text,
                      email: _emailController.text,
                      password: _passwordController.text,
                      context: context,
                    );

                    if (user != null) {
                      Navigator.of(context).pushReplacement(
                        MaterialPageRoute(
                          builder: (context) => WelcomeScreen(
                          ),
                        ),
                      );
                    }
                  }

                  setState(() {
                    _isSingningUp = false;
                  });
                },
              ),
          SizedBox(height: 16.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Already have an account?",
                style: kBodyText,
              ),
              GestureDetector(
                onTap: () => Navigator.pushNamed(context, '/'),
                child: Text(
                  'Login',
                  style: kBodyText.copyWith(
                    color: kBlue,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
