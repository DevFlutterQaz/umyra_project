import 'package:json_annotation/json_annotation.dart';

part 'namaz_time_model.g.dart';

@JsonSerializable()
class NamazModel {
  final NamazTimeModel time;

  NamazModel(this.time);

  factory NamazModel.fromJson(Map<String, dynamic> json) =>
      _$NamazModelFromJson(json);

  Map<String, dynamic> toJson() => _$NamazModelToJson(this);
}

@JsonSerializable()
class NamazTimeModel {
  final String fajr;
  final String sunrise;
  final String dhuhr;
  final String asr;
  final String maghrib;
  final String isha;
  final String date;

  NamazTimeModel(this.fajr, this.sunrise, this.dhuhr, this.asr, this.maghrib,
      this.isha, this.date);

  factory NamazTimeModel.fromJson(Map<String, dynamic> json) =>
      _$NamazTimeModelFromJson(json);

  Map<String, dynamic> toJson() => _$NamazTimeModelToJson(this);
}
