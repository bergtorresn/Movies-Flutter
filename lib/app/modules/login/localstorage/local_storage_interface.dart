abstract class ILocalStorage {

  Future save(String key, value);
  Future<String> get(String key);
  Future edit(String key, String value);
  Future remove(String key);

}