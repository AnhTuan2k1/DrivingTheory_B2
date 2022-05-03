

import 'package:driving_theory_b2/model/question.dart';

class ExamQuestions{
  List<Question> questions;
  double mark = 0.0;
  bool submited = false;
  String name;

  bool result = false;
  int correctQuestions = 0;
  int wrongQuestions = 0;
  int notSelectedQuestions = 0;

  ExamQuestions(this.questions, this.name);

  double makeMark(){
    correctQuestions = 0;
    wrongQuestions = 0;
    notSelectedQuestions = 0;
    questions.forEach((element) {
      if(element.selectedAnswerId != null){
        if(element.selectedAnswerId == element.correctAnswerId)
          correctQuestions++;
      }
      else notSelectedQuestions++;
    });

    mark = 10*correctQuestions/questions.length;
    wrongQuestions = questions.length - correctQuestions - notSelectedQuestions;
    submited = true;
    return mark;
  }
}