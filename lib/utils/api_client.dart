import 'package:dio/dio.dart';

import 'token_manager.dart';

class ApiClient {
  final Dio dio = Dio();

  ApiClient() {
    dio.options.baseUrl = 'http://192.168.1.80/api/v1';
    dio.interceptors.add(InterceptorsWrapper(
      onRequest: (options, handler) async {
        final String? token = await TokenManager.getAccessToken();
        if (token != null) {
          options.headers['Authorization'] = 'Bearer $token';
        }
        return handler.next(options);
      },
      onError: (error, handler) async {
        if (error.response?.statusCode == 401) {
          final newAccessToken = await refreshAccessToken();
          if (newAccessToken != null) {
            error.requestOptions.headers['Authorization'] = 'Bearer $newAccessToken';
            final retryResponse = await dio.fetch(error.requestOptions);
            return handler.resolve(retryResponse);
          }
        }
        return handler.next(error);
      },
    ));
  }

  Future<String?> refreshAccessToken() async {
    var credentials = await TokenManager.getCredentials();
    if (credentials.login == null || credentials.password == null) return null;

    try {
      final response = await dio.post('/auth/login', data: {
        'login': credentials.login,
        'password': credentials.password,
      });
      final newAccessToken = response.data['accessToken'];
      await TokenManager.saveTokens(newAccessToken);
      return newAccessToken;
    } catch (e) {
      await TokenManager.clearTokens();
      return null;
    }
  }
}
