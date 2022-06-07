import 'package:driving_theory_b2/UI/revision_screens/factory_type_questions.dart';
import 'package:driving_theory_b2/UI/revision_screens/revision_questions_page.dart';
import 'package:driving_theory_b2/UI/widget/type_questions.dart';
import 'package:driving_theory_b2/model/enum.dart';
import 'package:driving_theory_b2/model/exam_questions.dart';
import 'package:driving_theory_b2/model/question.dart';
import 'package:flutter/material.dart';

import '../../api/exam_questions_api.dart';

class Revision extends StatelessWidget {
  const Revision({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: List.generate(
              QuestionType.values.length,
              (index) => GestureDetector(
                    onTap: () async{
                      String name = FactoryTypeQuestion.getTypeQuestions(
                          QuestionType.values[index]).getName();
                      List<Question> questions = await QuestionApi.getQuestionsLocally(context);
                      questions = FactoryTypeQuestion.getTypeQuestions(
                          QuestionType.values[index]).createQuestion(questions);
                      ExamQuestions examQuestions = ExamQuestions(questions, name);

                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => RevisionQuestionPage(examQuestions)));
                    },
                    child: TypeQuestionsWidget(
                        FactoryTypeQuestion.getTypeQuestions(
                            QuestionType.values[index])),
                  )),
        ),
      ),
    );
  }
}
