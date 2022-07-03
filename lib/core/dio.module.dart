import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@module
abstract class RegisterModule {
  @Named("baseUrl")
  String get baseUrl => 'https://api.seatgeek.com/2/';

  @lazySingleton
  Dio dio(@Named("baseUrl") String url) {
    final dio = Dio(BaseOptions(baseUrl: url, headers: {
      "Authorization":
          "Basic ${base64.encode('Mjc2OTAzNjF8MTY1Njc3NDg1OC44Njg4ODk'.codeUnits)}",
      'Content-Type': 'application/x-www-form-urlencoded'
    }));
    dio.interceptors.add(LogInterceptor(
      requestBody: true,
      responseBody: true,
    ));
    return dio;
  }
}
