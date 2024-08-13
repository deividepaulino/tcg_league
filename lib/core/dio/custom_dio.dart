import 'package:dio/dio.dart';
import 'package:tcg_league/core/dio/interceptors/token_interceptor.dart';

class CustomDio {
  final Dio dio = Dio();

  CustomDio() {
    dio.options.baseUrl = 'http://localhost:3000/';

    dio.interceptors.add(
      LogInterceptor(
          requestBody: true, responseBody: true, error: true, request: true),
    );
    dio.interceptors.add(TokenInterceptor());
  }
}
