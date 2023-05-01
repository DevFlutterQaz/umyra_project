import 'package:json_annotation/json_annotation.dart';

part 'model_quran.g.dart';

@JsonSerializable()
class QuranModel {
  final QuranData data;

  QuranModel({required this.data});

  factory QuranModel.fromJson(Map<String, dynamic> json) =>
      _$QuranModelFromJson(json);
  Map<String, dynamic> toJson() => _$QuranModelToJson(this);
}

@JsonSerializable()
class QuranData {
  final List<Surah> surahs;

  QuranData({required this.surahs});

  factory QuranData.fromJson(Map<String, dynamic> json) =>
      _$QuranDataFromJson(json);
  Map<String, dynamic> toJson() => _$QuranDataToJson(this);
}

@JsonSerializable()
class Surah {
  final int number;
  final String name;
  final String englishName;
  final String englishNameTranslation;
  final String revelationType;
  final List<Ayah> ayahs;

  Surah({
    required this.number,
    required this.name,
    required this.englishName,
    required this.englishNameTranslation,
    required this.revelationType,
    required this.ayahs,
  });

  factory Surah.fromJson(Map<String, dynamic> json) => _$SurahFromJson(json);
  Map<String, dynamic> toJson() => _$SurahToJson(this);
}

@JsonSerializable()
class Ayah {
  final int number;
  final String text;
  final int numberInSurah;
  final int juz;
  final int manzil;
  final int page;
  final int ruku;
  final int hizbQuarter;

  Ayah({
    required this.number,
    required this.text,
    required this.numberInSurah,
    required this.juz,
    required this.manzil,
    required this.page,
    required this.ruku,
    required this.hizbQuarter,
  });

  factory Ayah.fromJson(Map<String, dynamic> json) => _$AyahFromJson(json);
  Map<String, dynamic> toJson() => _$AyahToJson(this);
}
