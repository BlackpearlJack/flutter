import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:medlink_app/ui/access/sign_in_screen.dart';
import 'package:medlink_app/ui/profile/profile_pic.dart';



class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  // bool _isEmailVerified;
  // User _user;
  //
  // bool _verificationEmailBeingSent = false;
  bool _isSigningOut = false;

  Route _routeToSignInScreen() {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) => LoginScreen(),
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        var begin = Offset(-1.0, 0.0);
        var end = Offset.zero;
        var curve = Curves.ease;

        var tween =
        Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

        return SlideTransition(
          position: animation.drive(tween),
          child: child,
        );
      },
    );
  }

  @override

  Widget build(BuildContext context) {
    return Column(
      children: [
        ProfilePic(),
        SizedBox(height: 20,),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: FlatButton(
            padding: EdgeInsets.all(20),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
              color: Colors.grey[200],
              onPressed: () {},
              child: Row(
                children: [
                  Icon(Icons.account_box,
                  color: Colors.tealAccent,),
                  SizedBox(width: 20,),
                  Expanded(child: Text('My Account',
                  style: Theme.of(context).textTheme.bodyText1,
                    ),
                  ),
                  Icon(Icons.arrow_forward)
                ],
              ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          // ignore: deprecated_member_use
          child: FlatButton(
            padding: EdgeInsets.all(20),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            color: Colors.grey[200],
            onPressed: () {},
            child: Row(
              children: [
                Icon(Icons.account_balance,
                  color: Colors.tealAccent,),
                SizedBox(width: 20,),
                Expanded(child: Text('Insurance',
                  style: Theme.of(context).textTheme.bodyText1,
                ),
                ),
                Icon(Icons.arrow_forward)
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: FlatButton(
            padding: EdgeInsets.all(20),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            color: Colors.grey[200],
            onPressed: () {},
            child: Row(
              children: [
                Icon(Icons.help_outline,
                  color: Colors.tealAccent,),
                SizedBox(width: 20,),
                Expanded(child: Text('Help and Support',
                  style: Theme.of(context).textTheme.bodyText1,
                ),
                ),
                Icon(Icons.arrow_forward)
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: FlatButton(
            padding: EdgeInsets.all(20),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            color: Colors.grey[200],
            onPressed: () {},
            child: Row(
              children: [
                Icon(Icons.info_outline,
                  color: Colors.tealAccent,),
                SizedBox(width: 20,),
                Expanded(child: Text('About',
                  style: Theme.of(context).textTheme.bodyText1,
                ),
                ),
                Icon(Icons.arrow_forward)
              ],
            ),
          ),
        ),
        _isSigningOut
          ? CircularProgressIndicator(
            valueColor: AlwaysStoppedAnimation<Color>(
                Colors.deepPurple
            ),
          )
          :Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              // ignore: deprecated_member_use
              child: FlatButton(
                padding: EdgeInsets.all(20),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)
                ),
                color: Colors.grey[200],
                onPressed: () async {
                  setState(() {
                    _isSigningOut = true;
                  });

                  await FirebaseAuth.instance.signOut();

                  setState(() {
                    _isSigningOut = false;
                  });

                  Navigator.of(context)
                      .pushReplacement(_routeToSignInScreen());
                },
                child: Row(
                  children: [
                    Icon(Icons.logout,
                      color: Colors.tealAccent,),
                    SizedBox(width: 20,),
                    Expanded(child: Text('Log Out',
                      style: Theme.of(context).textTheme.bodyText1,
                    ),
                    ),
                    Icon(Icons.arrow_forward)
                  ],
                ),
              ),
      ),
      ],
    );
  }
}
