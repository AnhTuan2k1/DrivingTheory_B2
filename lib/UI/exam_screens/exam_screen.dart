import 'package:driving_theory_b2/UI/exam_screens/exam_questions_page.dart';
import 'package:driving_theory_b2/UI/widget/timer_progress.dart';
import 'package:driving_theory_b2/model/exam_questions.dart';
import 'package:flutter/material.dart';

import '../../api/exam_questions_api.dart';
import '../../model/question.dart';

class Exam extends StatelessWidget {
  const Exam({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      padding: const EdgeInsets.only(left: 8.0, right: 8.0),
      child: Column(children: [
        const SizedBox(
          height: 100,
        ),
        GestureDetector(
          onTap: () async {
            ExamQuestions eq =
                await createExamQuestion(id: 0, context: context);
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => ExamQuestionPage(examQuestions: eq)));
          },
          child: Card(
            margin: const EdgeInsets.only(left: 10.0),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
                side: const BorderSide(
                    color: Colors.lightGreenAccent, width: 2.0)),
            child: ListTile(
              leading: Container(
                padding: const EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                    border: Border.all(
                      width: 3.0,
                      color: Colors.black12,
                    ),
                    borderRadius: const BorderRadius.all(Radius.circular(100))),
                child: const Icon(Icons.shuffle),
              ),
              title: const Text('Tạo Đề Ngẫu Nhiên'),
              subtitle: const Text('35 câu/22 phút'),
              trailing: const Text('Làm Bài'),
            ),
          ),
        ),
      ]),
    ));
  }

  Future<ExamQuestions> createExamQuestion(
      {required int id, required BuildContext context}) async {
    List<Question> questions = await QuestionApi.getQuestionsLocally(context);

    return ExamQuestions(questions, 'Đề thi thử ngẫu nhiên');
  }
}
