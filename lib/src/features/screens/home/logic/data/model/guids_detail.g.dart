// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'guids_detail.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GuidsDetailModel _$GuidsDetailModelFromJson(Map<String, dynamic> json) =>
    GuidsDetailModel(
      question: json['question'] as String,
      answer:
          (json['answer'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$GuidsDetailModelToJson(GuidsDetailModel instance) =>
    <String, dynamic>{
      'question': instance.question,
      'answer': instance.answer,
    };
