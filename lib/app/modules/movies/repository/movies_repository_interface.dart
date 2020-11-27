
import 'package:movies/app/shared/models/movies_model.dart';

abstract class IMoviesRepository {

  Future<MoviesModel> doRequestGetPopularMovies({int page});

}