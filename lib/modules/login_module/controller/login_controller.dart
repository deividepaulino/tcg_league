import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:tcg_league/core/dio/custom_dio.dart';
import 'package:tcg_league/modules/login_module/view/atoms/login_atoms.dart';
import 'package:tcg_league/modules/login_module/view/states/login_states.dart';

class LoginController {
  final Dio dio = CustomDio().dio;

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

  postUser() async {
    loginState.setValue(LoginLoadingState());

    final res = await dio.post(
      '/usuarios/',
      data: registerUser.value.toJson(),
    );

    if (res.statusCode == 201) {
      loginState.setValue(LoginInitialState());
    } else {
      loginState.setValue(LoginErrorState(res.data));
    }
  }
}
