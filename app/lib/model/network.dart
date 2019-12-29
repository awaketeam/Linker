import 'package:dio/dio.dart';

class Network {
  Dio dio;

  Network () {
    this.dio = Dio();
  }

  Future<Response<T>> get<T> (String path, {Map<String, dynamic> queryParameters} ) {
    return dio.get<T>(path, queryParameters: queryParameters).then((data) {
      print(data);
      return data;
    });
  }
}