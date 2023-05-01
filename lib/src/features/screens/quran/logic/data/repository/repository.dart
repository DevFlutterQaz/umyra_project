import 'package:dio/dio.dart';
import 'package:umyra/src/features/screens/quran/logic/data/datasource/datasource.dart';
import 'package:umyra/src/features/screens/quran/logic/data/model/model_arab_quran.dart';
import 'package:umyra/src/features/screens/quran/logic/data/model/model_quran.dart';

abstract class QuranRespository {
  Future<QuranModel> getQuranDataRequest();
  Future<QuranArabModel> getQuranArabDataRequest();
}

class QuranRespositoryImpl implements QuranRespository {
  final QuranDataSource quranDataSource;

  QuranRespositoryImpl(this.quranDataSource);

  @override
  Future<QuranModel> getQuranDataRequest() async {
    Response response = await quranDataSource.getQuranDataRequest();
    return QuranModel.fromJson(response.data);
  }

  @override
  Future<QuranArabModel> getQuranArabDataRequest() async {
    Response response = await quranDataSource.getQuranArabDataRequest();
    return QuranArabModel.fromJson(response.data);
  }
}
