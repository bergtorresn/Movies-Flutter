import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:movies/app/modules/movies/models/movies_model.dart';
import 'package:movies/app/modules/movies/movies_bloc.dart';

class MoviesPage extends StatefulWidget {
  final String title;

  const MoviesPage({Key key, this.title = "Movies"}) : super(key: key);

  @override
  _MoviesPageState createState() => _MoviesPageState();
}

class _MoviesPageState extends State<MoviesPage> {
  final MoviesBloc _bloc = Modular.get();

  @override
  void initState() {
    super.initState();
    _bloc.getPopularMovies(page: 1);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: StreamBuilder<MoviesModel>(
          stream: _bloc.behaviorSubject.stream,
          builder: (_, snapshot) {
            if (snapshot.hasData) {
              if (snapshot.data.error != null &&
                  snapshot.data.error.isNotEmpty) {
                return _buildErrorWidget(snapshot.data.error);
              }
              return _buildListOfMovies(snapshot.data);
            } else if (snapshot.hasError) {
              return _buildErrorWidget(snapshot.data.error);
            } else {
              return _buildLoadingWidget();
            }
          }),
    );
  }

  _buildListOfMovies(MoviesModel data) {
    return Container(
      child: Center(child: Text("${data.totalPages}")),
    );
  }

  _buildLoadingWidget() {
    return Container(
      child: Center(child: Text("Loading")),
    );
  }

  _buildErrorWidget(String error) {
    print(error);
    return Container(
      child: Center(child: Text(error)),
    );
  }
}
