import 'package:flutter/material.dart';

class ProfilePic extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 115,
      width: 115,
      child: Stack(
        fit: StackFit.expand,
        children: [
          CircleAvatar(
            backgroundImage: AssetImage('assets/images/profile.jpg'),
          ),
          Positioned(
            right: -12,
            bottom:0,
            child: SizedBox(
              height: 46,
              width: 46,
              child: IconButton(
                padding: EdgeInsets.zero,
                onPressed: () {},
                color: Colors.grey[200],
                icon: Icon(Icons.add_a_photo_sharp)  ,
              ),
            ),
          )
        ],
      ),
    )
    ;
  }
}