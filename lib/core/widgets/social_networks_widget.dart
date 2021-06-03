import 'package:flutter/material.dart';

class SocialNetWorksWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CircleAvatar(
          radius: 30,
          backgroundColor: Colors.white,
          child: Image.asset(
            'assets/images/facebook.png',
            height: 40,
          ),
        ),
        CircleAvatar(
          radius: 30,
          backgroundColor: Colors.white,
          child: Image.asset(
            'assets/images/google.png',
            height: 40,
          ),
        ),
        CircleAvatar(
          radius: 30,
          backgroundColor: Colors.white,
          child: Image.asset(
            'assets/images/twitter.png',
            height: 40,
          ),
        ),
      ],
    );
  }
}
