import 'dart:math';

import 'package:driving_theory_b2/UI/dialog/start_exam_dialog.dart';
import 'package:driving_theory_b2/UI/exam_screens/exam_questions_page.dart';
import 'package:driving_theory_b2/UI/widget/timer_progress.dart';
import 'package:driving_theory_b2/api/storage_api.dart';
import 'package:driving_theory_b2/model/exam_questions.dart';
import 'package:driving_theory_b2/UI/exam_screens/factory_exam_questions.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';

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
            child: Column(
              children: buildListExams(context),
            )));
  }

  List<GestureDetector> buildListExams(BuildContext context) {
    return List.generate(
        TypeExamData.values.length,
        (index) => GestureDetector(
              onTap: () async {
                ExamQuestions eq = await createExamQuestion(
                    typeExamData: TypeExamData.values[index], context: context);

                !eq.submited
                    ? showStartExamDialog(
                        context, eq, TypeExamData.values[index].toString())
                    : Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ExamQuestionPage(
                                  examQuestions: eq,
                                  typeExamData:
                                      TypeExamData.values[index].toString(),
                                )));
              },
              child: buildCard(
                  typeExamData: TypeExamData.values[index],
                  name: FactoryExamData.getExamData(
                          typeExamData: TypeExamData.values[index])
                      .getTitle()),
            ));
  }

  Widget buildStatusCard(
      {required TypeExamData typeExamData, String name = 'Tạo Đề Ngẫu Nhiên'}) {
    return ValueListenableBuilder(
      valueListenable:
          Hive.box<ExamQuestions>(typeExamData.toString()).listenable(),
      builder: (context, Box<ExamQuestions> box, widget) {
        if (box.isEmpty) {
          return const Text('Làm Bài');
        } else {
          return Column(children: [
            const SizedBox(
              height: 10,
            ),
            box.getAt(0)!.result
                ? const Text('Đạt',
                    style: TextStyle(fontSize: 18, color: Colors.green))
                : const Text(
                    'Chưa Đạt',
                    style: TextStyle(fontSize: 18, color: Colors.red),
                  ),
            Text('đúng ${box.getAt(0)!.correctQuestions}/35 câu')
          ]);
        }
      },
    );

  }

  Card buildCard({
    required String name,
    required TypeExamData typeExamData,
  }) {
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
        trailing: buildStatusCard(typeExamData: typeExamData),
      ),
    );
  }

  Future<ExamQuestions> createExamQuestion(
      {required TypeExamData typeExamData,
      required BuildContext context}) async {
    //exam from hive box
    var lazyExamQuestionsBox = Hive.box<ExamQuestions>(typeExamData.toString());
    ExamQuestions? eq;
    if (lazyExamQuestionsBox.isNotEmpty)
      eq = await lazyExamQuestionsBox.getAt(0);
    if (eq != null) return eq;

    //exam from factory_exam
    List<Question> questions = await QuestionApi.getQuestionsLocally(context);
    final examData = FactoryExamData.getExamData(typeExamData: typeExamData);
    return ExamQuestions(
        examData.createQuestions(questions), examData.getTitle());
  }

  showStartExamDialog(
      BuildContext context, ExamQuestions eq, String typeExamData) async {
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
                          builder: (context) => ExamQuestionPage(
                                examQuestions: eq,
                                typeExamData: typeExamData,
                              )))
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
