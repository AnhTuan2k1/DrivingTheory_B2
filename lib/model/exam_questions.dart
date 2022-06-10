

import 'package:driving_theory_b2/model/question.dart';
import 'package:hive/hive.dart';
part 'exam_questions.g.dart';

@HiveType(typeId: 3)
class ExamQuestions{
  @HiveField(0)
  List<Question> questions;

  @HiveField(1)
  double mark = 0.0;

  @HiveField(2)
  bool submited = false;

  @HiveField(3)
  String name;

  @HiveField(4)
  bool result = false;

  @HiveField(5)
  int correctQuestions = 0;

  @HiveField(6)
  int wrongQuestions = 0;

  @HiveField(7)
  int notSelectedQuestions = 0;

  ExamQuestions(this.questions, this.name);

  double makeMark(){
    correctQuestions = 0;
    wrongQuestions = 0;
    notSelectedQuestions = 0;

    bool wrongVitalQuestion = false;
    questions.forEach((element) {
      if(element.selectedAnswerId != null){
        if(element.selectedAnswerId == element.correctAnswerId)
          correctQuestions++;
      }
      else {
        notSelectedQuestions++;
        if(element.vital) wrongVitalQuestion = true;
      }
    });

    mark = 10*correctQuestions/questions.length;
    wrongQuestions = questions.length - correctQuestions - notSelectedQuestions;
    result = !wrongVitalQuestion && correctQuestions > 31;
    submited = true;
    return mark;
  }
}