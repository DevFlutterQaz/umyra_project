// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'model_navigation.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ModelNavigation _$ModelNavigationFromJson(Map<String, dynamic> json) =>
    ModelNavigation(
      title: json['title'] as String,
      link: json['link'] as String,
      topic: json['topic'] as String,
    );

Map<String, dynamic> _$ModelNavigationToJson(ModelNavigation instance) =>
    <String, dynamic>{
      'title': instance.title,
      'link': instance.link,
      'topic': instance.topic,
    };
