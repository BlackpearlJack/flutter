import 'package:flutter/material.dart';
import 'package:medlink_app/components/constants.dart';
import 'package:medlink_app/widgets/background_image.dart';





class Consults extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        BackgroundImage(image: "assets/images/register_bg.png"),
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            backgroundColor: kPrimaryColor,
            title: Center(
              child: Text("Consults",
              style: kBodyText),
            ),
          ),
          body: Center(
            child: Text(
              'No Consults yet',
              style: kBodyText,
            ),
          ),
        ),
      ],
    );
  }
}
