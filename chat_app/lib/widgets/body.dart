import 'package:flutter/material.dart';
import 'package:chat_app/utils/responsive_widget.dart';
import 'small_screen.dart';
import 'large_screen.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget(
      largeScreen: LargeScreen(),
      smallScreen: SmallScreen(),
    );
  }
}