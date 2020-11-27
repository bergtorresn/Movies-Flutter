import 'package:flutter_modular/flutter_modular.dart';
import 'package:movies/app/modules/login/localstorage/local_storage_shared_preferences.dart';
import 'package:movies/app/modules/login/login_bloc.dart';
import 'package:movies/app/modules/login/login_page.dart';

import 'localstorage/local_storage_interface.dart';

class LoginModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => LoginBloc()),
        Bind<ILocalStorage>((i) => LocalStorageSharedPreferences())
      ];

  @override
  List<ModularRouter> get routers => [
        ModularRouter(Modular.initialRoute, child: (_, args) => LoginPage()),
      ];

  static Inject get to => Inject<LoginModule>.of();
}
