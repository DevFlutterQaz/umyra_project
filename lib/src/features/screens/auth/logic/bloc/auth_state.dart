part of 'auth_bloc.dart';

class AuthState {}

class AuthInitial extends AuthState {}

// Log in
class LogInLoading extends AuthState {}

class LogInSuccess extends AuthState {}

class LogInFailed extends AuthState {
  final String message;

  LogInFailed({required this.message});
}

// Register
class RegisterLoading extends AuthState {}

class RegisterSuccess extends AuthState {}

class RegisterFailed extends AuthState {
  final String message;

  RegisterFailed({required this.message});
}
