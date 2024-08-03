import 'package:dio/dio.dart';

class CustomDio {
  final Dio _dio = Dio();

  CustomDio() {
    _dio.options.baseUrl = 'https://jsonplaceholder.typicode.com';
  }

  Future get(String url) async {
    try {
      final response = await _dio.get(url);
      return response.data;
    } on DioException catch (e) {
      print(e);
      return null;
    }
  }
}
