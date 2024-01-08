import 'package:dio/dio.dart';

InterceptorsWrapper dioMainInterceptor() {
  return InterceptorsWrapper(onRequest: (requestOptions, handler) {
    return handler.next(requestOptions);
  }, onResponse: (response, handler) {
    return handler.next(response);
  }, onError: (DioException e, handler) {
    return handler.next(e);
  });
}
