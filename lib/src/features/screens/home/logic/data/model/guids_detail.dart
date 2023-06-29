import 'package:json_annotation/json_annotation.dart';
part 'guids_detail.g.dart';

@JsonSerializable()
class GuidsDetailModel {
  final String question;
  final List<String> answer;

  GuidsDetailModel({required this.question, required this.answer});

  factory GuidsDetailModel.fromJson(Map<String, dynamic> json) =>
      _$GuidsDetailModelFromJson(json);
  Map<String, dynamic> toJson() => _$GuidsDetailModelToJson(this);
}
