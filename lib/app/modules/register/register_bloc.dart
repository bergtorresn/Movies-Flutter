import 'package:flutter_modular/flutter_modular.dart';
import 'package:movies/app/modules/register/repository/network/register_repository_interface.dart';
import 'package:movies/app/shared/validators.dart';
import 'package:rxdart/rxdart.dart';

class RegisterBloc extends Disposable {

 // final IRegisterRepository _registerRepository = Modular.get();

  final email = BehaviorSubject.seeded('');
  final password = BehaviorSubject.seeded('');
  final isLoading = BehaviorSubject.seeded(false);


  Future registerUser() async {
    // await _registerRepository.doRegisterWithEmailAndPassword(
    //     email.stream.value.trim(),
    //     password.stream.value.trim());
  }

  bool validateEmail(){
    var emailToValid = email.stream.value.trim();
    return Validators.validateEmail(emailToValid);
  }

  bool validatePassword() {
    var passwordToValid = password.stream.value.trim();
    return Validators.validatePassword(passwordToValid);
  }

  @override
  void dispose() {
    email.close();
    password.close();
    isLoading.close();
  }
}
