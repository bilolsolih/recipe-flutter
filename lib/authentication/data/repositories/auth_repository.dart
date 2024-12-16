import 'package:Recipes/authentication/data/models/user.dart';
import 'package:Recipes/utils/token_manager.dart';
import 'package:dio/dio.dart';

class AuthRepository {
  final Dio dio;

  AuthRepository(this.dio);

  Future<void> login(String login, String password) async {
    final response = await dio.post('/auth/login', data: {
      'login': login,
      'password': password,
    });
    final accessToken = response.data['accessToken'];
    await TokenManager.saveCredentials(login, password);
    await TokenManager.saveTokens(accessToken);
  }

  Future<void> register(UserCreateModel user) async {
    await dio.post('/auth/register', data: {
      'username': user.username,
      'fullName': user.fullName,
      'email': user.email,
      'phoneNumber': user.phoneNumber,
      'birthDate': user.birthDate,
      'password': user.password,
    });
  }
}