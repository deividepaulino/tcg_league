import 'dart:convert';

import 'package:tcg_league/core/dio/custom_dio.dart';
import 'package:tcg_league/modules/login_module/view/atoms/login_atoms.dart';
import 'package:tcg_league/modules/login_module/view/states/login_states.dart';

class LoginController {
  final CustomDio dio = CustomDio();

  //login mock
  final Map<String, dynamic> mock = {
    "email": "deivide@teste.com",
    "password": "123456",
    "token": "123"
  };

  doLogin() async {
    loginState.setValue(LoginLoadingState());

    await Future.delayed(const Duration(seconds: 1));

    loginState.setValue(LoginSuccessState(jsonEncode(mock)));
  }
}
