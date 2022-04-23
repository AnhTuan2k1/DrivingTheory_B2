import 'package:flutter/material.dart';

import '../../api/exam_questions_api.dart';
import '../../model/question.dart';

class ExamQuestionPage extends StatelessWidget {
  const ExamQuestionPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: FutureBuilder<List<Question>>(
        future: QuestionApi.getQuestionsLocally(context),
        builder: (context, snapshot) {
          final List<Question>? questions = snapshot.data;

          switch (snapshot.connectionState) {
            case ConnectionState.waiting:
              return Center(child: CircularProgressIndicator());
            default:
              if (snapshot.hasError)
                return Center(child: Text(snapshot.error.toString()));
              else if (questions != null)
                return buildQuestions(questions);
              else
                return Text("null");
          }
        },
      ),
    );
  }

  Widget buildQuestions(List<Question> questions) {
    return ListView.builder(
        itemCount: questions.length,
        itemBuilder: (context, index) {
          final question = questions[index];
          return Column(
            children: [
              Text('Câu ${question.id.toString()}. ${question.content}', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
              Column(
                children: question.answers
                    .map((e) => ListTile(
                          leading: Text(e.id.toString() + '. '),
                          title: Text(e.content),
                        ))
                    .toList(),
              )
            ],
          );
        });
  }
}
