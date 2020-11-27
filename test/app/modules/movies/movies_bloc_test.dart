import 'package:flutter_modular/flutter_modular_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:movies/app/app_module.dart';
import 'package:movies/app/modules/movies/movies_bloc.dart';
import 'package:movies/app/app_module.dart';

void main() {
  Modular.init(AppModule());
  Modular.bindModule(AppModule());
  MoviesBloc bloc;

  // setUp(() {
  //     bloc = AppModule.to.get<MoviesBloc>();
  // });

  // group('MoviesBloc Test', () {
  //   test("First Test", () {
  //     expect(bloc, isInstanceOf<MoviesBloc>());
  //   });
  // });
}
