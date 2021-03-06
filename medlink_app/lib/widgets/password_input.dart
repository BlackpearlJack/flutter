import 'package:flutter/material.dart';
import 'package:medlink_app/components/constants.dart';

class PasswordInput extends StatelessWidget {
  const PasswordInput({
    Key key,
    @required this.icon,
    @required this.hint,
    @required this.inputType,
    @required this.inputAction,
    @required this.validator,
    @required this.passwordController,
    @required this.passwordFocusNode,
    @required this.label,
  }) : super(key: key);

  final IconData icon;
  final String hint;
  final TextInputType inputType;
  final TextInputAction inputAction;
  final Function(String) validator;
  final TextEditingController passwordController;
  final FocusNode passwordFocusNode;
  final String label;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Container(
        height: size.height * 0.08,
        width: size.width * 0.8,
        decoration: BoxDecoration(
          color: Colors.grey[500].withOpacity(0.5),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Center(
          child: TextFormField(
            controller: passwordController,
            focusNode: passwordFocusNode,
            keyboardType: inputType,
            textInputAction: inputAction,
            cursorColor: Colors.deepPurpleAccent,
            validator: (value) => validator(value),
            decoration: InputDecoration(
              border: InputBorder.none,
              prefixIcon: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Icon(
                  icon,
                  size: 26,
                  color: kWhite,
                ),
              ),
              hintText: hint,
              hintStyle: kBodyText,
            ),
            obscureText: true,
          ),
        ),
      ),
    );
  }
}
