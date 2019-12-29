import 'package:dio/dio.dart';

class Network {
  Dio dio;

  Network() {
    dio = Dio();

    dio.interceptors
        .add(InterceptorsWrapper(onRequest: (RequestOptions options) async {
      print("Network onRequest");
      print(options.path);
      print(options.queryParameters);

      // 如果你想完成请求并返回一些自定义数据，可以返回一个`Response`对象或返回`dio.resolve(data)`。
      // 这样请求将会被终止，上层then会被调用，then中返回的数据将是你的自定义数据data.
      //
      // 如果你想终止请求并触发一个错误,你可以返回一个`DioError`对象，或返回`dio.reject(errMsg)`，
      // 这样请求将被中止并触发异常，上层catchError会被调用。
      return options;
    }, onResponse: (Response response) async {
      print("Network onResponse");
      return response;
    }, onError: (DioError e) async {
      print("Network onError");
      return e;
    })); //是否开启请求日志
  }

  Future<Response<T>> get<T>(String path,
      {Map<String, dynamic> queryParameters}) {
    return dio.get<T>(path, queryParameters: queryParameters);
  }

  Future<Response<T>> post<T>(
    String path, {
    data,
  }) {
    return dio.post<T>(path, data: data);
  }
}
