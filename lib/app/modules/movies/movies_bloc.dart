import 'package:flutter_modular/flutter_modular.dart';
import 'package:movies/app/modules/movies/repository/movies_repository.dart';
import 'package:movies/app/shared/models/movies_model.dart';
import 'package:rxdart/rxdart.dart';

class MoviesBloc extends Disposable {

  final MoviesRepository repository;

  MoviesBloc({this.repository});

  final BehaviorSubject<MoviesModel> _behaviorSubject =
      BehaviorSubject<MoviesModel>();

  getPopularMovies({int page}) async {
    var response = await repository.doRequestGetPopularMovies(page: page);
    _behaviorSubject.sink.add(response);
  }

  @override
  void dispose() {
    _behaviorSubject.close();
  }

  BehaviorSubject<MoviesModel> get behaviorSubject => _behaviorSubject;
}
