import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class DioModule {
  DioModule();

  Dio? _dio;

  Dio get dio {
    if (_dio != null) {
      return _dio!;
    }

    BaseOptions options = BaseOptions(baseUrl: 'https://fakestoreapi.com');

    _dio = Dio(options);
    _dio!.interceptors.add(PrettyDioLogger(
        request: true,
        requestBody: false,
        responseBody: false,
        requestHeader: true));

    return _dio!;
  }
}
