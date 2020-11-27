import 'dart:async';

import 'package:shared_preferences/shared_preferences.dart';

import 'local_storage_interface.dart';

class LocalStorageSharedPreferences implements ILocalStorage {
  Completer<SharedPreferences> _instance = Completer<SharedPreferences>();

  _init() async {
    _instance.complete(await SharedPreferences.getInstance());
  }

  LocalStorageSharedPreferences() {
    _init();
  }

  @override
  Future edit(String key, String value) async {
    var sharedPreferences = await _instance.future;
    return sharedPreferences.setString(key, value);
  }

  @override
  Future<String> get(String key) async {
    var sharedPreferences = await _instance.future;
    return sharedPreferences.get(key);
  }

  @override
  Future remove(String key) async {
    var sharedPreferences = await _instance.future;
    sharedPreferences.remove(key);
  }

  @override
  Future save(String key, value) async {
    var sharedPreferences = await _instance.future;
    return sharedPreferences.setString(key, value);
  }
}
