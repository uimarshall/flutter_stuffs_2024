import 'package:get_storage/get_storage.dart';

class TLocalStorageManager {
  static final TLocalStorageManager _instance =
      TLocalStorageManager._internal();

  factory TLocalStorageManager() => _instance;

  TLocalStorageManager._internal();

  final _storage = GetStorage();

  // Generic method to save data

  Future<void> saveData<T>(String key, T value) async {
    await _storage.write(key, value);
  }

  // Generic method to read data

  T? readData<T>(
    String key,
  ) {
    return _storage.read<T>(key);
  }

  // Generic method to remove data

  Future<void> removeData(String key) async {
    await _storage.remove(key);
  }

  // Generic method to clear all data

  Future<void> clearAllData() async {
    await _storage.erase();
  }

// Handle get storage method
}
