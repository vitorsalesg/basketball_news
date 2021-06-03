import 'package:basketball_app/core/widgets/app_bar_widget.dart';
import 'package:basketball_app/core/widgets/button_widget.dart';
import 'package:basketball_app/core/widgets/header_widget.dart';
import 'package:basketball_app/core/widgets/social_networks_widget.dart';
import 'package:basketball_app/core/widgets/text_field_widget.dart';
import 'package:basketball_app/screens/register/register_screen.dart';
import 'package:basketball_app/screens/welcome/welcome_screen.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  final TextEditingController _fieldEmail = TextEditingController();
  final TextEditingController _fieldPassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (ctx) => WelcomeScreen(),
          ),
        );
        return true;
      },
      child: Scaffold(
        backgroundColor: Color(0xfffff6e6),
        appBar: AppBarWidget(context: context),
        body: Column(
          children: [
            HeaderWidget(
              title: 'Bem vindo',
              description:
                  'Entre e comece a acompanhar as principais noticias do basquete.',
            ),
            const SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: Column(
                children: [
                  TextFormFieldWidget(
                    icon: Icon(Icons.email, color: Colors.orange),
                    label: 'Email',
                    keyBoard: TextInputType.emailAddress,
                    obscureField: false,
                    controlerField: _fieldEmail,
                    enabledField: true,
                    lengthField: 60,
                  ),
                  const SizedBox(height: 20),
                  TextFormFieldWidget(
                    icon: Icon(Icons.lock, color: Colors.orange),
                    label: 'Senha',
                    keyBoard: TextInputType.emailAddress,
                    obscureField: true,
                    controlerField: _fieldPassword,
                    enabledField: true,
                    lengthField: 60,
                  ),
                  const SizedBox(height: 50),
                  ButtonWidget(
                    title: 'Entrar',
                    isBorder: false,
                    onClicked: () {},
                  ),
                  const SizedBox(height: 15),
                  Text(
                    'Esqueceu a senha',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      color: Colors.orange.withOpacity(0.7),
                    ),
                  ),
                  const SizedBox(height: 30),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 40),
                    child: SocialNetWorksWidget(),
                  ),
                  const SizedBox(height: 50),
                  ButtonWidget(
                    title: 'Cadastrar',
                    isBorder: true,
                    onClicked: () => Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (ctx) => RegisterScreen())),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
