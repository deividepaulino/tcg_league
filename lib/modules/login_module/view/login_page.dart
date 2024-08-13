// ignore_for_file: use_build_context_synchronously

import 'package:asp/asp.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:tcg_league/modules/login_module/controller/login_controller.dart';
import 'package:tcg_league/modules/login_module/models/login_model.dart';
import 'package:tcg_league/modules/login_module/view/atoms/login_atoms.dart';
import 'package:tcg_league/modules/login_module/view/states/login_states.dart';
import 'package:tcg_league/modules/login_module/view/widgets/register_widget.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

final LoginController loginController = LoginController();

final emailController = TextEditingController();
final passwordController = TextEditingController();
final loginKey = GlobalKey<FormState>();

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    final state = context.select(() => loginState.value);
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: Center(
        child: Card(
          elevation: 10,
          child: SizedBox(
            height: MediaQuery.of(context).size.height * 0.5,
            width: MediaQuery.of(context).size.width * 0.85,
            child: switch (state) {
              LoginInitialState _ => _builldInitial(),
              LoginLoadingState _ => _buildLoading(),
              LoginSuccessState _ => _buildSuccess(),
              LoginErrorState _ => _buildError(),
            },
          ),
        ),
      ),
    );
  }

  _builldInitial() {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: Form(
        key: loginKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TextFormField(
              controller: emailController,
              decoration: const InputDecoration(labelText: 'Email'),
            ),
            TextFormField(
              controller: passwordController,
              decoration: const InputDecoration(labelText: 'Senha'),
            ),
            Row(
              children: [
                const Text('Lembrar de mim'),
                Checkbox(value: false, onChanged: (value) {}),
              ],
            ),
            ElevatedButton(
              onPressed: () async {
                if (loginKey.currentState!.validate()) {
                  loginUser.setValue(
                    LoginModel(
                      email: emailController.text,
                      password: passwordController.text,
                    ),
                  );

                  await loginController.doLogin();

                  if (loginState.value is LoginSuccessState) {
                    Modular.to.pushNamed('/index/');
                  }

                  if (loginState.value is LoginErrorState) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text('Erro ao fazer login'),
                      ),
                    );
                  }
                }
              },
              child: const Text('Login'),
            ),
            ElevatedButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) {
                    return const RegisterWidget();
                  },
                );
              },
              child: const Text('Cadastrar'),
            ),
          ],
        ),
      ),
    );
  }

  _buildLoading() {
    return const Center(child: CircularProgressIndicator());
  }

  _buildSuccess() {
    Modular.to.pushNamed('/index/');

    return const Center(child: CircularProgressIndicator());
  }

  _buildError() {
    return Column(
      children: [
        const Text('Erro ao fazer login'),
        ElevatedButton(
          onPressed: () {
            loginController.doLogin();
          },
          child: const Text('Tentar novamente'),
        ),
      ],
    );
  }
}
