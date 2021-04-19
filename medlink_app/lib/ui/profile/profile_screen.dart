import 'package:flutter/material.dart';

import 'body.dart';


class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.tealAccent,
          title: Text('Profile'),
        ),
        body: Body(),
      ),
    );
  }
}
