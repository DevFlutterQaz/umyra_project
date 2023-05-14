import 'package:json_annotation/json_annotation.dart';
part 'model_tasbih.g.dart';

@JsonSerializable()
class TasbihModel {
  final String title;
  final String arabic;
  final String transcript;
  final String translation;

  TasbihModel(
      {required this.title,
      required this.arabic,
      required this.transcript,
      required this.translation});

  factory TasbihModel.fromJson(Map<String, dynamic> json) =>
      _$TasbihModelFromJson(json);

  Map<String, dynamic> toJson() => _$TasbihModelToJson(this);
}
