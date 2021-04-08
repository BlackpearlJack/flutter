import 'package:flutter/material.dart';


class ContactScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.teal,
          title: Text('Contact us'),
        ),

      ),
    );
  }
}
