import 'package:json_annotation/json_annotation.dart';
part 'model_event.g.dart';

@JsonSerializable()
class EventModel {
  final String title;
  final String hijriMonthName;
  final HolidayDate holidayDate;

  EventModel({
    required this.title,
    required this.hijriMonthName,
    required this.holidayDate,
  });

  factory EventModel.fromJson(Map<String, dynamic> json) =>
      _$EventModelFromJson(json);

  Map<String, dynamic> toJson() => _$EventModelToJson(this);
}

@JsonSerializable()
class HolidayDate {
  @JsonKey(name: '_year')
  final int year;
  @JsonKey(name: '_month')
  final int month;
  @JsonKey(name: '_date')
  final int date;

  HolidayDate({
    required this.year,
    required this.month,
    required this.date,
  });

  factory HolidayDate.fromJson(Map<String, dynamic> json) =>
      _$HolidayDateFromJson(json);

  Map<String, dynamic> toJson() => _$HolidayDateToJson(this);
}
