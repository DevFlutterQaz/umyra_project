// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'model_arab_quran.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

QuranArabModel _$QuranArabModelFromJson(Map<String, dynamic> json) =>
    QuranArabModel(
      data: QuranArabData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$QuranArabModelToJson(QuranArabModel instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

QuranArabData _$QuranArabDataFromJson(Map<String, dynamic> json) =>
    QuranArabData(
      surahs: (json['surahs'] as List<dynamic>)
          .map((e) => SurahArab.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$QuranArabDataToJson(QuranArabData instance) =>
    <String, dynamic>{
      'surahs': instance.surahs,
    };

SurahArab _$SurahArabFromJson(Map<String, dynamic> json) => SurahArab(
      number: json['number'] as int,
      name: json['name'] as String,
      englishName: json['englishName'] as String,
      englishNameTranslation: json['englishNameTranslation'] as String,
      revelationType: json['revelationType'] as String,
      ayahs: (json['ayahs'] as List<dynamic>)
          .map((e) => AyahArab.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$SurahArabToJson(SurahArab instance) => <String, dynamic>{
      'number': instance.number,
      'name': instance.name,
      'englishName': instance.englishName,
      'englishNameTranslation': instance.englishNameTranslation,
      'revelationType': instance.revelationType,
      'ayahs': instance.ayahs,
    };

AyahArab _$AyahArabFromJson(Map<String, dynamic> json) => AyahArab(
      number: json['number'] as int,
      audio: json['audio'] as String,
      audioSecondary: (json['audioSecondary'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      text: json['text'] as String,
      numberInSurah: json['numberInSurah'] as int,
      juz: json['juz'] as int,
      manzil: json['manzil'] as int,
      page: json['page'] as int,
      ruku: json['ruku'] as int,
      hizbQuarter: json['hizbQuarter'] as int,
    );

Map<String, dynamic> _$AyahArabToJson(AyahArab instance) => <String, dynamic>{
      'number': instance.number,
      'audio': instance.audio,
      'audioSecondary': instance.audioSecondary,
      'text': instance.text,
      'numberInSurah': instance.numberInSurah,
      'juz': instance.juz,
      'manzil': instance.manzil,
      'page': instance.page,
      'ruku': instance.ruku,
      'hizbQuarter': instance.hizbQuarter,
    };
