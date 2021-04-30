import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medlink_app/components/constants.dart';
import 'package:medlink_app/ui/profile/profile_screen.dart';
import 'package:medlink_app/widgets/background_image.dart';

import 'contact_screen.dart';



class Home extends StatefulWidget {

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  // Current selected
  int current = 0;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Stack(
      children: [
        BackgroundImage(image: 'assets/images/register_bg.png'),
        Scaffold(
          backgroundColor: Colors.transparent,
          body: Container(
            margin: EdgeInsets.only(top: 8),
            child: ListView(
              physics: ClampingScrollPhysics(),
              children: [

                //Custom AppBar

                Container(
                  margin: EdgeInsets.only(left: 16, right: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                          child: SvgPicture.asset('assets/svg/drawer_icon.svg'),
                        onTap: () {
                          print('Drawer Tapped');
                        },
                      ),
                      // IconButton(
                      //     icon: Icon(Icons.list),
                      //     onPressed: () {
                      //       print('Drawer Tapped');
                      //     }
                      // ),
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).pushReplacement(
                              MaterialPageRoute(
                                  builder: (context) => ProfileScreen()
                              )
                          );
                        },
                        child: CircleAvatar(
                          backgroundImage: AssetImage('assets/images/profile.jpg'),
                        ),
                      ),
                    ],
                  ),
                ),

                //Card Section

                SizedBox(
                  height: 25,
                ),

                Padding(
                  padding: EdgeInsets.only(left: 16, bottom: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Good Morning',
                        style: kBodyText,
                      ),
                      Text(
                          'Mickey Mouse',
                        style: GoogleFonts.inter(
                          fontSize: 30,
                          fontWeight: FontWeight.w700,
                          color: kWhiteColor
                        ),
                      )
                    ],
                  ),
                ),

                Container(
                  height: 199,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    padding: EdgeInsets.only(left: 16, right: 6),
                    children: [
                      Container(
                        margin: EdgeInsets.only(right: 10),
                        height: 199,
                        width: 344,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(28),
                          image: DecorationImage(image:AssetImage("assets/images/pic1.jpg"))
                        ),
                        child: Center(
                          child: Text(
                            "General Checkup",
                            style: GoogleFonts.inter(
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                                color: kWhiteColor
                            ),
                          ),
                        )
                      ),
                      Container(
                        margin: EdgeInsets.only(right: 10),
                        height: 199,
                        width: 344,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(28),
                            image: DecorationImage(
                                image:AssetImage("assets/images/pic2.jpg")
                            ),
                        ),
                        child: Center(
                            child: Text(
                              "Dentist Checkup",
                              style: kBodyText,
                            )
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(right: 10),
                        height: 199,
                        width: 344,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(28),
                            image: DecorationImage(image:AssetImage("assets/images/pic3.jpg"))
                        ),
                        child: Center(
                            child: Text(
                                "Women Healthcare",
                              style: kBodyText,
                            )
                        ),
                      ),
                    ],
                  )
                ),

                Padding(
                  padding: EdgeInsets.only(left: 16, bottom: 13, top: 29),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'How Can we Help You Today',
                        style: kBodyText,
                      ),
                    ],
                  ),
                ),

                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          GestureDetector(
                            child: Container(
                              margin: EdgeInsets.only(right: 10),
                              width: size.width * 1/3,
                              height: 123,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  image: DecorationImage(image:AssetImage("assets/images/homevist.png"))
                              ),
                              child: Center(
                                  child: Text(
                                    "Home Visit",
                                    style: kIconText,
                                  )
                              ),
                            ),
                            onTap: () {},
                          ),
                          GestureDetector(
                            child: Container(
                              margin: EdgeInsets.only(right: 10),
                              width: size.width * 1/3,
                              height: 123,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  image: DecorationImage(image:AssetImage("assets/images/lab.jpg"))
                              ),
                              child: Center(
                                  child: Text(
                                    "Lab Pickup",
                                    style: kIconText,
                                  )
                              ),
                            ),
                            onTap: () {},
                          ),
                          GestureDetector(
                            child: Container(
                              margin: EdgeInsets.only(right: 10),
                              width: size.width * 1/3,
                              height: 123,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  image: DecorationImage(image:AssetImage("assets/images/packages.png"))
                              ),
                              child: Center(
                                  child: Text(
                                    "Packages",
                                    style: kIconText,
                                  )
                              ),
                            ),
                            onTap: () {},
                          ),
                        ],
                      ),
                      GestureDetector(
                        child: Container(
                          width: size.width,
                          height: 60,
                          decoration: BoxDecoration(
                            color: Colors.transparent,
                            borderRadius: BorderRadius.circular(15)
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CircleAvatar(
                                backgroundImage: AssetImage('assets/images/vaccine.png'),
                              ),
                              SizedBox(
                                width: size.width * 0.08,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                      'Vaccination',
                                    style: kBodyText,
                                  ),
                                  Text(
                                      'Routine Immunizations at home',
                                    style: kBodyText,
                                  )
                                ],
                              ),

                            ],
                          ),
                        ),
                        onTap: () {},
                      ),
                    ],
                  ),
                ),

                Padding(
                  padding: EdgeInsets.only(left: 16, bottom: 13, top: 29),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Popular Packages',
                        style: kBodyText,
                      ),
                    ],
                  ),
                ),
                Container(
                  width: size.width,
                  margin: EdgeInsets.only(bottom: 13),
                  padding: EdgeInsets.only(left: 24,top: 12,bottom: 12,right: 22),
                  decoration: BoxDecoration(
                    color: kWhiteColor,
                    borderRadius: BorderRadius.circular(15),
                  ),
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
                )
              ],
            ),
          ),
          floatingActionButton: FloatingActionButton(
            backgroundColor: kPrimaryColor,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ContactScreen()),
              );
            },
            child: Icon(Icons.message),
          ),
        ),
      ],
    );
  }
}
