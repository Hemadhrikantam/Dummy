abstract class LocalStorage{
   Future<void> write(SecureStorageItem item);

  Future<dynamic> read(String key);

  Future<void> delete(String key);

  Future<void> deleteAll();

  Future<bool> exists(String key);

  Future<Map<String, dynamic>> readAll();

  Future<bool> containsKey(String key);
}

class SecureStorageItem {

  SecureStorageItem({required this.key, required this.value});
  final String key;
  final String value;
}
