// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'model_tasbih.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TasbihModel _$TasbihModelFromJson(Map<String, dynamic> json) => TasbihModel(
      title: json['title'] as String,
      arabic: json['arabic'] as String,
      transcript: json['transcript'] as String,
      translation: json['translation'] as String,
    );

Map<String, dynamic> _$TasbihModelToJson(TasbihModel instance) =>
    <String, dynamic>{
      'title': instance.title,
      'arabic': instance.arabic,
      'transcript': instance.transcript,
      'translation': instance.translation,
    };
