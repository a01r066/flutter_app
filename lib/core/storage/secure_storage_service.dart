import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class SecureStorageService {
  final FlutterSecureStorage _storage;

  // Android Options
  final AndroidOptions _androidOptions = const AndroidOptions(
    encryptedSharedPreferences: true,
  );

  // iOS Options
  final IOSOptions _iosOptions = const IOSOptions(
    accountName: 'OpenWeatherApp',
    accessibility: KeychainAccessibility.first_unlock,
  );

  SecureStorageService()
      : _storage = const FlutterSecureStorage();

  // Write a value to secure storage
  Future<void> write({required String key, required String value}) async {
    await _storage.write(
      key: key,
      value: value,
      aOptions: _androidOptions,
      iOptions: _iosOptions,
    );
  }

  // Read a value from secure storage
  Future<String?> read({required String key}) async {
    return await _storage.read(
      key: key,
      aOptions: _androidOptions,
      iOptions: _iosOptions,
    );
  }

  // Delete a value from secure storage
  Future<void> delete({required String key}) async {
    await _storage.delete(
      key: key,
      aOptions: _androidOptions,
      iOptions: _iosOptions,
    );
  }

  // Check if a key exists in secure storage
  Future<bool> containsKey({required String key}) async {
    return await _storage.containsKey(
      key: key,
      aOptions: _androidOptions,
      iOptions: _iosOptions,
    );
  }

  // Delete all values from secure storage
  Future<void> deleteAll() async {
    await _storage.deleteAll(
      aOptions: _androidOptions,
      iOptions: _iosOptions,
    );
  }
}