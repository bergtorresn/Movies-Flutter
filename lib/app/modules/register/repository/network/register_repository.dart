import 'package:firebase_auth/firebase_auth.dart';
import 'package:movies/app/modules/register/repository/network/register_repository_interface.dart';

class RegisterRepository implements IRegisterRepository {

  @override
  Future doRegisterWithEmailAndPassword(String email, String password) async {
    try {
      UserCredential userCredential = await FirebaseAuth.instance.createUserWithEmailAndPassword(
          email: email,
          password: password
      );

    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        print('No user found for that email.');
      } else if (e.code == 'wrong-password') {
        print('Wrong password provided for that user.');
      }
    }
  }
}