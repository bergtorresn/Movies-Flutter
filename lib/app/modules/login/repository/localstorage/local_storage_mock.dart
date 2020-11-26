import 'package:movies/app/modules/login/repository/localstorage/local_storage_interface.dart';

class LocalStorageMock implements ILocalStorage {
  String key = "keyToTest";
  String value = "valueToTest";

  @override
  Future edit(String key, String value) async {
    this.value = value;
  }

  @override
  Future<String> get(String key) async {
    return this.value;
  }

  @override
  Future remove(String key) async {
    this.key = null;
    this.value = null;
  }

  @override
  Future save(String key, value) async {
    this.key = key;
    this.value = value;
  }
}
