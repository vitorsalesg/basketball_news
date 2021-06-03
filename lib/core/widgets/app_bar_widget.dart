import 'package:basketball_app/core/app_colors.dart';
import 'package:basketball_app/screens/welcome/welcome_screen.dart';
import 'package:flutter/material.dart';

class AppBarWidget extends AppBar {
  AppBarWidget({
    Key? key,
    required BuildContext context,
  }) : super(
          key: key,
          automaticallyImplyLeading: false,
          backgroundColor: AppColors.white,
          elevation: 0,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              IconButton(
                padding: EdgeInsets.zero,
                onPressed: () => Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (ctx) => WelcomeScreen(),
                  ),
                ),
                icon: Icon(Icons.arrow_back, color: AppColors.orange),
              ),
              // Your widgets here
            ],
          ),
        );
}
