import 'package:umyra/src/features/screens/home/logic/api/model/model_event.dart';
import 'package:umyra/src/features/screens/home/logic/api/model/model_navigation.dart';
import 'package:umyra/src/features/screens/home/logic/api/model/model_tasbih.dart';
import 'package:umyra/src/features/screens/home/logic/api/model/namaz_time_model.dart';
import 'package:umyra/src/features/screens/home/logic/data/model/guids.dart';
import 'package:umyra/src/features/screens/home/logic/data/model/guids_detail.dart';

class TimeState {}

class TimeInitialState extends TimeState {}

// Home Page
class HomeLoading extends TimeState {}

class HomeSuccess extends TimeState {
  final NamazModel namazTimeData;

  HomeSuccess({required this.namazTimeData});
}

class HomeFaile extends TimeState {
  final String message;

  HomeFaile({required this.message});
}

// Tasbih
class TasbihLoading extends TimeState {}

class TasbihSuccess extends TimeState {
  final List<TasbihModel> tasbihData;

  TasbihSuccess({required this.tasbihData});
}

class TasbihFailed extends TimeState {
  final String message;

  TasbihFailed({required this.message});
}

// Navigation Place
class NavigationLoading extends TimeState {}

class NavigationSuccess extends TimeState {
  final List<ModelNavigation> navigationData;

  NavigationSuccess({required this.navigationData});
}

class NavigationFailed extends TimeState {
  final String message;

  NavigationFailed({required this.message});
}

// Event data
class EventLoading extends TimeState {}

class EventSuccess extends TimeState {
  final List<EventModel> eventData;

  EventSuccess({required this.eventData});
}

class EventFailed extends TimeState {
  final String message;

  EventFailed({required this.message});
}

// [Guids]
class GuidsLoading extends TimeState {}

class GuidsSuccess extends TimeState {
  final List<ModelUmraGuids> data;

  GuidsSuccess({required this.data});
}

class GuidsFailed extends TimeState {
  final String message;

  GuidsFailed({required this.message});
}

// [Guids Detail]
class GuidsDetailLoading extends TimeState {}

class GuidsDetailSuccess extends TimeState {
  final List<GuidsDetailModel> data;

  GuidsDetailSuccess({required this.data});
}

class GuidsDetailFailed extends TimeState {
  final String message;

  GuidsDetailFailed({required this.message});
}
