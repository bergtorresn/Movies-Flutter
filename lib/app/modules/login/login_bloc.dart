import 'package:flutter_modular/flutter_modular.dart';

import 'localstorage/local_storage_interface.dart';

class LoginBloc extends Disposable {

  final ILocalStorage _storage = Modular.get();

  String key = "keyToTest";
  String value = "valueToTest";

  //dispose will be called automatically by closing its streams
  @override
  void dispose() {}

  void save() {
    _storage.save(key, value);
  }

  void remove() {
    _storage.remove(key);
  }

  Future<String> getValue() async {
    return await _storage.get(key);
  }
}
