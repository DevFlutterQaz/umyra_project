import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:umyra/src/features/screens/home/logic/bloc/time_event.dart';
import 'package:umyra/src/features/screens/home/logic/bloc/time_state.dart';

class TimeBloc extends Bloc<TimeEvent, TimeState> {
  // final UserRepo _userRepo = UserRepo();
  TimeBloc() : super(TimeInitialState()) {
    on<TimeGetEvent>((event, emit) async {
      try {
        emit(TimeInitialState());
        //emit(TimeParsedState());
      } catch (e) {
        emit(FailureState(e.toString()));
      }
    });
  }
}
