import 'package:dio/dio.dart';

class CustomDio {
  final Dio dio = Dio();

  CustomDio() {
    dio.options.baseUrl = 'http://localhost:3000/';

    dio.interceptors.add(
      LogInterceptor(
          requestBody: true, responseBody: true, error: true, request: true),
    );
  }
}
