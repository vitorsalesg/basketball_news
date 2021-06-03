import 'package:basketball_app/core/app_colors.dart';
import 'package:basketball_app/core/widgets/app_bar_widget.dart';
import 'package:basketball_app/core/widgets/button_widget.dart';
import 'package:basketball_app/core/widgets/header_widget.dart';
import 'package:basketball_app/core/widgets/social_networks_widget.dart';
import 'package:basketball_app/core/widgets/text_field_widget.dart';
import 'package:basketball_app/screens/login/login_screen.dart';
import 'package:basketball_app/screens/register/controllers/register_controller.dart';
import 'package:basketball_app/screens/welcome/welcome_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class RegisterScreen extends StatelessWidget {
  final registerController = RegisterController();

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
                            enabledField: !registerController.loading,
                            onChanged: registerController.setEmail,
                          );
                        },
                      ),
                      const SizedBox(height: 20),
                      Row(
                        children: [
                          Observer(
                            builder: (_) {
                              return Expanded(
                                child: TextFieldWidget(
                                  icon: Icon(
                                    Icons.person,
                                    color: AppColors.orange,
                                  ),
                                  label: 'Nome',
                                  keyBoard: TextInputType.text,
                                  obscureField: false,
                                  enabledField: !registerController.loading,
                                  onChanged: registerController.setName,
                                ),
                              );
                            },
                          ),
                          const SizedBox(width: 15.0),
                          Observer(
                            builder: (_) {
                              return Expanded(
                                child: TextFieldWidget(
                                  icon: Icon(
                                    Icons.person,
                                    color: AppColors.orange,
                                  ),
                                  label: 'Sobrenome',
                                  keyBoard: TextInputType.text,
                                  obscureField: false,
                                  enabledField: !registerController.loading,
                                  onChanged: registerController.setLastName,
                                ),
                              );
                            },
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),
                      Observer(
                        builder: (_) {
                          return TextFieldWidget(
                            icon: Icon(Icons.lock, color: AppColors.orange),
                            label: 'Senha',
                            keyBoard: TextInputType.emailAddress,
                            obscureField: true,
                            enabledField: !registerController.loading,
                            onChanged: registerController.setPassword,
                          );
                        },
                      ),
                      const SizedBox(height: 50),
                      Observer(
                        builder: (_) {
                          return ButtonWidget(
                            title: 'Cadastrar',
                            isBorder: false,
                            disable: !registerController.isFormValid,
                            loading: registerController.loading,
                            onClicked: () async {
                              registerController.setLoading(true);
                              await Future.delayed(Duration(seconds: 5));
                              registerController.setLoading(false);

                              Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                  builder: (ctx) => LoginScreen(),
                                ),
                              );
                            },
                          );
                        },
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
                        onClicked: () => Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (ctx) => LoginScreen(),
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
