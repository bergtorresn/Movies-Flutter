import 'package:dio/native_imp.dart';

import 'custom_interceptor.dart';

class CustomDio extends DioForNative {
  CustomDio() {
    options.connectTimeout = 60000;
    interceptors.add(CustomInterceptors());
  }
}
