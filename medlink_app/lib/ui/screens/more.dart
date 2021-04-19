import 'package:flutter/material.dart';

class More extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.teal,
          title: Center(
            child: Text("Health tools",
              style: TextStyle(fontFamily: 'Montserrat',
                  fontWeight: FontWeight.bold),),
          ),
        ),
        body: Container(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 10.0),
                  padding: EdgeInsets.only(left: 20,),
                  height: 120,
                  width: (MediaQuery.of(context).size.width),
                  decoration: BoxDecoration(
                      color: Colors.red[200],
                      borderRadius: BorderRadius.circular(15.0)
                  ),
                  child: Column(
                    children: <Widget>[
                      Center(
                        child: CircleAvatar(
                          backgroundImage: AssetImage('assets/images/bmi.png'),
                        ),
                      ),
                      Text("Body Mass Index (BMI)",style: TextStyle(
                        fontSize: 16.0,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.bold,
                        color: Colors.black87,
                      ),
                      ),
                      SizedBox(
                        height: 5.0,
                      ),
                      Text('A measure of body fat based on '
                          'height and width',
                        style: TextStyle(
                          fontSize: 12.0,
                          color: Colors.black87,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10.0,),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 10.0),
                  padding: EdgeInsets.only(left: 20,),
                  height: 120,
                  width: (MediaQuery.of(context).size.width),
                  decoration: BoxDecoration(
                      color: Colors.purple[200],
                      borderRadius: BorderRadius.circular(15.0)
                  ),
                  child: Column(
                    children: <Widget>[
                      Center(
                        child: CircleAvatar(
                          backgroundImage: AssetImage('assets/images/virus.png'),
                        ),
                      ),
                      Text("COVID-19 Self Assessment",style: TextStyle(
                        fontSize: 16.0,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.bold,
                        color: Colors.black87,
                      ),
                      ),
                      SizedBox(
                        height: 5.0,
                      ),
                      Text('Use this to determine whether you should be tested '
                          'or seek additional medical attention for COVID-19',
                        style: TextStyle(
                          fontSize: 12.0,
                          fontWeight: FontWeight.normal,
                          color: Colors.black87,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        )
      ),
    );
  }
}
