import 'package:flutter/material.dart';
import 'package:medlink_app/components/constants.dart';

class TextInputField extends StatelessWidget {
  const TextInputField({
    Key key,
    @required this.icon,
    @required this.hint,
    @required this.inputType,
    @required this.inputAction,
    @required this.controller,
    @required this.focusNode,
    @required this.label,
    @required this.validator,
  }) : super(key: key);

  final TextEditingController controller;
  final FocusNode focusNode;
  final IconData icon;
  final String label;
  final String hint;
  final TextInputType inputType;
  final TextInputAction inputAction;
  final Function(String) validator;

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
            controller: controller,
            focusNode: focusNode,
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
          ),
        ),
      ),
    );
  }
}
