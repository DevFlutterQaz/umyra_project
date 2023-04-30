import 'package:dio/dio.dart';

class ProfileApiProvider {
  Dio dioClient = Dio();

  Future fetchUser() async {
    try {
      final response = await dioClient.get(
          'localhost:3000/pray?lat=43.234390&lng=76.862617&kmdb=true&asr=Hanafi&highLats=AngleBased&method=ISNA/');
      if (response.statusCode == 200) return response.data;
    } on DioError catch (e) {
      throw e.toString();
    }
  }
}
