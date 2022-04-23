
import 'package:json_annotation/json_annotation.dart';

import 'answer.dart';

part 'question.g.dart';

@JsonSerializable(explicitToJson: true)
class Question{

  int id;
  int type;
  bool vital;
  String content;
  int correctAnswerId;
  List<Answer> answers;

  @JsonKey(defaultValue: null)
  String? explanation;

  @JsonKey(defaultValue: null)
  String? image;

  @JsonKey(defaultValue: null)
  int? selectedAnswerId;

  Question(this.id, this.type, this.vital, this.content, this.correctAnswerId,
      this.answers, this.explanation, this.image, this.selectedAnswerId);

  factory Question.fromJson(Map<String, dynamic> json) => _$QuestionFromJson(json);

  Map<String, dynamic> toJson() => _$QuestionToJson(this);
}