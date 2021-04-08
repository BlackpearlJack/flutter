import 'package:flutter/material.dart';
import 'package:flutter_app/Access/res/custom_colors.dart';
import 'package:flutter_app/Access/widgets/app_bar_title.dart';
import 'package:flutter_app/Access/widgets/register_form.dart';

class RegisterScreen extends StatefulWidget {
  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final FocusNode _nameFocusNode = FocusNode();
  final FocusNode _emailFocusNode = FocusNode();
  final FocusNode _passwordFocusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        _nameFocusNode.unfocus();
        _emailFocusNode.unfocus();
        _passwordFocusNode.unfocus();
      },
      child: Scaffold(
          backgroundColor: CustomColors.firebaseGrey,
          appBar: AppBar(
          elevation: 0,
          backgroundColor: CustomColors.appTeal,
          title: AppBarTitle(),
          ),
          resizeToAvoidBottomInset: false,
          body: SafeArea(
            child: Padding(
              padding: const EdgeInsets.only(
              left: 16.0,
              right: 16.0,
              bottom: 20.0,
              ),
              child: Container(
                child: RegisterForm(
                  nameFocusNode: _nameFocusNode,
                  emailFocusNode: _emailFocusNode,
                  passwordFocusNode: _passwordFocusNode,
                ),
              ),
            ),
          )
      ),
    );
  }
}
