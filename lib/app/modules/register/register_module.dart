import 'package:flutter_modular/flutter_modular.dart';
import 'package:movies/app/modules/register/register_bloc.dart';
import 'package:movies/app/modules/register/register_page.dart';

class RegisterModule extends ChildModule {
  @override
  List<Bind> get binds => [Bind((i) => RegisterBloc())];

  @override
  List<ModularRouter> get routers => [
        ModularRouter(Modular.initialRoute, child: (_, args) => RegisterPage()),
      ];

  static Inject get to => Inject<RegisterModule>.of();
}
