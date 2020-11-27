import 'package:flutter_modular/flutter_modular.dart';
import 'package:movies/app/modules/movie/movie_bloc.dart';

import 'movie_page.dart';

class MovieModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => MovieBloc()),
      ];

  @override
  List<ModularRouter> get routers => [
        ModularRouter(Modular.initialRoute,
            child: (_, args) => MoviePage(movie: args.data)),
      ];

  static Inject get to => Inject<MovieModule>.of();
}
