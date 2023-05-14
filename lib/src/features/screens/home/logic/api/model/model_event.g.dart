// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'model_event.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EventModel _$EventModelFromJson(Map<String, dynamic> json) => EventModel(
      title: json['title'] as String,
      hijriMonthName: json['hijriMonthName'] as String,
      holidayDate:
          HolidayDate.fromJson(json['holidayDate'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$EventModelToJson(EventModel instance) =>
    <String, dynamic>{
      'title': instance.title,
      'hijriMonthName': instance.hijriMonthName,
      'holidayDate': instance.holidayDate,
    };

HolidayDate _$HolidayDateFromJson(Map<String, dynamic> json) => HolidayDate(
      year: json['_year'] as int,
      month: json['_month'] as int,
      date: json['_date'] as int,
    );

Map<String, dynamic> _$HolidayDateToJson(HolidayDate instance) =>
    <String, dynamic>{
      '_year': instance.year,
      '_month': instance.month,
      '_date': instance.date,
    };
