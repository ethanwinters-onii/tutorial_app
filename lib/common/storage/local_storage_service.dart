import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:tutorial_app/common/storage/local_db_constant.dart';

class LocalStorageService {
  final FlutterSecureStorage _storage = FlutterSecureStorage();
  LocalStorageService();

  // Delete all
  Future<void> removeAll() async {
    await _storage.deleteAll();
  }

  /*
    USER TOKEN
      - get/set authToken
      - delete authToken
  */
  Future<void> saveAuthToken(String token) async {
    return _storage.write(key: LocalDBConstant.AUTH_TOKEN, value: token);
  }

  Future<String?> get authToken async {
    await _storage.read(key: LocalDBConstant.AUTH_TOKEN);
  }

  Future<void> deleteAuthToken() async {
    return _storage.delete(key: LocalDBConstant.AUTH_TOKEN);
  }

  /*
    - Encoder keychain/keystore USERNAME and PASSWORD
  */
  Future<void> save(String key, String value) async {
    await _storage.write(key: key, value: value);
  }

  Future<String?> get userName async =>
      await _storage.read(key: LocalDBConstant.USER_NAME);

  Future<String?> get password async =>
      await _storage.read(key: LocalDBConstant.PASSWORD);

  Future<void> removeUserInfo() async {
    await _storage.delete(key: LocalDBConstant.USER_NAME);
    await _storage.delete(key: LocalDBConstant.PASSWORD);
  }
}
