// ignore_for_file: depend_on_referenced_packages

import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:umyra/src/features/screens/quran/logic/data/model/model_arab_quran.dart';
import 'package:umyra/src/features/screens/quran/logic/data/model/model_quran.dart';
import 'package:umyra/src/features/screens/quran/logic/data/repository/repository.dart';

part 'quran_event.dart';
part 'quran_state.dart';

class QuranBloc extends Bloc<QuranEvent, QuranState> {
  final QuranRespository quranRespository;
  QuranBloc(this.quranRespository) : super(QuranInitial()) {
    on<GetQuranData>(_getQuranData);
  }

  void _getQuranData(event, emit) async {
    emit(QuranLoading());
    try {
      QuranArabModel quranArabData = await quranRespository.getQuranArabDataRequest();
      QuranModel quranData = await quranRespository.getQuranDataRequest();
      emit(QuranSuccess(
        quranData: quranData,
        quranArabData: quranArabData,
      ));
    } on DioError catch (e) {
      emit(QuranFailed(message: e.message ?? ''));
    }
  }
}
