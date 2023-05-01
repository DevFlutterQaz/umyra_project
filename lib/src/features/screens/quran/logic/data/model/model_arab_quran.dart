import 'package:json_annotation/json_annotation.dart';

part 'model_arab_quran.g.dart';

@JsonSerializable()
class QuranArabModel {
  final QuranArabData data;

  QuranArabModel({required this.data});

  factory QuranArabModel.fromJson(Map<String, dynamic> json) =>
      _$QuranArabModelFromJson(json);
  Map<String, dynamic> toJson() => _$QuranArabModelToJson(this);
}

@JsonSerializable()
class QuranArabData {
  final List<SurahArab> surahs;

  QuranArabData({required this.surahs});

  factory QuranArabData.fromJson(Map<String, dynamic> json) =>
      _$QuranArabDataFromJson(json);
  Map<String, dynamic> toJson() => _$QuranArabDataToJson(this);
}

@JsonSerializable()
class SurahArab {
  final int number;
  final String name;
  final String englishName;
  final String englishNameTranslation;
  final String revelationType;
  final List<AyahArab> ayahs;

  SurahArab({
    required this.number,
    required this.name,
    required this.englishName,
    required this.englishNameTranslation,
    required this.revelationType,
    required this.ayahs,
  });

  factory SurahArab.fromJson(Map<String, dynamic> json) =>
      _$SurahArabFromJson(json);
  Map<String, dynamic> toJson() => _$SurahArabToJson(this);
}

@JsonSerializable()
class AyahArab {
  final int number;
  final String audio;
  final List<String> audioSecondary;
  final String text;
  final int numberInSurah;
  final int juz;
  final int manzil;
  final int page;
  final int ruku;
  final int hizbQuarter;

  AyahArab({
    required this.number,
    required this.audio,
    required this.audioSecondary,
    required this.text,
    required this.numberInSurah,
    required this.juz,
    required this.manzil,
    required this.page,
    required this.ruku,
    required this.hizbQuarter,
  });

  factory AyahArab.fromJson(Map<String, dynamic> json) =>
      _$AyahArabFromJson(json);
  Map<String, dynamic> toJson() => _$AyahArabToJson(this);
}
