import 'package:movies/app/shared/constants.dart';

class Validators {

  static bool validateEmail(String value) {
    Pattern pattern = kEmailRegex;
    RegExp regex = new RegExp(pattern);
    return regex.hasMatch(value.trim());
  }

  static bool validatePassword(String value) {
    Pattern pattern = kPasswordRegex;
    RegExp regex = new RegExp(pattern);
    return regex.hasMatch(value.trim());
  }
}
