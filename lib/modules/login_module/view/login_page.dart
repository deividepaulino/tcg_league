import 'package:asp/asp.dart';
import 'package:flutter/material.dart';
import 'package:tcg_league/modules/login_module/controller/login_controller.dart';
import 'package:tcg_league/modules/login_module/view/atoms/login_atoms.dart';
import 'package:tcg_league/modules/login_module/view/states/login_states.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

final LoginController loginController = LoginController();

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    final state = context.select(() => loginState.value);
    return Scaffold(
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
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          TextFormField(
            decoration: const InputDecoration(labelText: 'Email'),
          ),
          TextFormField(
            decoration: const InputDecoration(labelText: 'Senha'),
          ),
          Row(
            children: [
              const Text('Lembrar de mim'),
              Checkbox(value: false, onChanged: (value) {}),
            ],
          ),
          ElevatedButton(
            onPressed: () {
              loginController.doLogin();
            },
            child: const Text('Login'),
          ),
          ElevatedButton(
            onPressed: () {},
            child: const Text('Cadastrar'),
          ),
        ],
      ),
    );
  }

  _buildLoading() {
    return const Center(child: CircularProgressIndicator());
  }

  _buildSuccess() {
    return Container();
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
