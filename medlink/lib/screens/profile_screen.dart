import 'package:flutter/material.dart';
import 'package:medlink/widgets/profile_body.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.tealAccent,
          title: Text('Profile'),
        ),
        body: ProfileBody(),
      ),
    );
  }
}