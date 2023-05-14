part of 'auth_bloc.dart';

class AuthEvent {}

class LogInUser extends AuthEvent {
  final String userName;
  final String password;

  LogInUser({required this.userName, required this.password});
}

class RegisterUser extends AuthEvent {
  final String firstName;
  final String lastName;
  final String userName;
  final String email;
  final String password;

  RegisterUser({
    required this.firstName,
    required this.lastName,
    required this.userName,
    required this.email,
    required this.password,
  });
}
