
import 'package:json_annotation/json_annotation.dart';

part 'answer.g.dart';
@JsonSerializable()
class Answer{
  int id;
  String content;

  Answer(this.id, this.content);

  factory Answer.fromJson(Map<String, dynamic> json) => _$AnswerFromJson(json);

  Map<String, dynamic> toJson() => _$AnswerToJson(this);
}