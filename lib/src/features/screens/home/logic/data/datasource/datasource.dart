import 'package:dio/dio.dart';

abstract class HomeDatasource {
  Future<Response> getTimeRequest();
  Future<Response> getTasbihRequest();
  Future<Response> getNavigationRequest();
  Future<Response> getEventsRequest();
  Future<Response> getUmraRequest();
  Future<Response> getUmraDetailRequest(String id);
  Future<Response> getTimeByMonth();
}

class HomeDatasourceImpl implements HomeDatasource {
  Dio dio = Dio();

  @override
  Future<Response> getTimeRequest() async {
    return await dio.get(
        'http://165.22.88.71/pray?lat=43.234390&lng=76.862617&kmdb=true&asr=Hanafi&highLats=AngleBased&method=ISNA');
  }

  @override
  Future<Response> getTasbihRequest() async {
    return await dio.get('http://165.22.88.71/tasbihs/');
  }

  @override
  Future<Response> getNavigationRequest() async {
    return await dio.get('http://165.22.88.71/navigation/alHaramDoors');
  }

  @override
  Future<Response> getEventsRequest() async {
    return await dio.get('http://165.22.88.71/pray/get-holidays');
  }

  @override
  Future<Response> getUmraRequest() async {
    return await dio.get('http://165.22.88.71/guides/');
  }

  @override
  Future<Response> getUmraDetailRequest(String id) async {
    return await dio.get('http://165.22.88.71/guides/$id');
  }

  @override
  Future<Response> getTimeByMonth() async {
    return await dio.get(
        'http://165.22.88.71/pray/12?kmdb=true&asr=Hanafi&highLats=AngleBased&lat=43.234390&lng=76.862617&method=ISN');
  }
}
