import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class TokenManager {
  static const storage = FlutterSecureStorage();
  static const String accessTokenKey = 'ACCESS_TOKEN', loginKey = 'LOGIN', passwordKey = 'PASSWORD';

  static Future<void> saveTokens(String accessToken) async {
    await storage.write(key: accessTokenKey, value: accessToken);
  }

  static Future<void> saveCredentials(String login, String password) async {
    await storage.write(key: loginKey, value: login);
    await storage.write(key: passwordKey, value: password);
  }

  static Future<({String? login, String? password})> getCredentials() async {
    var login = await storage.read(key: loginKey);
    var password = await storage.read(key: passwordKey);
    return (login: login, password: password);
  }

  static Future<void> clearCredentials() async {
    await storage.delete(key: loginKey);
    await storage.delete(key: passwordKey);
  }

  static Future<String?> getAccessToken() => storage.read(key: accessTokenKey);

  static Future<void> clearTokens() async {
    await storage.delete(key: accessTokenKey);
  }
}
