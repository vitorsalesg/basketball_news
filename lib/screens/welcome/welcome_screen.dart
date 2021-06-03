import 'package:basketball_app/core/widgets/button_widget.dart';
import 'package:basketball_app/screens/login/login_screen.dart';
import 'package:basketball_app/screens/register/register_screen.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Align(
              alignment: Alignment.center,
              child: Image.asset(
                'assets/images/logo.png',
                height: 300,
                width: 300,
              ),
            ),
            Text(
              'Bem vindo',
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 25,
                fontFamily: 'Montserrat',
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 10),
            Text(
              'Faça login com seus dados que você inseriu durante o seu registro.',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                fontFamily: 'Montserrat',
              ),
            ),
            const SizedBox(height: 40),
            ButtonWidget(
              title: 'Entrar',
              isBorder: false,
              onClicked: () => navigatorPage(
                context,
                LoginScreen(),
              ),
            ),
            const SizedBox(height: 20),
            ButtonWidget(
              title: 'Cadastrar',
              isBorder: true,
              onClicked: () => navigatorPage(
                context,
                RegisterScreen(),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void navigatorPage(BuildContext context, Widget route) {
    Navigator.push(context, MaterialPageRoute(builder: (ctx) => route));
  }
}
