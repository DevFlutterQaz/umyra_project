import 'package:json_annotation/json_annotation.dart';
part 'model_navigation.g.dart';

@JsonSerializable()
class ModelNavigation {
  final String title;
  final String link;
  final String topic;

  ModelNavigation({
    required this.title,
    required this.link,
    required this.topic,
  });

  factory ModelNavigation.fromJson(Map<String, dynamic> json) =>
      _$ModelNavigationFromJson(json);

  Map<String, dynamic> toJson() => _$ModelNavigationToJson(this);
}
