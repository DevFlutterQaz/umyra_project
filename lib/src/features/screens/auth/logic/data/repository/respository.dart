import 'package:umyra/src/features/screens/auth/logic/data/datasource/datasource.dart';

abstract class AuthRepository {
  Future<void> registerRequest(
    String firstName,
    String lastName,
    String userName,
    String email,
    String password,
  );
  Future<void> logInRequest(
    String userName,
    String password,
  );
}

class AuthRepositoryImpl implements AuthRepository {
  final AuthDatasource authDatasource;

  AuthRepositoryImpl(this.authDatasource);

  @override
  Future<void> registerRequest(
    String firstName,
    String lastName,
    String userName,
    String email,
    String password,
  ) async {
    await authDatasource.registerRequest(
        firstName, lastName, userName, email, password);
  }

  @override
  Future<void> logInRequest(
    String userName,
    String password,
  ) async {
    await authDatasource.logInRequest(userName, password);
  }
}
