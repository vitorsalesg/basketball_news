import 'package:basketball_app/core/widgets/app_bar_widget.dart';
import 'package:basketball_app/core/widgets/button_widget.dart';
import 'package:basketball_app/core/widgets/header_widget.dart';
import 'package:basketball_app/core/widgets/social_networks_widget.dart';
import 'package:basketball_app/core/widgets/text_field_widget.dart';
import 'package:basketball_app/screens/login/login_screen.dart';
import 'package:basketball_app/screens/welcome/welcome_screen.dart';
import 'package:flutter/material.dart';

class RegisterScreen extends StatelessWidget {
  final TextEditingController _fieldEmail = TextEditingController();

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
              title: 'Nova conta',
              description:
                  'Cadastra-se e comece a acompanhar as principais noticias do basquete.',
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
                  Row(
                    children: [
                      Expanded(
                        child: TextFormFieldWidget(
                          icon: Icon(Icons.person, color: Colors.orange),
                          label: 'Nome',
                          keyBoard: TextInputType.emailAddress,
                          obscureField: true,
                          controlerField: _fieldEmail,
                          enabledField: true,
                          lengthField: 60,
                        ),
                      ),
                      const SizedBox(width: 15.0),
                      Expanded(
                        child: TextFormFieldWidget(
                          icon: Icon(Icons.person, color: Colors.orange),
                          label: 'Sobrenome',
                          keyBoard: TextInputType.emailAddress,
                          obscureField: true,
                          controlerField: _fieldEmail,
                          enabledField: true,
                          lengthField: 60,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  TextFormFieldWidget(
                    icon: Icon(Icons.lock, color: Colors.orange),
                    label: 'Senha',
                    keyBoard: TextInputType.emailAddress,
                    obscureField: true,
                    controlerField: _fieldEmail,
                    enabledField: true,
                    lengthField: 60,
                  ),
                  const SizedBox(height: 50),
                  ButtonWidget(
                    title: 'Cadastrar',
                    isBorder: false,
                    onClicked: () {},
                  ),
                  const SizedBox(height: 30),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 40),
                    child: SocialNetWorksWidget(),
                  ),
                  const SizedBox(height: 50),
                  ButtonWidget(
                    title: 'Entrar',
                    isBorder: true,
                    onClicked: () => Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (ctx) => LoginScreen())),
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
