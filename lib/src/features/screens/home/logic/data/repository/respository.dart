import 'package:dio/dio.dart';
import 'package:umyra/src/features/screens/home/logic/api/model/model_event.dart';
import 'package:umyra/src/features/screens/home/logic/api/model/model_navigation.dart';
import 'package:umyra/src/features/screens/home/logic/api/model/model_tasbih.dart';
import 'package:umyra/src/features/screens/home/logic/api/model/namaz_time_model.dart';
import 'package:umyra/src/features/screens/home/logic/data/datasource/datasource.dart';

abstract class HomeRepository {
  Future<NamazModel> getTimeRequest();
  Future<List<TasbihModel>> getTasbihRequest();
  Future<List<ModelNavigation>> getNavigationRequest();
  Future<List<EventModel>> getEventsRequest();
}

class HomeRepositoryImpl implements HomeRepository {
  final HomeDatasource homeDatasource;

  HomeRepositoryImpl(this.homeDatasource);

  @override
  Future<NamazModel> getTimeRequest() async {
    Response response = await homeDatasource.getTimeRequest();
    return NamazModel.fromJson(response.data);
  }

  @override
  Future<List<TasbihModel>> getTasbihRequest() async {
    Response response = await homeDatasource.getTasbihRequest();
    return (response.data as List).map((e) => TasbihModel.fromJson(e)).toList();
  }

  @override
  Future<List<ModelNavigation>> getNavigationRequest() async {
    Response response = await homeDatasource.getNavigationRequest();
    return (response.data as List)
        .map((e) => ModelNavigation.fromJson(e))
        .toList();
  }

  @override
  Future<List<EventModel>> getEventsRequest() async {
    Response response = await homeDatasource.getEventsRequest();
    return (response.data as List).map((e) => EventModel.fromJson(e)).toList();
  }
}
