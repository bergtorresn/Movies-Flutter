import 'package:movies/app/modules/movies/models/movies_model.dart';

abstract class IMoviesRepository {

  Future<MoviesModel> doRequestGetPopularMovies({int page});

}