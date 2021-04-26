import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:medlink_app/components/constants.dart';
import 'package:medlink_app/ui/profile/profile_screen.dart';

import 'contact_screen.dart';


class Home extends StatefulWidget {

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  User user;

  Widget _selectedExtras({String image,String name }){
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        border: Border.all(
            color: Colors.grey,
            width: 2
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 60.0,
            decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage(image))
            ),
          ),
          SizedBox(height: 10.0,),
          Text(name,style: TextStyle(fontSize: 17.0,),)
        ],
      ),
    );
  }


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.teal,
          title: Row(
            children: [
              Text(
                'Hello  ',
                style: kBodyText,
              ),
              Text(
                'World',
                style: kBodyText
              ),
            ],
          ),
          actions: <Widget>[
            IconButton(
                icon: Icon(Icons.person, color: Colors.black),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ProfileScreen()),
                  );
                })
          ],
        ),
        body: Container(
          child: Container(
            height: 800,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
              ),
            ),
            child: ListView(
              padding: EdgeInsets.only(left: 5, top: 5,),
              children: [
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,//learn this
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: 30.0,
                      top: 30.0,
                    ),
                    child: Row(
                      children: <Widget>[
                        Card(
                          child: Container(
                            width: (MediaQuery.of(context).size.width),
                            child: Card(
                              child: Wrap(
                                children: <Widget>[
                                  Image.asset('assets/images/pic1.jpg'),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Card(
                          child: Container(
                            width: (MediaQuery.of(context).size.width),
                            child: Card(
                              child: Wrap(
                                children: <Widget>[
                                  Image.asset('assets/images/pic2.jpg'),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Card(
                          child: Container(
                            width: (MediaQuery.of(context).size.width),
                            child: Card(
                              child: Wrap(
                                children: <Widget>[
                                  Image.asset('assets/images/pic3.jpg'),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 10.0,),
                Container(//hae
                  padding: EdgeInsets.symmetric(
                    horizontal: 20.0,
                    vertical: 30.0,
                  ),

                  child: Column(
                    children: [
                      Text(
                        'How can we help you Today',
                        style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.black,
                        ),
                      ),
                      Padding(padding: EdgeInsets.only(
                        top: 20.0,),
                        child: Column(
                          children: <Widget>[
                            Container(
                              height: 110,
                              width: (MediaQuery.of(context).size.width),
                              child: GridView.count(
                                crossAxisCount: 3,
                                crossAxisSpacing: 12,
                                mainAxisSpacing: 8,
                                childAspectRatio: 1.00,
                                children: [
                                  _selectedExtras(
                                      image: 'assets/images/homevist.png',
                                      name: 'Home Visit'
                                  ),
                                  _selectedExtras(
                                      image: "assets/images/packages.png",
                                      name: 'Packages'
                                  ),
                                  _selectedExtras(
                                      image: 'assets/images/lab.jpg',
                                      name: 'Lab Pickup'),
                                ],
                              ),
                            ),
                            SizedBox(height: 10.0,),
                            Column(
                              children: <Widget>[
                                Text(
                                  'Available Packages',
                                  style: TextStyle(
                                    fontSize: 20.0,
                                    color: Colors.black,
                                  ),
                                ),
                                Container(
                                  width: (MediaQuery.of(context).size.width),
                                  child: Card(
                                    child: Wrap(
                                      children: <Widget>[
                                        Image.asset('assets/images/eye.jpg'),
                                        Text('Eye Care Package',
                                          style: TextStyle(
                                            fontSize: 20.0,
                                            color: Colors.tealAccent,
                                          ),),
                                        Text('  KES 4566',
                                          style: TextStyle(
                                          fontSize: 20.0,
                                          color: Colors.black,
                                        ),)
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.tealAccent,
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ContactScreen()),
            );
          },
          child: Icon(Icons.message),
        ),
      ),
    );
  }
}


