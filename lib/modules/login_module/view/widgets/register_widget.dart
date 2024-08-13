import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:tcg_league/modules/login_module/models/login_model.dart';
import 'package:tcg_league/modules/login_module/view/atoms/login_atoms.dart';
import 'package:tcg_league/modules/login_module/view/login_page.dart';

class RegisterWidget extends StatefulWidget {
  const RegisterWidget({super.key});

  @override
  State<RegisterWidget> createState() => _RegisterWidgetState();
}

class _RegisterWidgetState extends State<RegisterWidget> {
  final formKey = GlobalKey<FormState>();

  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final nameController = TextEditingController();
  final lastNameController = TextEditingController();
  final ageController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Padding(
        padding: const EdgeInsets.all(32.0),
        child: Form(
          key: formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TextFormField(
                controller: nameController,
                decoration: const InputDecoration(labelText: 'Nome'),
                validator: (v) {
                  if (v!.isEmpty) {
                    return 'Campo obrigatório';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: lastNameController,
                decoration: const InputDecoration(labelText: 'Sobrenome'),
                validator: (v) {
                  if (v!.isEmpty) {
                    return 'Campo obrigatório';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: ageController,
                decoration: const InputDecoration(labelText: 'Idade'),
                validator: (v) {
                  if (v!.isEmpty) {
                    return 'Campo obrigatório';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: emailController,
                decoration: const InputDecoration(labelText: 'Email'),
                validator: (v) {
                  if (v!.isEmpty) {
                    return 'Campo obrigatório';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: passwordController,
                decoration: const InputDecoration(labelText: 'Senha'),
                validator: (v) {
                  if (v!.isEmpty) {
                    return 'Campo obrigatório';
                  }
                  return null;
                },
              ),
              //pass confirm
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Confirmar Senha',
                ),
                validator: (v) {
                  if (v != passwordController.text) {
                    return 'Senhas não conferem';
                  }
                  return null;
                },
              ),
              ElevatedButton(
                onPressed: () {
                  if (formKey.currentState!.validate()) {
                    registerUser.setValue(
                      LoginModel(
                        name: nameController.text,
                        lastName: lastNameController.text,
                        age: int.tryParse(ageController.text),
                        email: emailController.text,
                        password: passwordController.text,
                      ),
                    );

                    loginController.postUser();
                    Modular.to.pop(context);
                  }
                },
                child: const Text('Cadastrar'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
