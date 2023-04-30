// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'namaz_time_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NamazTimeModel _$NamazTimeModelFromJson(Map<String, dynamic> json) =>
    NamazTimeModel(
      json['fajr'] as String,
      json['sunrise'] as String,
      json['dhuhr'] as String,
      json['asr'] as String,
      json['maghrib'] as String,
      json['isha'] as String,
      json['date'] as String,
    );

Map<String, dynamic> _$NamazTimeModelToJson(NamazTimeModel instance) =>
    <String, dynamic>{
      'fajr': instance.fajr,
      'sunrise': instance.sunrise,
      'dhuhr': instance.dhuhr,
      'asr': instance.asr,
      'maghrib': instance.maghrib,
      'isha': instance.isha,
      'date': instance.date,
    };
