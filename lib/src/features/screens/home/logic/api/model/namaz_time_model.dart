import 'package:json_annotation/json_annotation.dart';

part 'namaz_time_model.g.dart';

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
