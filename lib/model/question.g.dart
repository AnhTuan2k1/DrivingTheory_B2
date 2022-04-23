// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'question.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Question _$QuestionFromJson(Map<String, dynamic> json) => Question(
      json['id'] as int,
      json['type'] as int,
      json['vital'] as bool,
      json['content'] as String,
      json['correctAnswerId'] as int,
      (json['answers'] as List<dynamic>)
          .map((e) => Answer.fromJson(e as Map<String, dynamic>))
          .toList(),
      json['explanation'] as String?,
      json['image'] as String?,
      json['selectedAnswerId'] as int?,
    );

Map<String, dynamic> _$QuestionToJson(Question instance) => <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'vital': instance.vital,
      'content': instance.content,
      'correctAnswerId': instance.correctAnswerId,
      'answers': instance.answers.map((e) => e.toJson()).toList(),
      'explanation': instance.explanation,
      'image': instance.image,
      'selectedAnswerId': instance.selectedAnswerId,
    };
