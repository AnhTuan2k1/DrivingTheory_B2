

import 'package:driving_theory_b2/model/question.dart';

class ExamQuestions{
  List<Question> questions;
  double mark;
  bool submited = false;

  ExamQuestions(this.questions, this.mark, this.submited);

  double makeMark(){
    int correctAnswer = 0;
    questions.forEach((element) {
      if(element.selectedAnswerId != null){
        if(element.selectedAnswerId == element.correctAnswerId)
          correctAnswer++;
      }
    });

    mark = 10*correctAnswer/questions.length;
    submited = true;
    return mark;
  }
}