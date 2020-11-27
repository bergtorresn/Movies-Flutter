import 'dart:math';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:movies/app/modules/login/repository/network/auth_repository_interface.dart';

class AuthRepository implements IAuthRepositoryInterface {

  String email;
  String password;

  @override
  Future<String> getToken() {
    // TODO: implement getToken
    throw UnimplementedError();
  }

  @override
  Future getUser() {
    // TODO: implement getUser
    throw UnimplementedError();
  }

  @override
  Future doLoginWithFacebook() {
    // TODO: implement doLoginWithFacebook
    throw UnimplementedError();
  }

  @override
  Future doLoginWithGoogle() {
    // TODO: implement doLoginWithGoogle
    throw UnimplementedError();
  }

  @override
  Future doLoginWithEmailAndPassword() async {
    try {
      UserCredential userCredential = await FirebaseAuth.instance.signInWithEmailAndPassword(
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
