import 'package:umyra/src/features/screens/home/logic/api/model/namaz_time_model.dart';

abstract class TimeState {
 
}

class TimeInitialState extends TimeState {}

class TimeParsedState extends TimeState {
  final NamazTimeModel namazTimeModel;
  TimeParsedState(this.namazTimeModel);
 
}

class FailureState extends TimeState {
  final String error;
  FailureState(this.error);
}
