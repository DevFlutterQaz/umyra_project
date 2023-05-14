import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:umyra/src/features/screens/auth/logic/data/repository/respository.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final AuthRepository authRepository;
  AuthBloc(this.authRepository) : super(AuthInitial()) {
    on<LogInUser>((event, emit) async {
      emit(LogInLoading());
      try {
        await authRepository.logInRequest(event.userName, event.password);
        emit(LogInSuccess());
      } on DioError catch (e) {
        emit(LogInFailed(message: e.message ?? "Error"));
      }
    });

    on<RegisterUser>((event, emit) async {
      emit(RegisterLoading());
      try {
        await authRepository.registerRequest(event.firstName, event.lastName,
            event.userName, event.email, event.password);
        emit(RegisterSuccess());
      } on DioError catch (e) {
        emit(RegisterFailed(message: e.message ?? "Error"));
      }
    });
  }
}
