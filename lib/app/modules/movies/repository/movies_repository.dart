import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:movies/app/modules/movies/models/movies_model.dart';
import 'package:movies/app/modules/movies/repository/movies_repository_interface.dart';
import 'package:movies/app/shared/constants.dart';

class MoviesRepository implements IMoviesRepository {
  final Dio dio;

  MoviesRepository({@required this.dio});

  @override
  Future<MoviesModel> doRequestGetPopularMovies({int page}) async {
    var params = {'api_key': kAPIKey, 'page': page, 'language': 'en-US'};

    try {
      Response response =
          await dio.get(kPopularMoviesURL, queryParameters: params);
      return MoviesModel.fromJson(response.data);
    } catch (error, stacktrace) {
      return MoviesModel.withError(
          'Exception occoured: $error with stacktrace: $stacktrace');
    }
  }
}
