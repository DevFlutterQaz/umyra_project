// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'time_month_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ModelTimeMonth _$ModelTimeMonthFromJson(Map<String, dynamic> json) =>
    ModelTimeMonth(
      fajr: json['fajr'] as String,
      sunrise: json['sunrise'] as String,
      dhuhr: json['dhuhr'] as String,
      asr: json['asr'] as String,
      maghrib: json['maghrib'] as String,
      isha: json['isha'] as String,
      date: json['date'] as String,
    );

Map<String, dynamic> _$ModelTimeMonthToJson(ModelTimeMonth instance) =>
    <String, dynamic>{
      'fajr': instance.fajr,
      'sunrise': instance.sunrise,
      'dhuhr': instance.dhuhr,
      'asr': instance.asr,
      'maghrib': instance.maghrib,
      'isha': instance.isha,
      'date': instance.date,
    };
