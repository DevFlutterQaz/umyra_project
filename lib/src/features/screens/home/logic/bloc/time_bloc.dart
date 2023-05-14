import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:umyra/src/features/screens/home/logic/bloc/time_event.dart';
import 'package:umyra/src/features/screens/home/logic/bloc/time_state.dart';
import 'package:umyra/src/features/screens/home/logic/data/repository/respository.dart';

class TimeBloc extends Bloc<TimeEvent, TimeState> {
  final HomeRepository homeRepository;
  TimeBloc(this.homeRepository) : super(TimeInitialState()) {
    on<HomeData>((event, emit) async {
      emit(HomeLoading());
      try {
        emit(HomeSuccess(namazTimeData: await homeRepository.getTimeRequest()));
      } on DioError catch (e) {
        emit(HomeFaile(message: e.message ?? "Error"));
      }
    });

    on<TasbihData>((event, emit) async {
      emit(TasbihLoading());
      try {
        emit(
            TasbihSuccess(tasbihData: await homeRepository.getTasbihRequest()));
      } on DioError catch (e) {
        emit(TasbihFailed(message: e.message ?? "Error"));
      }
    });

    on<NavigationData>(
      (event, emit) async {
        emit(NavigationLoading());
        try {
          emit(NavigationSuccess(
              navigationData: await homeRepository.getNavigationRequest()));
        } on DioError catch (e) {
          emit(NavigationFailed(message: e.message ?? "Error"));
        }
      },
    );

    on<EventData>(
      (event, emit) async {
        emit(EventLoading());
        try {
          emit(
              EventSuccess(eventData: await homeRepository.getEventsRequest()));
        } on DioError catch (e) {
          emit(EventFailed(message: e.message ?? 'Error'));
        }
      },
    );
  }
}
