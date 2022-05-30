import 'dart:math';

import 'package:driving_theory_b2/UI/dialog/start_exam_dialog.dart';
import 'package:driving_theory_b2/UI/exam_screens/exam_questions_page.dart';
import 'package:driving_theory_b2/UI/widget/timer_progress.dart';
import 'package:driving_theory_b2/api/storage_api.dart';
import 'package:driving_theory_b2/model/exam_questions.dart';
import 'package:driving_theory_b2/model/factory_exam_questions.dart';
import 'package:flutter/material.dart';

import '../../api/exam_questions_api.dart';
import '../../model/question.dart';

class Exam extends StatelessWidget {
  const Exam({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Thi Sát Hạch'),
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
        ),
        body: SingleChildScrollView(
          padding: const EdgeInsets.only(left: 8.0, right: 8.0, top: 8.0),
          child: Column(children: buildListExams(context),)
        ));
  }

  List<GestureDetector> buildListExams(BuildContext context) {
    return List.generate(
        TypeExamData.values.length,
        (index) => GestureDetector(
              onTap: () async {
                ExamQuestions eq = await createExamQuestion(
                    typeExamData: TypeExamData.values[index], context: context);
                showStartExamDialog(context, eq);
              },
              child: buildCard(
                  name: FactoryExamData.getExamData(
                          typeExamData: TypeExamData.values[index])
                      .getTitle()),
            ));
  }

  Card buildCard({String name = 'Tạo Đề Ngẫu Nhiên'}) {
    return Card(
      margin: const EdgeInsets.only(left: 2.0, top: 10.0),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
          side: const BorderSide(color: Colors.black12)),
      child: ListTile(
        leading: Container(
          padding: const EdgeInsets.all(10.0),
          decoration: BoxDecoration(
              border: Border.all(
                width: 3.0,
                color: getColors(),
              ),
              borderRadius: const BorderRadius.all(Radius.circular(100))),
          child: const Icon(Icons.shuffle),
        ),
        title: Text(
          name,
          style: const TextStyle(fontSize: 17),
        ),
        subtitle: const Text('35 câu/22 phút'),
        trailing: const Text('Làm Bài'),
      ),
    );
  }

  Future<ExamQuestions> createExamQuestion(
      {required TypeExamData typeExamData,
      required BuildContext context}) async {
    List<Question> questions = await QuestionApi.getQuestionsLocally(context);

    final examData = FactoryExamData.getExamData(typeExamData: typeExamData);

    return ExamQuestions(
        examData.createQuestions(questions), examData.getTitle());
  }

  showStartExamDialog(BuildContext context, ExamQuestions eq) async {
    await showDialog<bool>(
        context: context,
        builder: (context) {
          return const StartExamDialog();
        }).then((value) => {
      if (value != null)
        {
          if (value)
            {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          ExamQuestionPage(examQuestions: eq)))

            }
        }
    });
  }

  Color getColors() {
    Random random = Random();
    List<Color> colors = <Color>[
      Colors.red,
      Colors.green,
      Colors.blueAccent,
      Colors.deepPurpleAccent,
      Colors.orange,
      Colors.yellowAccent,
      Colors.pinkAccent,
      Colors.cyan,
      Colors.purple,
      Colors.teal,
      Colors.tealAccent,
      Colors.lightGreenAccent,
      Colors.lightGreen,
      Colors.pink,
      Colors.blueGrey
    ];
    return colors[random.nextInt(colors.length)];
  }
}
