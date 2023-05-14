import 'package:dio/dio.dart';

abstract class AuthDatasource {
  Future<Response> registerRequest(
    String firstName,
    String lastName,
    String userName,
    String email,
    String password,
  );
  Future<Response> logInRequest(
    String userName,
    String password,
  );
}

class AuthDatasourceImpl implements AuthDatasource {
  Dio dio = Dio();

  @override
  Future<Response> registerRequest(
    String firstName,
    String lastName,
    String userName,
    String email,
    String password,
  ) async {
    return await dio.post('http://165.22.88.71/auth/register', data: {
      'fistName': firstName,
      'lastName': lastName,
      'username': userName,
      'email': email,
      'password': password,
    });
  }

  @override
  Future<Response> logInRequest(
    String userName,
    String password,
  ) async {
    return await dio.post('http://165.22.88.71/auth/login/', data: {
      'username': userName,
      'password': password,
    });
  }
}
