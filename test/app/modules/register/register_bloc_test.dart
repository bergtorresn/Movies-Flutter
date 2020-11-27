import 'package:flutter_modular/flutter_modular_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:movies/app/app_module.dart';
import 'package:movies/app/modules/register/register_bloc.dart';
import 'package:movies/app/modules/register/register_module.dart';

void main() {
  initModule(AppModule());
  initModule(RegisterModule());
  RegisterBloc bloc;

  setUp(() {
    bloc = RegisterModule.to.get<RegisterBloc>();
  });

  test("email and password accepted", () async {
    bloc.email.value = "berg@test.com.br";
    bloc.password.value = "Catdev@123";

    expect(bloc.validateEmail(), true);
    expect(bloc.validatePassword(), true);
  });

  test("email and password not accepted", () async {
    bloc.email.value = "bergtest.com.br";
    bloc.password.value = "123";

    expect(bloc.validateEmail(), true);
    expect(bloc.validatePassword(), true);
  });

}
