import 'package:json_annotation/json_annotation.dart';
part 'guids.g.dart';

@JsonSerializable()
class ModelUmraGuids {
  @JsonKey(name: '_id')
  final String? id;
  final String? title;

  ModelUmraGuids({this.id, this.title});

  factory ModelUmraGuids.fromJson(Map<String, dynamic> json) =>
      _$ModelUmraGuidsFromJson(json);
  Map<String, dynamic> toJson() => _$ModelUmraGuidsToJson(this);
}
