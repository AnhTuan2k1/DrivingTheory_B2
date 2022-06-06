import 'package:driving_theory_b2/UI/revision_screens/factory_type_questions.dart';
import 'package:driving_theory_b2/UI/widget/type_questions.dart';
import 'package:driving_theory_b2/model/enum.dart';
import 'package:driving_theory_b2/model/question.dart';
import 'package:flutter/material.dart';

class Revision extends StatelessWidget {
  const Revision({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: List.generate(
              QuestionType.values.length,
              (index) => TypeQuestionsWidget(
                  FactoryTypeQuestion.getTypeQuestions(
                      QuestionType.values[index]))
          ),
        ),
      ),

    );
  }
}
