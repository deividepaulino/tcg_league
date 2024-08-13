import 'package:dio/dio.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:tcg_league/core/dio/custom_dio.dart';
import 'package:tcg_league/modules/login_module/view/atoms/login_atoms.dart';
import 'package:tcg_league/modules/login_module/view/states/login_states.dart';

class LoginController {
  final Dio dio = CustomDio().dio;

  doLogin() async {
    loginState.setValue(LoginLoadingState());

    final res = await dio.post(
      '/auth/login/',
      data: {
        "email": loginUser.value.email,
        "senha": loginUser.value.password,
      },
    );

    if (res.statusCode == 201) {
      final token = res.data['access_token'];

      await _saveToken(token);

      loginState.setValue(LoginSuccessState(token));
    } else {
      loginState.setValue(LoginErrorState(res.data));
    }
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

  _saveToken(String token) async {
    //save on shared preferences the token
    final SharedPreferences prefs = await SharedPreferences.getInstance();

    prefs.setString('token', token);

    print('Token salvo  $token');
  }
}
