import 'package:json_annotation/json_annotation.dart';
part 'time_month_model.g.dart';

@JsonSerializable()
class ModelTimeMonth {
  final String fajr;
  final String sunrise;
  final String dhuhr;
  final String asr;
  final String maghrib;
  final String isha;
  final String date;

  ModelTimeMonth({
    required this.fajr,
    required this.sunrise,
    required this.dhuhr,
    required this.asr,
    required this.maghrib,
    required this.isha,
    required this.date,
  });

  factory ModelTimeMonth.fromJson(Map<String, dynamic> json) =>
      _$ModelTimeMonthFromJson(json);
  Map<String, dynamic> toJson() => _$ModelTimeMonthToJson(this);
}
