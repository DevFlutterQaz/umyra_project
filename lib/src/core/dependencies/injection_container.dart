import 'package:get_it/get_it.dart';
import 'package:umyra/src/features/screens/quran/logic/bloc/quran_bloc.dart';
import 'package:umyra/src/features/screens/quran/logic/data/datasource/datasource.dart';
import 'package:umyra/src/features/screens/quran/logic/data/repository/repository.dart';

final getIt = GetIt.instance;

void initGetIt() async {
  getIt.registerFactory<QuranBloc>(() => QuranBloc(getIt()));

  getIt.registerLazySingleton<QuranRespository>(() => QuranRespositoryImpl(getIt()));

  getIt.registerLazySingleton<QuranDataSource>(() => QuranDataSourceImpl());
}
