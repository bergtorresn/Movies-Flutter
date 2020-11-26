import 'package:flutter_modular/flutter_modular_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:movies/app/app_module.dart';
import 'package:movies/app/modules/login/login_bloc.dart';
import 'package:movies/app/modules/login/login_module.dart';
import 'package:movies/app/modules/login/repository/localstorage/local_storage_interface.dart';
import 'package:movies/app/modules/login/repository/localstorage/local_storage_mock.dart';

void main() {
  initModule(AppModule(), changeBinds: [
    Bind<ILocalStorage>((i) => LocalStorageMock()),
  ]);
  initModule(LoginModule());
  LoginBloc bloc;

  setUp(() {
    bloc = LoginModule.to.get<LoginBloc>();
  });

  test("click save", () async {
    bloc.save();

    var result = await Modular.get<ILocalStorage>().get("keyToTest");

    expect(result, "valueToTest");
  });

  test("click remove", () async {
    bloc.remove();

    var result = await Modular.get<ILocalStorage>().get("keyToTest");

    expect(result, null);
  });
}
