class MovieModel {
  final int id;
  final double popularity;
  final String title;
  final String posterPath;
  final String backdropPath;
  final String overview;
  final double voteAverage;

  MovieModel(this.id, this.popularity, this.title, this.posterPath,
      this.backdropPath, this.overview, this.voteAverage);

  MovieModel.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        popularity = json['popularity'],
        title = json['title'],
        posterPath = json['poster_path'],
        backdropPath = json['backdrop_path'],
        overview = json['overview'],
        voteAverage = json['vote_average'].toDouble();
}
