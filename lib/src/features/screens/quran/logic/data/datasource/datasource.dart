import 'package:dio/dio.dart';

abstract class QuranDataSource {
  Future<Response> getQuranDataRequest();
  Future<Response> getQuranArabDataRequest();
}

class QuranDataSourceImpl implements QuranDataSource {
  Dio dio = Dio();

  @override
  Future<Response> getQuranDataRequest() async {
    return await dio.get('http://api.alquran.cloud/v1/quran/en.asad');
  }

  @override
  Future<Response> getQuranArabDataRequest() async{
    return await dio.get('http://api.alquran.cloud/v1/quran/ar.alafasy');
  }
}
