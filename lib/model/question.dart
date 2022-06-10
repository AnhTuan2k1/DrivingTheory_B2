
import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';

import 'answer.dart';

part 'question.g.dart';

@JsonSerializable(explicitToJson: true)
@HiveType(typeId: 2)
class Question{
  @HiveField(0)
  int id;

  @HiveField(1)
  int type;

  @HiveField(2)
  bool vital;

  @HiveField(3)
  String content;

  @HiveField(4)
  int correctAnswerId;

  @HiveField(5)
  List<Answer> answers;

  @JsonKey(defaultValue: null)
  @HiveField(6)
  String? explanation;

  @JsonKey(defaultValue: null)
  @HiveField(7)
  String? image;

  @JsonKey(defaultValue: null)
  @HiveField(8)
  int? selectedAnswerId;

  Question(this.id, this.type, this.vital, this.content, this.correctAnswerId,
      this.answers, this.explanation, this.image, this.selectedAnswerId);

  factory Question.fromJson(Map<String, dynamic> json) => _$QuestionFromJson(json);

  Map<String, dynamic> toJson() => _$QuestionToJson(this);
}