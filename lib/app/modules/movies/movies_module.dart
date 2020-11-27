import 'package:flutter_modular/flutter_modular.dart';
import 'package:movies/app/modules/movies/movies_bloc.dart';
import 'package:movies/app/modules/movies/movies_page.dart';
import 'package:movies/app/modules/movies/repository/movies_repository.dart';
import 'package:movies/app/shared/custom_dio.dart';

class MoviesModule extends ChildModule {
  @override
  List<Bind> get binds => [
    Bind((i) => MoviesBloc(repository: i.get<MoviesRepository>())),
    Bind((i) => MoviesRepository(dio: i.get<CustomDio>())),
  ];

  @override
  List<ModularRouter> get routers => [
        ModularRouter(Modular.initialRoute, child: (_, args) => MoviesPage()),
      ];

  static Inject get to => Inject<MoviesModule>.of();
}
