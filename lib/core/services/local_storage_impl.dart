
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

import '../../service/local_storage_service.dart';





class LocalStorageImpl implements LocalStorage {
  const LocalStorageImpl(this._storage);
  final FlutterSecureStorage _storage;

  @override
  Future<void> write(SecureStorageItem item) async {
    final encodedValue = item.value;
    await _storage.write(key: item.key, value: encodedValue);
  }

  @override
  Future<dynamic> read(String key) async {
    final encodedValue = await _storage.read(key: key);
    return encodedValue;
  } 

  @override
  Future<void> delete(String key) async {
    await _storage.delete(key: key);
  }

  @override
  Future<void> deleteAll() async {
    await _storage.deleteAll();
  }

  @override
  Future<bool> exists(String key) async {
    final result = await _storage.containsKey(key: key);
    return result;
  }

  @override
  Future<Map<String, dynamic>> readAll() async {
    final allItems = await _storage.readAll();
    return allItems;
  }

  @override
  Future<bool> containsKey(String key) async {
    final result = await _storage.containsKey(key: key);
    return result;
  }
}
