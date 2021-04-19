import 'package:flutter/material.dart';





class Consults extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.teal,
          title: Center(
            child: Text("Consults",
            style: TextStyle(fontFamily: 'Montserrat',
            fontWeight: FontWeight.bold),),
          ),
        ),
        body: Center(
          child: Text(
            'No Consults yet',
            style: TextStyle(fontFamily: 'Montserrat',),
          ),
        ),
      ),
    );
  }
}
