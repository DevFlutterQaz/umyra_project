part of 'quran_bloc.dart';

class QuranState {}

class QuranInitial extends QuranState {}

class QuranLoading extends QuranState {}

class QuranSuccess extends QuranState {
  final QuranModel quranData;
  final QuranArabModel quranArabData;

  QuranSuccess({
    required this.quranData,
    required this.quranArabData,
  });
}

class QuranFailed extends QuranState {
  final String message;

  QuranFailed({required this.message});
}
