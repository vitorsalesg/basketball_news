import 'package:basketball_app/core/app_colors.dart';
import 'package:basketball_app/core/widgets/app_bar_widget.dart';
import 'package:basketball_app/core/widgets/button_widget.dart';
import 'package:basketball_app/core/widgets/header_widget.dart';
import 'package:basketball_app/core/widgets/social_networks_widget.dart';
import 'package:basketball_app/core/widgets/text_field_widget.dart';
import 'package:basketball_app/screens/home/home_screen.dart';
import 'package:basketball_app/screens/login/controllers/login_controller.dart';
import 'package:basketball_app/screens/register/register_screen.dart';
import 'package:basketball_app/screens/welcome/welcome_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class LoginScreen extends StatelessWidget {
  final loginController = LoginController();

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
            Expanded(
              child: SingleChildScrollView(
                child: Container(
                  padding: const EdgeInsets.all(30.0),
                  child: Column(
                    children: [
                      Observer(
                        builder: (_) {
                          return TextFieldWidget(
                            icon: Icon(Icons.email, color: AppColors.orange),
                            label: 'Email',
                            keyBoard: TextInputType.emailAddress,
                            obscureField: false,
                            enabledField: !loginController.loading,
                            onChanged: loginController.setEmail,
                          );
                        },
                      ),
                      const SizedBox(height: 20),
                      Observer(
                        builder: (_) {
                          return TextFieldWidget(
                            icon: Icon(Icons.lock, color: AppColors.orange),
                            label: 'Senha',
                            keyBoard: TextInputType.emailAddress,
                            obscureField: true,
                            enabledField: !loginController.loading,
                            onChanged: loginController.setPassword,
                          );
                        },
                      ),
                      const SizedBox(height: 50),
                      Observer(
                        builder: (_) {
                          return ButtonWidget(
                            title: 'Entrar',
                            isBorder: false,
                            disable: !loginController.isFormValid,
                            loading: loginController.loading,
                            onClicked: () async {
                              loginController.setLoading(true);

                              await Future.delayed(Duration(seconds: 10));

                              Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                  builder: (ctx) => HomeScreen(),
                                ),
                              );

                              loginController.setLoading(false);
                            },
                          );
                        },
                      ),
                      const SizedBox(height: 15),
                      Text(
                        'Esqueceu a senha',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          color: AppColors.orange.withOpacity(0.7),
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
                        onClicked: () => Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (ctx) => RegisterScreen(),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
