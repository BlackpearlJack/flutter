import 'package:flutter/material.dart';
import 'package:flutter_app/Access/res/custom_colors.dart';

class AppBarTitle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/firebase_logo.png',
          height: 20,
        ),
        SizedBox(width: 8),
        Text(
          'Medlink',
          style: TextStyle(
            color: CustomColors.firebaseGrey,
            fontSize: 18,
          ),
        ),
      ],
    );
  }
}