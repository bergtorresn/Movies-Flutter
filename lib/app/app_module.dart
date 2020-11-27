import 'package:movies/app/shared/custom_dio.dart';
import 'package:movies/app/shared/custom_interceptor.dart';
import 'modules/movies/movies_module.dart';
import 'app_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter/material.dart';
import 'package:movies/app/app_widget.dart';

class AppModule extends MainModule {
  @override
  List<Bind> get binds => [
        Bind((i) => AppBloc()),
        Bind((i) => CustomInterceptors()),
        Bind((i) => CustomDio()),
      ];

  @override
  List<ModularRouter> get routers => [
        ModularRouter(Modular.initialRoute, module: MoviesModule()),
      ];

  @override
  Widget get bootstrap => AppWidget();

  static Inject get to => Inject<AppModule>.of();
}
