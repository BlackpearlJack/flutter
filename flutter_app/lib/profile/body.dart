import 'package:flutter/material.dart';
import 'package:flutter_app/profile/profile_pic.dart';


class Body extends StatelessWidget {
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
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: FlatButton(
            padding: EdgeInsets.all(20),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            color: Colors.grey[200],
            onPressed: () {},
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
