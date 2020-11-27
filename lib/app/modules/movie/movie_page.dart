import 'package:flutter/material.dart';
import 'package:movies/app/modules/movies/models/movie_model.dart';

class MoviePage extends StatefulWidget {
  final MovieModel movie;

  const MoviePage({Key key, @required this.movie}) : super(key: key);

  @override
  _MoviePageState createState() => _MoviePageState();
}

class _MoviePageState extends State<MoviePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.movie.title),
      ),
      body: Container(),
    );
  }
}
