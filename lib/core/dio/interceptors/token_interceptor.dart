//token interceptor

import 'package:dio/dio.dart';
import 'package:shared_preferences/shared_preferences.dart';

class TokenInterceptor extends Interceptor {
  @override
  void onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {
    if (!options.path.contains('login')) {
      String token = await _getToken();

      options.headers['Authorization'] = 'Bearer $token';
      super.onRequest(options, handler);
    } else {
      super.onRequest(options, handler);
    }
  }

  _getToken() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final token = prefs.getString('token');
    return token;
  }
}
