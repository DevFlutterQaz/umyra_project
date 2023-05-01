// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'model_quran.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

QuranModel _$QuranModelFromJson(Map<String, dynamic> json) => QuranModel(
      data: QuranData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$QuranModelToJson(QuranModel instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

QuranData _$QuranDataFromJson(Map<String, dynamic> json) => QuranData(
      surahs: (json['surahs'] as List<dynamic>)
          .map((e) => Surah.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$QuranDataToJson(QuranData instance) => <String, dynamic>{
      'surahs': instance.surahs,
    };

Surah _$SurahFromJson(Map<String, dynamic> json) => Surah(
      number: json['number'] as int,
      name: json['name'] as String,
      englishName: json['englishName'] as String,
      englishNameTranslation: json['englishNameTranslation'] as String,
      revelationType: json['revelationType'] as String,
      ayahs: (json['ayahs'] as List<dynamic>)
          .map((e) => Ayah.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$SurahToJson(Surah instance) => <String, dynamic>{
      'number': instance.number,
      'name': instance.name,
      'englishName': instance.englishName,
      'englishNameTranslation': instance.englishNameTranslation,
      'revelationType': instance.revelationType,
      'ayahs': instance.ayahs,
    };

Ayah _$AyahFromJson(Map<String, dynamic> json) => Ayah(
      number: json['number'] as int,
      text: json['text'] as String,
      numberInSurah: json['numberInSurah'] as int,
      juz: json['juz'] as int,
      manzil: json['manzil'] as int,
      page: json['page'] as int,
      ruku: json['ruku'] as int,
      hizbQuarter: json['hizbQuarter'] as int,
    );

Map<String, dynamic> _$AyahToJson(Ayah instance) => <String, dynamic>{
      'number': instance.number,
      'text': instance.text,
      'numberInSurah': instance.numberInSurah,
      'juz': instance.juz,
      'manzil': instance.manzil,
      'page': instance.page,
      'ruku': instance.ruku,
      'hizbQuarter': instance.hizbQuarter,
    };
