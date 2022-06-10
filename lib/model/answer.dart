
import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';

part 'answer.g.dart';
@JsonSerializable()
@HiveType(typeId: 1)
class Answer{
  @HiveField(0)
  int id;

  @HiveField(1)
  String content;

  Answer(this.id, this.content);

  factory Answer.fromJson(Map<String, dynamic> json) => _$AnswerFromJson(json);

  Map<String, dynamic> toJson() => _$AnswerToJson(this);
}