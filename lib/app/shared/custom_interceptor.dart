import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

class CustomInterceptors extends InterceptorsWrapper {
  @override
  Future onRequest(RequestOptions options) async {
    if (kDebugMode) {
      _printRequest(options);
    }

    return super.onRequest(options);
  }

  @override
  Future onResponse(Response response) async {
    if (kDebugMode) {
      _printResponse(response);
    }

    return super.onResponse(response);
  }

  @override
  Future onError(DioError err) {
    if (kDebugMode) {
      _printError(err);
    }

    return super.onError(err);
  }

  void _printError(DioError err) {
    print("----------> INIT ERROR RESPONSE <----------");
    print("ERROR[${err?.response?.statusCode}] => PATH: ${err?.request?.path}");
    print("BODY => ${err?.response?.data}");
    print("-----> END ERROR RESPONSE <----------");
  }

  void _printRequest(RequestOptions options, {String method, String url}) {
    print("----------> INIT APP REQUEST <----------");
    print(
        "${method != null ? method : options?.method} => ${url != null ? url : options?.path}");
    print("HEADERS =>");
    options?.headers?.forEach((key, value) {
      print("$key => $value");
    });
    print("BODY => ${options?.data}");
    print("----------> END APP REQUEST <----------");
  }

  void _printResponse(Response response) {
    print("----------> INIT API RESPONSE <----------");
    print("${response?.request?.path}");
    print("STATUS CODE => ${response?.statusCode}");
    print("HEADERS =>");
    response.headers?.forEach((k, v) => print('$k: $v'));
    print("BODY => ${response?.data}");
    print("----------> END API RESPONSE <----------");
  }
}
