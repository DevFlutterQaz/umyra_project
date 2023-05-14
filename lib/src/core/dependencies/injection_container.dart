import 'package:get_it/get_it.dart';
import 'package:umyra/src/features/screens/auth/logic/bloc/auth_bloc.dart';
import 'package:umyra/src/features/screens/auth/logic/data/datasource/datasource.dart';
import 'package:umyra/src/features/screens/auth/logic/data/repository/respository.dart';
import 'package:umyra/src/features/screens/home/logic/bloc/time_bloc.dart';
import 'package:umyra/src/features/screens/home/logic/data/datasource/datasource.dart';
import 'package:umyra/src/features/screens/home/logic/data/repository/respository.dart';
import 'package:umyra/src/features/screens/quran/logic/bloc/quran_bloc.dart';
import 'package:umyra/src/features/screens/quran/logic/data/datasource/datasource.dart';
import 'package:umyra/src/features/screens/quran/logic/data/repository/repository.dart';

final getIt = GetIt.instance;

void initGetIt() async {
  getIt.registerFactory<QuranBloc>(() => QuranBloc(getIt()));

  getIt.registerLazySingleton<QuranRespository>(() => QuranRespositoryImpl(getIt()));

  getIt.registerLazySingleton<QuranDataSource>(() => QuranDataSourceImpl());

  getIt.registerFactory<AuthBloc>(() => AuthBloc(getIt()));

  getIt.registerLazySingleton<AuthRepository>(() => AuthRepositoryImpl(getIt()));

  getIt.registerLazySingleton<AuthDatasource>(() => AuthDatasourceImpl());

  getIt.registerFactory<TimeBloc>(() => TimeBloc(getIt()));

  getIt.registerLazySingleton<HomeRepository>(() => HomeRepositoryImpl(getIt()));

  getIt.registerLazySingleton<HomeDatasource>(() => HomeDatasourceImpl());
}
