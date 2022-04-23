import 'package:driving_theory_b2/UI/exam/exam_questions_page.dart';
import 'package:flutter/material.dart';

class Exam extends StatelessWidget {
  const Exam({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: ElevatedButton(
              child: Text('Show list questions'),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ExamQuestionPage()));
              },
            )));
  }
}
