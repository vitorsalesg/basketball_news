import 'package:basketball_app/screens/welcome/welcome_screen.dart';
import 'package:flutter/material.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Basketball App',
      debugShowCheckedModeBanner: false,
      home: WelcomeScreen(),
    );
  }
}
