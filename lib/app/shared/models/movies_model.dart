import 'movie_model.dart';

class MoviesModel {
  final int page;
  final int totalResults;
  final int totalPages;
  final List<MovieModel> results;
  final String error;

  MoviesModel(
      {this.page,
      this.totalResults,
      this.totalPages,
      this.results,
      this.error});

  MoviesModel.fromJson(Map<String, dynamic> json)
      : page = json['page'],
        totalResults = json['total_results'],
        totalPages = json['total_pages'],
        results = (json['results'] as List)
            .map((e) => MovieModel.fromJson(e))
            .toList(),
        error = "";

  MoviesModel.withError(String errorValue)
      : page = null,
        totalResults = null,
        totalPages = null,
        results = null,
        error = errorValue;
}
